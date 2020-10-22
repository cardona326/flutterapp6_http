import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());


class Texto extends StatefulWidget{
  @override

  MyApp createState() {
    print("CreateState texto");
    return new MyApp();
  }
}


class MyApp extends StatefulWidget {

  Future<String> consultar() async {
    print("Lanza la consulta :-)");
    var respuesta = await http.get('https://jsonplaceholder.typicode.com/posts/1');

    // sample info available in response
    int statusCode = respuesta.statusCode;
    Map<String, String> headers = respuesta.headers;
    String contentType = headers['content-type'];
    String js = respuesta.body;
    print(statusCode.toString()+"\n"+ headers.toString()+"\n"+ js.toString());
    print(respuesta.toString());
    return (js);
  }


  MyApp(){
    print("Constructor del State");
    /*var s = consultar().then((x){
      print(x);

    });*/
    consultar().then((x){
      print(" ======= \n LOTENGO" + x);
      setstate((){
        print(s.toString());
      };
    });


    //print(s.toString());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
