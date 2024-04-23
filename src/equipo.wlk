import personajes.*
import frutas.*
import juegos.*

const integrantes = #{}
object equipo {
	var jugadorIzquierdo
	var jugadorDerecho
	var directorTecnico
	
	method asignarJugadorDerecho(persona){
		integrantes.remove(jugadorDerecho)
		integrantes.add(persona)
		jugadorDerecho = persona
		if (jugadorIzquierdo == persona) {jugadorIzquierdo = null}
	}
	method asignarJugadorIzquierdo(persona){
		integrantes.remove(jugadorIzquierdo)
		integrantes.add(persona)
		jugadorIzquierdo = persona
		if (jugadorDerecho == persona) {jugadorDerecho = null}
	}
	method asignarDirectorTecnico(persona){
		integrantes.remove(directorTecnico)
		integrantes.add(persona)
		directorTecnico = persona
		if (jugadorDerecho == persona) {jugadorDerecho = null}
		if (jugadorIzquierdo == persona) {jugadorIzquierdo = null}
		
	}
	method rotarJugadores(){
		const nuevoJugadorIzquierdo = jugadorDerecho
		const nuevoJugadorDerecho = jugadorIzquierdo
		self.asignarJugadorDerecho(nuevoJugadorDerecho)
		self.asignarJugadorIzquierdo(nuevoJugadorIzquierdo)
	}
	method incorporarTecnico(persona) {
		if (persona.energia() > directorTecnico.energia()) {self.asignarDirectorTecnico(persona)}
	}
	method promedioDeEnergia() {
		return integrantes.sum({x => x.energia()}).div(3)
	}
	method elEquipoEstaFeliz() {
		return integrantes.all({x => x.esFeliz()})
	}
}
