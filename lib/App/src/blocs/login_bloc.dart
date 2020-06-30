import 'dart:async';
import 'package:fitandheal/App/src/validators/validations.dart';

class LoginBloc {
  StreamController _emailController = StreamController<String>.broadcast();
  StreamController _passController = StreamController<String>.broadcast();
  Stream get emailStream => _emailController.stream;
  Stream get passStream => _passController.stream;
  bool isValidInfo(String email, String pass) {
    //Địa chỉ email
    if (!Validations.isValidEmail(email)) {
      _emailController.sink.addError("Địa chỉ email không hợp lệ");
      return false;
    }
    _emailController.sink.add("OK");
    //Mật khẩu
    if (!Validations.isValidPass(pass)) {
      _passController.sink.addError("Mật khẩu không đúng");
      return false;
    }
    _passController.sink.add("OK");
    return true;
  }

  void dispose() {
    _emailController.close();
    _passController.close();
  }
}
