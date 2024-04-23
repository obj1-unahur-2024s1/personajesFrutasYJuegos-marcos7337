
// FRUTAS
object manzana {
	var color = verde
	
	method valorNutricional() = color.valor()
	method seMadura() {
		color = rojo
	}
	method ponerseAmarilla() {
		color = amarillo
	}
}

object mandarina {
	var peso = 60
	
	method valorNutricional() {
		return peso.div(10) * 2
	}
	method seReseca() {
		peso = (peso * 0.9).max(40)
	}
}

object banana {
	const color = amarillo
	
	method valorNutricional() = color.valor()
}
// COLORES
object rojo {
	method valor() = 14
}
object verde {
	method valor() = 7
}
object amarillo{
	method valor() = 5
}