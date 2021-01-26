import 'package:flutter/cupertino.dart';

getUrlServer() {
  return "http://192.168.0.101:5000/";
}

getUrlLogin() {
  return getUrlServer()+"login";
}

getUrlCadastro() {
  return getUrlServer()+"usuarios";
}