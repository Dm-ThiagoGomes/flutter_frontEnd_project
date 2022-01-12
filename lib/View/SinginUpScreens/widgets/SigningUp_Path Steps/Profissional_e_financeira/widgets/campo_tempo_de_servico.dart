import 'package:flutter/material.dart';

import '../../campos_size_configs.dart';
import '../../repositories.dart';

class CampoTempoDeServico extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  const CampoTempoDeServico({required this.camposSizeConfigs});

  @override
  _CampoTempoDeServicoState createState() => _CampoTempoDeServicoState();
}

class _CampoTempoDeServicoState extends State<CampoTempoDeServico> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: widget.camposSizeConfigs.spaceBetweenFieldsInTop),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Tempo de serviço'),
                SizedBox(
                  height: widget.camposSizeConfigs.campoHeight,
                  width: widget.camposSizeConfigs.campoWidth / 2,
                  child: TextFormField(
                    initialValue: Repositories
                                .profissionalFinanceiraRepositorie
                                .profissionalEFinanceiraModel
                                .profissionalTempoDeServicoAnos !=
                            ''
                        ? Repositories
                            .profissionalFinanceiraRepositorie
                            .profissionalEFinanceiraModel
                            .profissionalTempoDeServicoAnos
                        : '',
                    onSaved: (valor) => Repositories
                        .profissionalFinanceiraRepositorie
                        .profissionalTempoDeServicoAnos(valor),
                    validator: (value) =>
                        value!.isEmpty ? 'Coloque o tempo de serviço' : null,
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
            width: widget.camposSizeConfigs.campoWidth / 16,
          ),
          SizedBox(
            height: widget.camposSizeConfigs.campoHeight,
            width: widget.camposSizeConfigs.campoWidth / 2,
            child: TextFormField(
              validator: (value) => value!.isEmpty ? null : null,
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
        ],
      ),
    );
  }
}
