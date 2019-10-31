import Marca.*
import carpas.*
class Personas {
	var property peso
	var property jarrasCerveza = []
	var property musicaTradicional = false
	var property nivelAguante = 0
	
	
	
	method estaEbria(){
		return  self.alcoholIngerido() * peso > nivelAguante
	}
	
	
	method alcoholIngerido(){
		return jarrasCerveza.sum({jarra => jarra.contenidoDeAlcohol()})
	}
	method quiereEntrar(unaCarpa){
		return self.leGusta(unaCarpa.marca()) 
		and 
		(self.musicaTradicional() == unaCarpa.bandaMusica())
		
	}
	method leGusta(unaMarca)

	
}

class Belgas inherits Personas{
	override method leGusta(unaMarca){
		return unaMarca.contenidoLupulo() > 4 
	}
	
}
class Checos inherits Personas{
	override method leGusta(unaMarca){
		return unaMarca.graduacionAlcohol()>0.08
	}
	
}
class Alemanes inherits Personas{
	override method leGusta(unaMarca){return true}
	
	override method quiereEntrar(unaCarpa){
		return super(unaCarpa)  and (unaCarpa.cantidadPersonas().even())
	}
	//en el super repetir parametro
	//even da par
}