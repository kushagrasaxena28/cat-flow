import Image from "next/image";
import Link from "next/link";

export const AuthLayout = ({ children }: { children: React.ReactNode; }) => {
  return (
    <div className="bg-muted flex min-h-svh flex-col justify-center items-center gap-6 p-6 md:p-10">
      <div className="flex w-full max-w-sm flex-col gap-6">
        <Link href="/" className="flex items-center gap-3 self-center group">
          <Image src="/logos/logo.svg" alt="CatFlow" width={36} height={36} className="transition-transform duration-200 group-hover:scale-110"/>
          <span className="text-xl font-semibold tracking-tight bg-gradient-to-r from-foreground to-foreground/70 bg-clip-text text-transparent">
            CatFlow
          </span>
        </Link>
        {children}
      </div>
    </div>
  );
};