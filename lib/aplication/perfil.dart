import 'package:botoes_e_imagem/aplication/user.dart';
import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        actions: [
          botaoEditar(),
        ],
      ),
      body: corpo(),
    );
  }
}

Widget corpo() {
  return SafeArea(
      child: Column(
    children: [
      espaco(20, 0),
      avatar(),
      nomePerfil(25),
      espaco(40, 0),
      email(),
      password(),
    ],
  ));
}

Widget espaco(double altura, double largura) {
  return SizedBox(
    height: altura,
    width: largura,
  );
}

Widget botaoEditar() {
  return IconButton(
    onPressed: () {
      // editar();
      //ao ser clicado exibe outra tela com os campos de texto, sei la...
      //não funciona, mas deveria ter uma telinha sobrepondo, com os campos textfield/label email e senha.
      Stack(
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.amber,
          )
        ],
      );
    },
    icon: Icon(Icons.edit, color: Colors.white, size: 30),
  );
}

Widget avatar() {
  return const CircleAvatar(
    backgroundImage: AssetImage('assets/imagens/imageProfile.png'),
    radius: 60,
  );
}

Widget nomePerfil(double fontSize) {
  return Text(
    'Capitão América',
    style: TextStyle(
        fontSize: fontSize,
        color: Colors.white,
        fontFamily: 'pacifico',
        fontWeight: FontWeight.bold),
  );
}

Widget password() {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
    child: const Row(
      children: [
        Icon(
          Icons.key,
          size: 30,
          color: Colors.blue,
        ),
        SizedBox(
          width: 10.0,
        ), //espaçamento na horizontal icone x text
        Text('********',
            style: TextStyle(
                color: Colors.green, fontSize: 20, fontFamily: 'sansPro')),
      ],
    ),
  );
}

Widget email() {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
    child: Row(
      children: [
        Icon(
          Icons.email,
          size: 30,
          color: Colors.blue,
        ),
        SizedBox(
          width: 10.0,
        ), //espaçamento na horizontal icone x text
        Text('capitaoamerica@example.com',
            style: TextStyle(
                color: Colors.green, fontSize: 20, fontFamily: 'sansPro')),
      ],
    ),
  );
}

// showAlertDialogSairDoApp(BuildContext context) {
//   Widget cancelaButton = ElevatedButton(
//     child: Text(
//       "Cancelar",
//       style: TextStyle(fontSize: 20),
//     ),
//     onPressed: () {
//       //volta a tela anterior do contexto
//       Navigator.of(context).pop();
//     },
//   );
//   Widget continuaButton = ElevatedButton(
//     child: Text("Sair", style: TextStyle(fontSize: 20)),
//     onPressed: () {
//       //encerra a aplicação
//     },
//   );

//   Widget nomeEdit() {}

//   //configura o AlertDialog
//   AlertDialog editar = AlertDialog(
//     title: Text(""),
//     actions: [
//       nomeEdit,
//       emailEdit,
//     ],
//   );
//   //exibe o diálogo
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return editar;
//     },
//   );
// }


Widget nome() {
  return TextField();
}

editar() {
  return Scaffold(
      body: Column(
    children: [
      nome(),
    ],
  ));
}

