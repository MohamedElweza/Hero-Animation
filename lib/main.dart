import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(size:70),
            Hero(
              tag: "to_secondPage",
              child: TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => secondPage()));
              }, child: Text('Move to Second Screen')),
            ),
          ],
        ),
      ),
    );
  }
}
class secondPage extends StatelessWidget {
  const secondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second page'), leading: IconButton(onPressed: (){Navigator.of(context).pop();}, icon: Icon(Icons.arrow_back)),),
      body: Container(

        child: Hero(
          tag: "to_secondPage",
          child: FlutterLogo(size: 200,),
        ),
      ),
    );
  }
}


