object voley {
	method costoDeEnergia(minutos) {
		return -minutos * 2
	}
}

object futbol {
	var costoDeEnergia = 10
	
	method costoDeEnergia(minutos) {
		return -costoDeEnergia
	}
	method setCosto(nuevoCosto) {
		costoDeEnergia = nuevoCosto
	}
	
}

object aerobic {
	method costoDeEnergia(minutos){
		return ciudad.temperatura() / 2
	}
}

object basket {
	method costoDeEnergia(minutos) {
		return -(minutos + ciudad.temperatura()) / 2
	}
}

object ciudad {
	var temperatura = 20
	
	method temperatura() = temperatura
	method esMadrugada() {
		temperatura = 10
	}
	method esMedioDia() {
		temperatura = 30
	}
	method esDeNoche() {
		temperatura = 14
	}
}