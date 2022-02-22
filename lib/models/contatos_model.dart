import 'dart:convert';

class ContatosModel {
  String email = '';
  String confirmaEmail = '';
  int dddTelefoneFixo = 0;
  int celularDDD = 0;
  int celular = 0;
  int telefoneFixo = 0;
  ContatosModel(
      {email,
      confirmaEmail,
      celularDDD,
      dddTelefoneFixo,
      celular,
      telefoneFixo});

  Map<String, dynamic> toMap() {
    return {
      'telefoneDDD': dddTelefoneFixo,
      'telefoneNumero': telefoneFixo,
      'celularDDD': celularDDD,
      'celularNumero': celular,
      'email': email,
    };
  }

  factory ContatosModel.fromMap(Map<String, dynamic> map) {
    return ContatosModel(
      email: map['email'] ?? '',
      confirmaEmail: map['confirmaEmail'] ?? '',
      celularDDD: map['dddTelefone'] ?? '',
      dddTelefoneFixo: map['dddTelefoneFixo'] ?? '',
      celular: map['telefone'] ?? '',
      telefoneFixo: map['telefoneFixo'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ContatosModel.fromJson(String source) =>
      ContatosModel.fromMap(json.decode(source));
}
