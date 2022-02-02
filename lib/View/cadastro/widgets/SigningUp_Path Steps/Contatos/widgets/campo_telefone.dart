import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/View/cadastro/widgets/SigningUp_Path%20Steps/controllers.dart';

import '../../.././SigningUp_Path%20Steps/campos_size_configs.dart';
import '../../repositories.dart';

class CampoTelefone extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  const CampoTelefone({required this.camposSizeConfigs});

  @override
  _CampoTelefoneState createState() => _CampoTelefoneState();
}

class _CampoTelefoneState extends State<CampoTelefone> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: widget.camposSizeConfigs.spaceBetweenFieldsInTop),
      child: Row(
        children: <Widget>[
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
              Widget>[
            Text('DDD'),
            SizedBox(
              height: widget.camposSizeConfigs.campoHeight,
              width: widget.camposSizeConfigs.campoWidth / 4,
              child: TextFormField(
                initialValue: Repositories.contatosRepository.dddTelefone != ''
                    ? Repositories.contatosRepository.dddTelefone
                    : '',
                validator: (value) => value!.isEmpty ? 'Coloque seu DDD' : null,
                onSaved: (valor) =>
                    Controllers.contatosController.contatosDDDTelefone = valor,
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
          SizedBox(
            width: widget.camposSizeConfigs.campoWidth / 32,
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Telefone'),
                SizedBox(
                  height: widget.camposSizeConfigs.campoHeight,
                  width: widget.camposSizeConfigs.campoWidth / 1.5,
                  child: TextFormField(
                    initialValue: Repositories.contatosRepository.telefone != ''
                        ? Repositories.contatosRepository.telefone
                        : '',
                    validator: (value) =>
                        value!.isEmpty ? 'Coloque seu telefone' : null,
                    onSaved: (valor) =>
                        Controllers.contatosController.contatosTelefone = valor,
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
        ],
      ),
    );
  }
}
