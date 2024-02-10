import Header from "../_components/header";
import { format } from 'date-fns'
import {ptBR} from 'date-fns/locale'
export default function Home() {
  return (
    <main>
      <Header />

      <section className="pt-3 px-5">
        <h2 className="pt-3 px-3 font-bold text-xl">Olá, Henrick</h2>
        <p className="px-3 capitalize italic ">{
          format(new Date(), "eeee', 'd' de 'MMMM' ", {
            locale:ptBR,
          })}
        </p>
      </section>
      
      
    </main>
  );
}
