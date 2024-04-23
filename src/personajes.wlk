import frutas.*
import juegos.*
import equipo.*

object pepe {
	method esFeliz() = true
	method energia() = 77
}

object maria {
	var endorfina = 100
	const lonchera = []
	
	method energia() = (endorfina * 2) + amuleto.aporteDeEnergia()
	method esFeliz() {
		return endorfina > amuleto.aporteDeEnergia()
	}
	method hacerDeporte(deporte,minutos){
		endorfina = (endorfina + deporte.costoDeEnergia(minutos)).max(0)
	}
	method comer() {
		endorfina += lonchera.first().valorNutricional()
		if(lonchera.size() > 1){lonchera.remove(lonchera.first())}
	}
	method comprarFruta(fruta){
		if (lonchera.size() == 4) {lonchera.remove(lonchera.first())}
		lonchera.add(fruta)
	}
}

object martin {
	const despensa = [vasoDeAgua]
	var energia = 100 
	var actividadesFisicasHoy = 0
	var hambre = false

	method energia() = energia
	method hacerDeporte(deporte,minutos) {
		actividadesFisicasHoy += 1
		energia = (energia + deporte.costoDeEnergia(minutos)).max(0)
		hambre = true
	}
	method esFeliz() {
		return ((energia > 80) || actividadesFisicasHoy >= 2) && !hambre
	}
	method soloQuedaAgua() {
		return despensa.last() == vasoDeAgua
	}
	method removerUltimaFruta(){
		if (!self.soloQuedaAgua()) {despensa.remove(despensa.last())}
	}
	method comprarFruta(fruta) {
		self.removerUltimaFruta()
		despensa.add(fruta)
	}
	method comer() {
		energia += despensa.last().valorNutricional()
		self.removerUltimaFruta()
		hambre = false
	}
	method nuevoDia() {
		energia *= 1.5
		actividadesFisicasHoy = 0
		if (despensa.contains(manzana)) {manzana.seMadura()}
		else if (despensa.contains(mandarina)) {mandarina.seReseca()}
		
	}

}

object amuleto {
	var color = rojo
	
	method aporteDeEnergia() = color.valor()
	method setColor(nuevoColor){
		color = nuevoColor
	}
}

object vasoDeAgua {
	method valorNutricional() = 0
}

