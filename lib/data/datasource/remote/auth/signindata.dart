import 'package:ecommercecourse/linkapi.dart';
import '../../../../core/class/crud.dart';

class SinInData {
  CrudPostSignIn crud;
  SinInData(this.crud);
  postdata(String phone, String password) async {
    var response = await crud.postData(
        LinkApp.signin, {"phone_number": phone, "password": password});
    return response.fold((l) => l, (r) => r);
  }
}
