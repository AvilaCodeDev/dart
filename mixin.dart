abstract class Animal {}

abstract class Mamifero extends Animal {}
abstract class Ave extends Animal{}
abstract class Pez extends Animal{}

mixin Volador{
  void volar() => print("estoy volando");
}

mixin Nadador{
  void nadar() => print("estoy nadando");
}

mixin Caminante{
  void caminar() => print("estoy caminando");
}

class Delfin extends Pez with Nadador{}
class Bat extends Mamifero with Volador, Caminante{}

void main(){
  final delfin = Delfin();
  delfin.nadar();

  final batman = Bat();
  batman.caminar();
  batman.volar();
}
