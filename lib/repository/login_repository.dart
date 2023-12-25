import 'package:myfirstapp/data/network/network_api_services.dart';
import 'package:myfirstapp/res/app_url/app_url.dart';

class LoginRepository {
  final _apiService = NetworkApiServices();

  Future<dynamic> LoginApi(var data) async {
    dynamic response = await _apiService.postApi(data, AppUrl.loginUrl);
    return response;
  }
}
