import 'package:ellon_cadastro/screens/inicio/widgets/input_field.dart';
import 'package:flutter/material.dart';

class FormContainer extends StatelessWidget {
  TextEditingController controllerCPF;
  TextEditingController controllerDataNasci;
  TextEditingController controllerEmail;
  TextEditingController controllerCelular;
  TextEditingController controllerCEP;


  FormContainer({@required this.controllerCPF,
    @required this.controllerDataNasci,
    @required this.controllerEmail,
    @required this.controllerCelular,
    @required this.controllerCEP
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: Column(
          children: <Widget>[
            InputField(
              hint: "CPF",
              obscure: false,
              icon: Icons.art_track,
              controller: controllerCPF,
              validateText: "Insira seu CPF",
              autoFocus: false,
            ),
            InputField(
              hint: "Data de Nascimento",
              obscure: false,
              icon: Icons.date_range,
              controller: controllerDataNasci,
              validateText: "Insira sua Data de Nascimento",
              autoFocus: false,
            ),
            InputField(
              hint: "E-mail",
              obscure: false,
              icon: Icons.alternate_email,
              controller: controllerDataNasci,
              validateText: "Insira seu E-mail",
              autoFocus: false,
            ),
            InputField(
              hint: "Celular",
              obscure: false,
              icon: Icons.phone_android,
              controller: controllerDataNasci,
              validateText: "Insira seu número de celular",
              autoFocus: false,
            ),
            InputField(
              hint: "CEP",
              obscure: false,
              icon: Icons.location_on,
              controller: controllerDataNasci,
              validateText: "Insira seu CEP",
              autoFocus: false,
            )
          ],
        ),
      ),
    );
  }
}
