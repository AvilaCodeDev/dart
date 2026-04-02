void main() async {
  print("Inicio del programa");
  
  try {
    final resp = await httpGet("ipn.mx");
    print("Exito: $resp"); 
  }on Exception{
    print('Tenemos una Exception');
  }catch (e) {
    print('OOOPS! Algo terrible paso: $e');
  }finally{
    print("Fin del try y catch");
  }
  
  print("Fin del programa");
}

Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 1));
  throw Exception('No hay parametros en el url');
  // throw 'Error en la peticion';
  // return 'Tenemos un valor en la peticion';
}