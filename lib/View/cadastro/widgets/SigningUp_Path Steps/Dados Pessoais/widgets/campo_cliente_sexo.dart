import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/View/cadastro/widgets/SigningUp_Path%20Steps/Dados%20Pessoais/widgets/campo_cliente_cpf.dart';
import 'package:rio_das_pedras_front_end/View/cadastro/widgets/SigningUp_Path%20Steps/controllers.dart';
import 'package:rio_das_pedras_front_end/controllers/dados_pessoais_controller.dart';
import '../../.././SigningUp_Path%20Steps/campos_size_configs.dart';

class Sexo {
  String sexo;
  Sexo(this.sexo);
}

class CampoClienteSexo extends StatefulWidget {
  final CamposSizeConfigs camposSizeConfigs;
  CampoClienteSexo({required this.camposSizeConfigs});

  @override
  _CampoClienteSexoState createState() => _CampoClienteSexoState();
}

class _CampoClienteSexoState extends State<CampoClienteSexo> {
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: widget.camposSizeConfigs.spaceBetweenFieldsInTop,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Sexo',
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(
                widget.camposSizeConfigs.borderRadius,
              ),
            ),
            child: SizedBox(
              height: widget.camposSizeConfigs.campoHeight,
              width: widget.camposSizeConfigs.campoWidth,
              child: PopupMenuButton(
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          dadosPessoais.sexo != ''
                              ? dadosPessoais.sexo
                              : 'selecionar',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                      ),
                    ],
                  ),
                ),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Text("M"),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text(
                      "F",
                    ),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text(
                      "Outro",
                    ),
                    value: 2,
                  ),
                ],
                onSelected: (int menu) {
                  if (menu == 1) {
                    dadosPessoaisController.sexo = 'M';
                  } else if (menu == 2) {
                    dadosPessoaisController.sexo = 'F';
                  } else {
                    dadosPessoaisController.sexo = 'Outro';
                  }
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}