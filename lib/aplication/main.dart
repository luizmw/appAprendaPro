import 'package:flutter/material.dart';
import 'home.dart';


void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, //remover marca dagua
    title: 'app',
    home: Home(),
    theme: ThemeData(primarySwatch: Colors.blue //cor/tema default do app
        ),
  ));
}
