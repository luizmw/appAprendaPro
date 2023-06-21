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
      //ao ser clicado exibe outra tela com os campos de texto, sei la...
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



/*cadastro
    -1º nome
    -2º nome
    -email (user)
    -password
    -//restringe se for administrador através do dominio do email
    //todos os campos obrigatórios
*/

/*classe usuario
  -molde para o objeto usuario, cujos atributos de 1 e 2 nome, email e password serao definidos no momento do cadastro - através de funções
  //deve conter metodos como adicionar novo usuario, editar usuario, (a nivel de adm: listar usuarios e remover usuarios), verificar se um email a ser cadastrado já nao está linkado a outra conta, remover/excluir a própria conta(usuario comum)
  campos adicionais:
    -pontuação;
    -progresso (algo como, modulo 1 ok, a porcentagem de acertos,...)
 */

/*List / map
  -para salvar os usuarios (objetos instanciados a cada cadastro), talvez uma coleção para adm e outra para user, ou unica (dferenciando adm de user atraves do dominio de email)
 */


/*login:
    -ao submeter o login, percorre a lista verificando se email e senha estao cadastrados,
    -entra na tela home
 */

/* Perfil
  Crud: foto, nome(1º e 2º), email, senha
  ações de editar e remover os dados devem ser modificados na coleção, no objeto que representa o usuario logado.
 */

/*administrador
  -postar novas perguntas
  -ver e editar perguntas existentes
  -remover pergntas
  -remover um usuario (caso de inatividade)
  -jogar //para testar as modificações
 */

/*Coleção de questoes
  - criar uma coleção/list para armazenar as questoes
   */
