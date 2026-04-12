import { cn } from "@/lib/utils"
import { Button } from "@/components/ui/button"


export default function Home() {
  return (
    <div className={cn("text-red-500", "text-2xl")}>
      <Button>Hello World</Button>
    </div>
  );
}
