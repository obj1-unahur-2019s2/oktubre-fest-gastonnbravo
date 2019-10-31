class Marca {
	var property contenidoLupulo
	var property paisFabrica
	var property graduacion
	
	
}

class Rubia inherits Marca{
	
	var property graduacionAlcohol
}

class Negra inherits Marca{
	
	 method graduacionAlcohol(){
		return (graduaciones.graduacionReglamentaria()).min(contenidoLupulo*2) }

}
class Roja inherits Negra{
	
	 override method graduacionAlcohol(){
	 	return super() * 1.25
		
	}
	
}


class Jarra{
	
	var property marca
	var property capacidad
	
	method contenidoDeAlcohol(){
		return capacidad * (marca.graduacionAlcohol()/100) 
	}
	
	
	
	
	
}

object graduaciones{
	var property graduacionReglamentaria = 0.1
	
}
