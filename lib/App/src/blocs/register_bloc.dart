import 'dart:async';
import 'package:fitandheal/App/src/validators/validations.dart';

class RegisterBloc {
  StreamController _nameController = StreamController<String>.broadcast();
  StreamController _passController = StreamController<String>.broadcast();
  StreamController _phoneController = StreamController<String>.broadcast();
  StreamController _emailController = StreamController<String>.broadcast();
  Stream get nameStream => _nameController.stream;
  Stream get passStream => _passController.stream;
  Stream get phoneStream => _phoneController.stream;
  Stream get emailStream => _emailController.stream;
  bool isValidInfo(String name, String pass, String phone, String email) {
    //Tên
    if (!Validations.isValidName(name)) {
      _nameController.sink.addError("Vui lòng ghi rõ họ và tên");
      return false;
    }
    _nameController.sink.add("OK");
    //Mật khẩu
    if (!Validations.isValidPass(pass)) {
      _passController.sink.addError("Mật khẩu phải lớn hơn 6 ký tự");
      return false;
    }
    _passController.sink.add("OK");
    //Số điện thoại
    if (!Validations.isValidPhone(phone)) {
      _phoneController.sink.addError("Số điện thoại không hợp lệ");
      return false;
    }
    _phoneController.sink.add("OK");
    //Địa chỉ email
    if (!Validations.isValidEmail(email)) {
      _emailController.sink.addError("Địa chỉ email không hợp lệ");
      return false;
    }
    _emailController.sink.add("OK");
    return true;
  }

  void dispose() {
    _nameController.close();
    _passController.close();
    _phoneController.close();
    _emailController.close();
  }
}
