object olivia 
{
	var gradoDeConcentracion = 6	
	method recibirMasaje()
	{
		gradoDeConcentracion =+ 3
	}
	method discutir()
	{
		gradoDeConcentracion =- 1
	}
	method gradoDeConcentracion()= gradoDeConcentracion
	method darBanioDeVapor(){}
}
object bruno
{
	var estaFeliz = true
	var tieneSed = false
	var peso = 55000
	method recibirMasaje()
	{
		estaFeliz = true
	}
	method darBanioDeVapor()
	{
		peso =- 500
		tieneSed = true
	}
	method tomarAgua()
	{
		tieneSed = false
	}
	method comer()
	{
		peso =+ 250
		tieneSed = true
	}
	method correr()
	{
		peso =- 300
	}
	method verNoticiero()
	{
		estaFeliz = false
	}
	method estaPerfecto()= estaFeliz and (not tieneSed) and peso >= 50000 and peso <= 70000
	method mediodiaEnCasa()
	{
		self.comer()
		self.tomarAgua()
		self.verNoticiero()
	}
}
object ramiro
{
	var nivelDeConstractura = 0
	var tienePielGrasosa = true
	method recibirMasaje()
	{
		nivelDeConstractura = (nivelDeConstractura - 2).max(0)
	}
	method darBanioDeVapor()
	{
		tienePielGrasosa = false
	}
	method comer()
	{
		tienePielGrasosa = true
	}
	method bajarAFosa()
	{
		tienePielGrasosa = true
		nivelDeConstractura =+ 1
	}
	method jugarPaddle()
	{
		nivelDeConstractura =+ 3
	}
	method diaDeTrabajo()
	{
		self.bajarAFosa()
		self.comer()
		self.bajarAFosa()
	}
} 
object spa
{
	method atender(persona)
	{
		persona.recibirMasaje()
		persona.darBanioDeVapor()
	}
}
