import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:listview_ejercicio6/model/characters_data.dart';
import 'package:listview_ejercicio6/widgets/character_widget.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cartoooooonery'),
        centerTitle: true,
      ),
      body: ListView(
        children: characters.map((character) => CharacterWidget(character: character)).toList(),
        /*children:[
          CharacterWidget(character: characters[0]),
          CharacterWidget(character: characters[1]),
          CharacterWidget(character: characters[2]),
          CharacterWidget(character: characters[3]),
          CharacterWidget(character: characters[4]),
          CharacterWidget(character: characters[5]),
          CharacterWidget(character: characters[6]),
          CharacterWidget(character: characters[7]),
          CharacterWidget(character: characters[8]),
        ],*/
      ),
    );
  }
}
