import Image from "next/image";
import { Card, CardContent } from "./ui/card";
import { MenuIcon } from 'lucide-react'
import { Button } from "./ui/button";
export default function Header(){
    return(
        <Card>
            <CardContent className="px-5 py-6 flex flex-row items-center justify-between ">
                <Image
                    width={120}
                    height={22} 
                    src={'/next.svg'} 
                    alt="fsw barber logo" 
                />
                <Button size='icon' variant='outline'>
                    <MenuIcon size={16}/>
                </Button>
            </CardContent>
        </Card>
    )
}