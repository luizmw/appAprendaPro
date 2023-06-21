class User {
  String? email;
  String? senha;
  String? firstName;
  String? lastName;
  double pontuacao = 0.0;
  //progresso - ainda nao definido (por módulo, por perguntas respondidas, necessario neste momento?...)

  User(this.email, this.senha, this.firstName, this.lastName);

//teste console
  void imprimir() {
    if (usuarios.isNotEmpty) {
      print('Email: ${usuarios[0].email}');
    }
  }

//cadastra usuario - recebe um objeto usuario (instanciado em cadastrar)
  bool cadastrarUsuario(User usuario) {
    if (validarUsuario(usuario)) {
      usuarios.add(usuario);
      return true;
    }
    return false;
  }

//verfica se email e nome já sao cadastrados
  bool validarUsuario(User usuario) {
    for (User user in usuarios) {
      if (user.email == usuario.email) {
        return true;
      }
    }
    return false;
  }
}

//editar usuario
void editarUsuario(){}

//colecao que armazena os usuarios
List<User> usuarios = [];

void main(List<String> args) {
  User usuario1 = User('fulano@example.com.br', 'senha', 'fulano', 'fulano');
  usuario1.cadastrarUsuario(usuario1);
  usuario1.imprimir();
}
