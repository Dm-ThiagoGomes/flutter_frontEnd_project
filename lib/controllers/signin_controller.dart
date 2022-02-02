import 'package:dio/dio.dart';
import 'package:rio_das_pedras_front_end/View/cadastro/widgets/SigningUp_Path%20Steps/repositories.dart';
import 'package:rio_das_pedras_front_end/models/dados_pessoais_model.dart';
import 'package:wsda/core/values/access_token.dart';
import 'package:wsda/source/common/endpoints/access_token_endpoint.dart';
import 'package:wsda/wsda.dart';

class SigninController {
  Future<bool> signUp() async {
    DadosPessoaisModel _dadosPessoais = Repositories.dadosPessoaisRepository;
    AccessTokenEndpoint accessTokenEndpoint = AccessTokenEndpoint(version: 1);
    Response response = await accessTokenEndpoint();
    AccessToken accessToken = AccessToken.from(response.data);

    SignupUser signupUser = SignupUser(
      accessToken: accessToken,
      version: 2,
      data: <String, dynamic>{
        "clienteNome": _dadosPessoais.clienteNome,
        "clienteCpf": _dadosPessoais.CPF,
        "clienteNascimento": _dadosPessoais.dataDeNascimento,
        "clienteSexo": _dadosPessoais.sexo,
        "clienteResLogradouro": "Rua Ruy Barbosa",
        "clienteResNumero": "190",
        "clienteResComplemento": "",
        "clienteResBairro": "Centro",
        "clienteRgNumero": "2070517802",
        "clienteRgOrgaoEmissor": "SSP",
        "clienteResCidade": "Itabuna",
        "clienteResUF": "BA",
        "clienteResCep": "45600321",
        "clienteResLatitude": "",
        "clienteResLongitude": "",
        "clienteResFoneDDD": "",
        "clienteResFoneNumero": "",
        "clienteCelularDDD": "73",
        "clienteCelularNumero": "981423700",
        "clienteEmailPrincipal": "principal@intellisys.com.br",
        "clienteEmailAlternativo": "",
        "clienteLojaPreferida": "1",
        "clienteSenhaWeb": "123456",
        "clientePermiteEnvioEmail": "1",
        "clientePermiteEnvioSMS": "1",
        "clienteAceiteRegulamento": "1"
      },
    );
    try {
      final Response response = await signupUser();
      if (response.data['code'] == '000') {
        print('Ta indo');
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(_dadosPessoais.clienteNome);
      print(_dadosPessoais.CPF);
      print(_dadosPessoais.dataDeNascimento);
      print(_dadosPessoais.sexo);
      print('ta não');
      print(e);
      return false;
    }
  }
}
