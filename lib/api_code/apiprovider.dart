import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:phedtanker/api_code/apiconstants.dart';
import 'package:phedtanker/screens/dashboard.dart';

class ApiProvider {
  login(String phone, String url) async {
    String query = ApiConstants.loginUrl;
    // var body = Map<String, dynamic>();

    // body['dphone'] = phone;
    // body['durl'] = url;

    // var request = http.post(Uri.parse(query), body: body);
    // var response = await request;
    // var data = response.body;
    // print(response.toString());
    var request = http.MultipartRequest('POST', Uri.parse(query));
    request.fields.addAll({'dphone': phone, 'durl': url});

    http.StreamedResponse response = await request.send();
    print(response.reasonPhrase);
    if (response.statusCode == 200) {
      // saveFP("isLoggedIn", "yes");
      Get.to(DashBoard());
    } else {
      // saveFP("isLoggedIn", "no");

      return response.reasonPhrase;
    }
  }
}
