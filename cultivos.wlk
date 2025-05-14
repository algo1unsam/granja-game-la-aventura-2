class Verdura
{   var property estado=0 
	var property precio=0
	method image()
	method regar() {}
	method cosechar() {}
	method vender() {} 
}
class Maiz inherits Verdura{
	var property position
  override method image() {
	return if (estado==0) {
		"corn_baby.png"
	}
     else "corn_adult.png"
	
	} 

  override method regar() {
	if(estado==0){
		estado=1
	} 
  }

}

class Trigo inherits Verdura{
  var property position
  override method image() {
	return if (estado==0) {
		"wheat_0.png"
	}
     else "corn_adult.png"
	
	} 

  override method regar() {
	if(estado==0){
		estado=1
	} 
  }

}
class Tomaco inherits Verdura{
	var property position
  override method image() {
	return if (estado==0) {
		"tomaco.png"
	}
     else "corn_adult.png"
	
	} 

  override method regar() {
	if(estado==0){
		estado=1
	} 
  }

}