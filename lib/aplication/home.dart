import 'dart:io';

import 'package:flutter/material.dart';

import 'perfil.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          perfil(context),
        ],
        leading: logout(context),
        centerTitle: true,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: Padding(
            padding: EdgeInsets.only(bottom: 20, left: 15, right: 10, top: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Bem vindo(a) ao ',
                      style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'sansPro',
                          color: Colors.white),
                    ),
                    Text(
                      'Aprenda Pro!',
                      style: TextStyle(
                          fontSize: 28,
                          fontFamily: 'pacifico',
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 148, 236, 140)),
                    ),
                  ],
                ),
                Text(
                  'Desenvolva suas habilidades de programação e conquiste o \nmundo do código!',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'sansPro',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          expanded(),
          corpo(),
          expanded(),
          help(),
        ],
      ),
    );
  }
}

Widget perfil(BuildContext context) {
  return IconButton(
    icon: const Icon(
      Icons.person,
      color: Colors.white,
      size: 30,
    ),
    onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Perfil()));
    },
  );
}

Widget logout(context) {
  return TextButton(
    child: const Text(
      'Sair',
      style: TextStyle(fontSize: 18, color: Colors.white),
    ),
    onPressed: () {
      showAlertDialogSairDoApp(context);
    },
  );
}

Widget help() {
  return Container(
    alignment: Alignment.bottomLeft,
    padding: EdgeInsets.all(10),
    child: OutlinedButton.icon(
        style: TextButton.styleFrom(
          foregroundColor: Colors.blue,
          padding: EdgeInsets.all(7),
          backgroundColor: Colors.white,
        ),
        onPressed: () {},
        icon: const Icon(
          Icons.help,
          size: 25,
        ),
        label: const Text(
          'Ajuda',
          style: TextStyle(fontSize: 22),
        )),
  );
}

Widget jogar() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: ElevatedButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        minimumSize: const Size(200, 50),
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      ),
      onPressed: () {},
      child: const Text(
        'Jogar',
        style: TextStyle(fontSize: 25),
      ),
    ),
  );
}

Widget niveis() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: ElevatedButton(
        style: TextButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            minimumSize: const Size(200, 50),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5)),
        onPressed: () {},
        child: const Text(
          'Níveis',
          style: TextStyle(fontSize: 25),
        )),
  );
}

Widget expanded() {
  return Expanded(child: Container());
}

Widget corpo() {
  return Column(
    children: [
      jogar(),
      niveis(),
    ],
  );
}

showAlertDialogSairDoApp(BuildContext context) {
  Widget cancelaButton = ElevatedButton(
    child: Text("Cancelar", style: TextStyle(fontSize: 20),),
    onPressed: () {
      //volta a tela anterior do contexto
      Navigator.of(context).pop();
    },
  );
  Widget continuaButton = ElevatedButton(
    child: Text("Sair", style: TextStyle(fontSize: 20)),
    onPressed: () {
      //encerra a aplicação
      exit(0);
    },
  );

  //configura o AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Logout"),
    content: Text("Você realmente deseja sair ?", style: TextStyle(fontSize: 20),),
    actions: [
      cancelaButton,
      continuaButton,
    ],
  );
  //exibe o diálogo 
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
