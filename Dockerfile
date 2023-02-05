FROM ghcr.io/hazmi35/node:19-dev-alpine as build-stage

LABEL name "nextjs-tailwind-boilerplate (build-stage)"
LABEL maintainer "FrutBits Indonesia <contact@frutbits.org>"

# Prepare pnpm with corepack (experimental feature)
RUN corepack enable && corepack prepare pnpm@latest

# Copy package.json, lockfile and npm config files
COPY package.json pnpm-lock.yaml ./

# Fetch dependencies to virtual store
RUN pnpm fetch

# Install dependencies
RUN pnpm install --offline --frozen-lockfile

# Copy Project files
COPY . .

# Build Next.js Project
RUN pnpm run build

# Prune devDependencies
RUN pnpm prune --production

# Get ready for production
FROM ghcr.io/hazmi35/node:19-alpine

LABEL name "nextjs-tailwind-boilerplate"
LABEL maintainer "FrutBits Indonesia <contact@frutbits.org>"

# Copy needed files
COPY --from=build-stage /tmp/build/package.json .
COPY --from=build-stage /tmp/build/public ./public
COPY --from=build-stage /tmp/build/.next/ ./.next
COPY --from=build-stage /tmp/build/node_modules ./node_modules

# Additional Environment Variables
ENV NODE_ENV production

EXPOSE 80

# Start the app with node
CMD ["npm", "run", "start", "--", "-p", "80"]