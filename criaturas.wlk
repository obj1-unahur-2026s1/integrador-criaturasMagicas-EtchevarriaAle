class Criaturas{
    var property poderMagico
    const astucia
    var rolEnElParque
    

    method poderMagico(){ 
        return poderMagico}

    method astucia(){
        return astucia}

    method rolSiguiente() = 
    
    method rolEnElParque(){
        return rolEnElParque}

    method poderOfensivoDeCriatura() = poderMagico * 10 + rolEnElParque.extraPorRol()

    method esFormidable(){
        return self.esAstuto() or self.esExtraordinario()
    }

    method extraPorRol()

    method esAstuto()

    method esExtraordinario() = rolEnElParque.esExtraordinario(self)
    

    method cambiarRol(nuevoRol){
        
    }


}


//CRIATURAS
 
class Duendes inherits Criaturas{
    override method poderOfensivoDeCriatura(){
        return super() * 1.1
    }

    override method esAstuto(){return false}
}

class Hadas inherits Criaturas{
    var property kmQuePuedenVolar
    var edad = 2

    method edad(){
        return edad}
    
    method crecer(cantAños){
        edad = edad + cantAños}


    method kmQuePuedenVolar(){
        return (edad * 2).min(25)}

    override method esAstuto() = astucia > 50
    
    override method esExtraordinario(){
        return super().esExtraordinario()
            and            
            self.kmQuePuedenVolar() >= 10 

    }

}





