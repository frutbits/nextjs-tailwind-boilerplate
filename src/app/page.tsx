import { Montserrat } from "@next/font/google";
import { ReactElement } from "react";

const montserrat = Montserrat({ subsets: ["latin"] });

export default function Home(): ReactElement {
    return (
        <main className={`${montserrat.className}`}>
            <div className="h-[2rem]"></div>
            <div className="w-full flex justify-center items-center">
                <div className="p-4 rounded-md shadow-md">
                    <h1 className="font-bold">Hello Tailwind</h1>
                </div>
            </div>
        </main>
    );
}
