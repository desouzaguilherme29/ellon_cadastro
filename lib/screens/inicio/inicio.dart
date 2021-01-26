import 'package:ellon_cadastro/screens/inicio/widgets/form_container.dart';
import 'package:ellon_cadastro/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ellon_cadastro/style/theme.dart' as Theme;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class InicialPage extends StatefulWidget {
  @override
  _InicialPageState createState() => _InicialPageState();
}

class _InicialPageState extends State<InicialPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TextEditingController _controllerCPF = new TextEditingController();
  TextEditingController _controllerDtNasci = new TextEditingController();
  TextEditingController _controllerCelular = new TextEditingController();
  TextEditingController _controllerCEP = new TextEditingController();
  TextEditingController _controllerEmail = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Image(
          image: AssetImage('assets/img/login_person.png'),
          height: 60,
          color: Colors.white,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Vamos Iniciar o Cadastro?",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontFamily: "WorkSansSemiBold")),
          SizedBox(
            height: 45,
          ),
          FormContainer(
              controllerCPF: _controllerCPF,
              controllerDataNasci: _controllerDtNasci,
              controllerCelular: _controllerCelular,
              controllerCEP: _controllerCEP,
              controllerEmail: _controllerEmail),
          SizedBox(
            height: 50,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color.fromRGBO(118, 48, 220, 1.0),
                border: Border.all(color: Colors.white, width: 1.5),
                borderRadius: BorderRadius.all(Radius.circular(30.0))),
            child: Text(
              "Avançar",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.3),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(15, 0, 15, 30),
        child: StepProgressIndicator(
          totalSteps: 6,
          currentStep: 1,
          size: 35,
          selectedColor: Color.fromRGBO(118, 48, 220, 1.0),
          unselectedColor: Colors.grey[200],
          customStep: (index, color, _) =>
              color == Color.fromRGBO(118, 48, 220, 1.0)
                  ? Container(
                      color: color,
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                    )
                  : Container(
                      color: color,
                      child: Icon(
                        Icons.remove,
                      ),
                    ),
        ),
      ),
    );
  }

  void showInSnackBar(String value) {
    FocusScope.of(context).requestFocus(new FocusNode());
    _scaffoldKey.currentState?.removeCurrentSnackBar();
    _scaffoldKey.currentState.showSnackBar(new SnackBar(
      content: new Text(
        value,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontFamily: "WorkSansSemiBold"),
      ),
      backgroundColor: Colors.blue,
      duration: Duration(seconds: 3),
    ));
  }
}
