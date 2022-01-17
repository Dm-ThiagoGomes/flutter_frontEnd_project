import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/View/SinginUpScreens/widgets/SigningUp_Path%20Steps/Dados%20Pessoais/widgets/campo_cliente_cpf.dart';
import '../../.././SigningUp_Path%20Steps/campos_size_configs.dart';

class CampoClienteDataNascimento extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  CampoClienteDataNascimento({required this.camposSizeConfigs});

  @override
  _CampoClienteDataNascimentoState createState() =>
      _CampoClienteDataNascimentoState();
}

class _CampoClienteDataNascimentoState
    extends State<CampoClienteDataNascimento> {
  final controladorDataDeNascimento = MaskedTextController(
      mask: '00/00/0000',
      text: singinUpController.dadosPessoais.dataDeNascimento);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: widget.camposSizeConfigs.spaceBetweenFieldsInTop),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Data de Nascimento'),
            SizedBox(
              height: widget.camposSizeConfigs.campoHeight,
              width: widget.camposSizeConfigs.campoWidth,
              child: TextFormField(
                controller: controladorDataDeNascimento,
                validator: (value) =>
                    value!.isEmpty ? 'Coloque sua data de nascimento' : null,
                onSaved: (valor) => singinUpController
                    .dataDeNascimento(controladorDataDeNascimento.unmasked),
                decoration: InputDecoration(
                  constraints: BoxConstraints(
                    maxHeight: 33,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  //labelText: "",
                  labelStyle: TextStyle(
                    fontSize: 20,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(
                      widget.camposSizeConfigs.borderRadius,
                    ),
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}