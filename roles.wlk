class Roles{}


object guardian{
    method extraPorRol(){
        return 100
    }

    method esExtraordinario(criatura){
        return criatura.poderMagico() > 50
    }

     method cambiarRol() = new Domador(mascotasMitologicas = 
        [new MascotasMitologicas(edad = 1, tieneCuernos = false)])

    
}

class Domadores{
    const mascotasMitologicas = []

    method mascotasMitologicas(){
        return mascotasMitologicas}

    method extraPorRol(){
        return 150 * self.cantMascotasConCuernos()
    }

    method cantMascotasConCuernos(){
        return mascotasMitologicas.count({m => m.tieneCuernos()})
    }

     method esExtraordinario(criatura){
        return criatura.poderMagico() >= 15 and mascotasMitologicas.all({m => m.esVeterana()})
    }

    method cambiarRol(){
        if (not self.cantMascotasConCuernos() > 0){return hechicero}
        else{self.error("ritual cancelado")}
    }
}

class Hechiceros{
     method extraPorRol(){
        return 0
    }

    method esExtraordinario(criatura){
        return true
    }

    method cambiarRol() = guardian
    
}