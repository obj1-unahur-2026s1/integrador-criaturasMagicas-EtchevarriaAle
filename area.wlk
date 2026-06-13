class Areas{
    var coloniaQueHabita
    method coloniaQueHabita(){
        return coloniaQueHabita
    }
    method poderDefensivo()

}

class Castillos inherits Areas{
    override method poderDefensivo(){
        return 200 * coloniaQueHabita().cantidadDeFormidables() 
    }
}

class Claros inherits Areas{
    override method poderDefensivo(){
        return 100 * coloniaQueHabita().cantidadDeFormidables() 
    }


}

class Colonias{

    const criaturas = []

    method poderOfensivoDeColonia(){
        return criaturas.sum({c => c.poderOfensivoDeCriatura()})
    }

    method conquistar(area){
        if(self.poderOfensivoDeColonia() > area.poderDefensivo()){

        } else{sufrirDerrota()}
    }

    method sufrirDerrota(){
        criaturas.forEach({c => c.poderMagico = c.poderMagico() - 15})
    }

    method cantidadDeFormidables(){
        return criaturas.count({c => c.esFormidable()})
    }
}