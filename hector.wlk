import cultivos.*
import wollok.game.*

object hector {
	var property position = new Position(x = 3, y = 3)
	const property image = "player.png"
	method plantarMaiz() {  if (self.validador()){
	 game.addVisual(new Maiz(position=self.position()))} else self.nada()
	}
    method plantarTrigo() {if (self.validador()){
		game.addVisual(new Trigo(position=self.position()))} else self.nada()
	}
	method plantarTomaco() {if (self.validador()){
		game.addVisual(new Tomaco(position=self.position()))} else self.nada()
	}

	method regar() {
	  game.onCollideDo(self,{elemento=>elemento.regar()})
	}

	method nada() {
		game.say(self,"NO SE PUEDE")
	} 

	method validador() = game.colliders(self).isEmpty()



}