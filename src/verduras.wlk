import wollok.game.*


object verduras{
	
	
	method inicio(){
		
		keyboard.space().onPressDo({tomate.regar()})
		//game.onCollideDo(estrella, {obstaculo=> obstaculo.moverseA(obstaculo.position().up(1)) })
		game.onCollideDo(estrella, {obstaculo=> obstaculo.moverseAleatorio() })
		
		
	}
	
}

object tomate {
	var dondeEsta = game.center()	
	var riego = 0
	
	method image() {
	    return if (riego > 5) "tomate.png" else "flor.png"
	}
	method regar(){
		riego = riego +1
	}
	method position() = dondeEsta 


    method moverseA(nuevaPosicion){
    	dondeEsta = nuevaPosicion
    }
    method moverseAleatorio(){
    	dondeEsta = game.at((0..game.height()-1).anyOne(),(0..game.width()-1).anyOne()) 
    } 
}
object estrella {
	
	method image() = "estrella.png"

}
