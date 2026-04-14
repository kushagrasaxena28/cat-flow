import Image from "next/image";
import Link from "next/link";

export const AuthLayout = ({ children }: { children: React.ReactNode; }) => {
  return (
    <div className="bg-muted flex min-h-svh flex-col justify-center items-center gap-4 p-6 md:p-10">
  <div className="flex w-full max-w-sm flex-col gap-4">
    <Link href="/" className="flex items-center justify-center group">
      <Image
        src="/logos/catflow-logo.svg"
        alt="CatFlow"
        width={180}
        height={180}
        className="transition-transform duration-200 group-hover:scale-105"
      />
    </Link>
    {children}
  </div>
</div>
  );
};