import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/View/cadastro/widgets/SigningUp_Path%20Steps/controllers.dart';

import '../../campos_size_configs.dart';
import '../../repositories.dart';

class CampoNome1 extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  const CampoNome1({required this.camposSizeConfigs});

  @override
  _CampoNome1State createState() => _CampoNome1State();
}

class _CampoNome1State extends State<CampoNome1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: widget.camposSizeConfigs.spaceBetweenFieldsInTop),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Nome'),
            SizedBox(
              height: widget.camposSizeConfigs.campoHeight,
              width: widget.camposSizeConfigs.campoWidth,
              child: TextFormField(
                initialValue: Repositories.referenciasPessoaisRepository
                            .referenciaPessoalNome1 !=
                        ''
                    ? Repositories
                        .referenciasPessoaisRepository.referenciaPessoalNome1
                    : '',
                onSaved: (valor) => Controllers.referenciasPessoaisController
                    .referenciaPessoalNome1 = valor,
                validator: (value) => value!.isEmpty ? 'Coloque um nome' : null,
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
