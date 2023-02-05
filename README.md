<div align="center">

<img src="https://api.frutbits.org/assets/images/logo.webp" alt="FrutBits Indonesia Logo" width="200px" height="200px"/>

# @frutbits/nextjs-tailwind-boilerplate

**A Next.js boilerplate which includes TailwindCSS and other utilities**

[![GitHub](https://img.shields.io/github/license/frutbits/template)](https://github.com/frutbits/template/blob/main/LICENSE)
[![GitHub version](https://badge.fury.io/gh/frutbits%2Ftemplate.svg)](https://badge.fury.io/gh/frutbits%2Ftemplate)
[![Discord](https://discord.com/api/guilds/332877090003091456/embed.png)](https://frutbits.org/discord)

</div>

# Things that included:

1. TailwindCSS
1. Next.js experimental `app` directory
1. @next/font installed
1. Next.js path alias (`@/`)
1. ESLint configured
1. Dockerized
1. GitHub action for build test & docker build
1. Using pnpm

## Since this is a template, you may modify these things:
1. GitHub Action docker build image name ([this one](https://github.com/frutbits/nextjs-tailwind-boilerplate/blob/3d61f04ccd0cb93933d1bab16b3f4892d740c108/.github/workflows/build.yml#L53))
1. Docker image name
1. package.json
1. README.md
1. LICENSE

# Getting Started

First, run the development server:

```bash
npm run dev
# or
yarn dev
# or
pnpm dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

You can start editing the page by modifying `app/page.tsx`. The page auto-updates as you edit the file.

[API routes](https://nextjs.org/docs/api-routes/introduction) can be accessed on [http://localhost:3000/api/hello](http://localhost:3000/api/hello). This endpoint can be edited in `pages/api/hello.ts`.

The `pages/api` directory is mapped to `/api/*`. Files in this directory are treated as [API routes](https://nextjs.org/docs/api-routes/introduction) instead of React pages.

This project uses [`next/font`](https://nextjs.org/docs/basic-features/font-optimization) to automatically optimize and load Montserrat, a custom Google Font.

## Learn More

To learn more about Next.js, take a look at the following resources:

- [Next.js Documentation](https://nextjs.org/docs) - learn about Next.js features and API.
- [Learn Next.js](https://nextjs.org/learn) - an interactive Next.js tutorial.

You can check out [the Next.js GitHub repository](https://github.com/vercel/next.js/) - your feedback and contributions are welcome!

## Deploy on Vercel

The easiest way to deploy your Next.js app is to use the [Vercel Platform](https://vercel.com/new?utm_medium=default-template&filter=next.js&utm_source=create-next-app&utm_campaign=create-next-app-readme) from the creators of Next.js.

Check out our [Next.js deployment documentation](https://nextjs.org/docs/deployment) for more details.
