import 'package:flutter/material.dart';

import 'SigningUp_Path Steps/Contatos/formulario_contatos.dart';
import 'SigningUp_Path Steps/Dados Pessoais/formulario_dados_pessoais.dart';
import 'SigningUp_Path Steps/Endereço/formulario_endereço.dart';
import 'SigningUp_Path Steps/Etapa_signinUp_path.dart';
import 'SigningUp_Path Steps/Profissional_e_financeira/formulario_profissional_financeira.dart';
import 'SigningUp_Path Steps/Referencias Comerciais/formulario_referencias_comerciais.dart';
import 'SigningUp_Path Steps/Referencias Pessoais/formulario_referencias_pessoais.dart';

class SingUpPath extends StatefulWidget {
  const SingUpPath({Key? key}) : super(key: key);

  @override
  _SingUpPathState createState() => _SingUpPathState();
}

class _SingUpPathState extends State<SingUpPath>
    with SingleTickerProviderStateMixin {
  bool t = false;
  late final TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 6, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<GlobalKey<FormState>> myKeys = [
    GlobalKey<FormState>(),
    GlobalKey<FormState>(),
    GlobalKey<FormState>(),
    GlobalKey<FormState>(),
    GlobalKey<FormState>(),
    GlobalKey<FormState>(),
  ];

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: screenSize.width / 1.1,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.orange, width: 2),
              ),
            ),
          ),
          Container(
            width: screenSize.width / 1.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(2)),
            ),
            child: TabBar(
              controller: _tabController,
              onTap: (index) async {
                final int previousIndex = _tabController.previousIndex;
                final GlobalKey<FormState> form = myKeys[previousIndex];
                final FormState? currentFormState = form.currentState;
                final bool? isValidated = currentFormState?.validate();

                if (isValidated != null && !isValidated) {
                  _tabController.index = previousIndex;
                }
                currentFormState?.save();
              },
              unselectedLabelStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
              indicatorPadding: EdgeInsets.only(bottom: 40),
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 1,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.orange,
              ),
              tabs: <Widget>[
                Tab(
                  child: new Etapa(
                    stepNumber: 1,
                    stepName: 'Dados Pessoais',
                    textFlexNumber: 2,
                  ),
                ),
                Tab(
                  child: new Etapa(
                    stepNumber: 2,
                    stepName: 'Endereço',
                    textFlexNumber: 2,
                  ),
                ),
                Tab(
                  child: new Etapa(
                    stepNumber: 3,
                    stepName: 'Contatos',
                    textFlexNumber: 2,
                  ),
                ),
                Tab(
                  child: new Etapa(
                    stepNumber: 4,
                    stepName: 'Profissional e Financeira',
                    textFlexNumber: 3,
                  ),
                ),
                Tab(
                  child: new Etapa(
                    stepNumber: 5,
                    stepName: 'Referências Pessoais',
                    textFlexNumber: 3,
                  ),
                ),
                Tab(
                  child: new Etapa(
                    stepNumber: 6,
                    stepName: 'Referências Comerciais',
                    textFlexNumber: 3,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView(
                  children: <Widget>[
                    FormularioDadosPessoais(formKey: myKeys[0]),
                  ],
                ),
                ListView(
                  children: <Widget>[
                    FormularioEndereco(formKey: myKeys[1]),
                  ],
                ),
                ListView(
                  children: <Widget>[
                    FormularioContatos(
                      formKey: myKeys[2],
                    ),
                  ],
                ),
                ListView(
                  children: <Widget>[
                    FormularioProfissionalFinanceira(),
                  ],
                ),
                ListView(
                  children: <Widget>[
                    FormularioReferenciasPessoais(),
                  ],
                ),
                ListView(
                  children: <Widget>[
                    FormularioReferenciasComerciais(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
