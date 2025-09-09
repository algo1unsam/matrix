// Mensajeros de pelicula, primera parte

object morfeo {
	var property peso = 90
	var property transporte = camion

	method peso() {
		return peso + transporte.peso()
	}

	method transporte(vehiculo) {
		transporte = vehiculo
	}

	method tieneCredito() {
		return false
	}
}

// object neo {}
// object chuck 

object camion {
	var acoplados = 2

	method peso() {
		return acoplados * 500
	}

	method acoplados(cantAcoplados) {
		acoplados = cantAcoplados
	}
}

object monopatin {

	method peso() {
		return 1
	}
}

object puente {

	method dejarPasar(mensajero) {
		return mensajero.peso() < 1000
	}
}
// object matrix

object paquete {
	var pago = false
	var destino = brooklyn

	method pagar() {
		pago = true
	}

	method estaPago() {
		return pago
	}

	method destino(lugar) {
		destino = lugar
	}

	method puedeSerEntregadoPor(mensajero) {
		return destino.dejarPasar(mensajero) and self.estaPago()
	}
}