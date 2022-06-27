import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

void saveFP(String fpkey, String fpvalue) async {
  try {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(fpkey, fpvalue);
  } catch (e) {
    Fluttertoast.showToast(msg: e.toString());
  }
}
