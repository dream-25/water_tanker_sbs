// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:phedtanker/login/register.dart';
// import 'package:phedtanker/screens/dashboard.dart';
//
// class otp extends StatefulWidget {
//   const otp({Key? key}) : super(key: key);
//
//   @override
//   State<otp> createState() => _otpState();
// }
//
// class _otpState extends State<otp> {
//   TextEditingController _text1 = TextEditingController();
//   TextEditingController _text2 = TextEditingController();
//   TextEditingController _text3 = TextEditingController();
//   TextEditingController _text4 = TextEditingController();
//   TextEditingController _text5 = TextEditingController();
//   TextEditingController _text6 = TextEditingController();
//
//
//   void verifyOTP(smsCode) async {
//     FirebaseAuth auth = FirebaseAuth.instance;
//
//     try {
//       PhoneAuthCredential credential = PhoneAuthProvider.credential(
//           verificationId: verificationIDR, smsCode: smsCode);
//       await auth.signInWithCredential(credential).then((value) {
//       print('Sucess');
//
//       Navigator.of(context).push(
//         MaterialPageRoute(builder: (context) => DashBoard()),);
//       });
//     } catch (e) {
//       // showSnackbarC(
//       //     context, "You Have Entered a Wrong OTP", Colors.red, Colors.white);
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: const Color(0xfff7f6fb),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
//           child: Column(
//             children: [
//               Align(
//                 alignment: Alignment.topLeft,
//                 child: GestureDetector(
//                   onTap: () => Navigator.pop(context),
//                   child: const Icon(
//                     Icons.arrow_back,
//                     size: 32,
//                     color: Colors.black54,
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 18,
//               ),
//               Container(
//                 width: 200,
//                 height: 200,
//                 decoration: BoxDecoration(
//                   color: Colors.deepPurple.shade50,
//                   shape: BoxShape.circle,
//                 ),
//                 child: Image.asset(
//                   'assets/images/illustration-3.png',
//                 ),
//               ),
//               const SizedBox(
//                 height: 24,
//               ),
//               const Text(
//                 'Verification',
//                 style: TextStyle(
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               const Text(
//                 "Enter your OTP code number",
//                 style: TextStyle(
//                   fontSize: 14,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black38,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(
//                 height: 28,
//               ),
//               Container(
//                 padding: const EdgeInsets.all(5),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         _textFieldOTP1(first: true, last: false),
//                         _textFieldOTP2(first: false, last: false),
//                         _textFieldOTP3(first: false, last: false),
//                         _textFieldOTP4(first: false, last: false),
//                         _textFieldOTP5(first: false, last: false),
//                         _textFieldOTP6(first: false, last: true),
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 22,
//                     ),
//                     SizedBox(
//                       width: double.infinity,
//                       child: ElevatedButton(
//                         onPressed: () {
//                           var smsCode = '$_text1$_text2$_text3$_text4$_text5$_text6';
//                           print(smsCode);
//                           verifyOTP(smsCode);
//
//                           Navigator.of(context).push(
//                             MaterialPageRoute(builder: (context) => DashBoard()),);
//                         },
//                         style: ButtonStyle(
//                           foregroundColor:
//                               MaterialStateProperty.all<Color>(Colors.white),
//                           backgroundColor:
//                               MaterialStateProperty.all<Color>(Colors.purple),
//                           shape:
//                               MaterialStateProperty.all<RoundedRectangleBorder>(
//                             RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(24.0),
//                             ),
//                           ),
//                         ),
//                         child: const Padding(
//                           padding: EdgeInsets.all(14.0),
//                           child: Text(
//                             'Verify',
//                             style: TextStyle(fontSize: 16),
//                           ),
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 18,
//               ),
//               const Text(
//                 "Didn't you receive any code?",
//                 style: TextStyle(
//                   fontSize: 14,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black38,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(
//                 height: 18,
//               ),
//               const Text(
//                 "Resend New Code",
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.purple,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _textFieldOTP1({required bool first, last}) {
//     return SizedBox(
//       height: 50,
//       child: AspectRatio(
//         aspectRatio: 1.0,
//         child: TextField(
//           controller: _text1,
//           autofocus: true,
//           onChanged: (value) {
//             if (value.length == 1 && last == false) {
//               FocusScope.of(context).nextFocus();
//             }
//             if (value.length == 0 && first == false) {
//               FocusScope.of(context).previousFocus();
//             }
//           },
//           showCursor: false,
//           readOnly: false,
//           textAlign: TextAlign.center,
//           style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//           keyboardType: TextInputType.number,
//           maxLength: 1,
//           decoration: InputDecoration(
//             counter: const Offstage(),
//             enabledBorder: OutlineInputBorder(
//                 borderSide: const BorderSide(width: 2, color: Colors.black12),
//                 borderRadius: BorderRadius.circular(12)),
//             focusedBorder: OutlineInputBorder(
//                 borderSide: const BorderSide(width: 2, color: Colors.purple),
//                 borderRadius: BorderRadius.circular(12)),
//           ),
//         ),
//       ),
//     );
//   }
//   Widget _textFieldOTP2({required bool first, last}) {
//     return SizedBox(
//       height: 50,
//       child: AspectRatio(
//         aspectRatio: 1.0,
//         child: TextField(
//           controller: _text2,
//           autofocus: true,
//           onChanged: (value) {
//             if (value.length == 1 && last == false) {
//               FocusScope.of(context).nextFocus();
//             }
//             if (value.length == 0 && first == false) {
//               FocusScope.of(context).previousFocus();
//             }
//           },
//           showCursor: false,
//           readOnly: false,
//           textAlign: TextAlign.center,
//           style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//           keyboardType: TextInputType.number,
//           maxLength: 1,
//           decoration: InputDecoration(
//             counter: const Offstage(),
//             enabledBorder: OutlineInputBorder(
//                 borderSide: const BorderSide(width: 2, color: Colors.black12),
//                 borderRadius: BorderRadius.circular(12)),
//             focusedBorder: OutlineInputBorder(
//                 borderSide: const BorderSide(width: 2, color: Colors.purple),
//                 borderRadius: BorderRadius.circular(12)),
//           ),
//         ),
//       ),
//     );
//   }
//   Widget _textFieldOTP3({required bool first, last}) {
//     return SizedBox(
//       height: 50,
//       child: AspectRatio(
//         aspectRatio: 1.0,
//         child: TextField(
//           controller: _text3,
//           autofocus: true,
//           onChanged: (value) {
//             if (value.length == 1 && last == false) {
//               FocusScope.of(context).nextFocus();
//             }
//             if (value.length == 0 && first == false) {
//               FocusScope.of(context).previousFocus();
//             }
//           },
//           showCursor: false,
//           readOnly: false,
//           textAlign: TextAlign.center,
//           style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//           keyboardType: TextInputType.number,
//           maxLength: 1,
//           decoration: InputDecoration(
//             counter: const Offstage(),
//             enabledBorder: OutlineInputBorder(
//                 borderSide: const BorderSide(width: 2, color: Colors.black12),
//                 borderRadius: BorderRadius.circular(12)),
//             focusedBorder: OutlineInputBorder(
//                 borderSide: const BorderSide(width: 2, color: Colors.purple),
//                 borderRadius: BorderRadius.circular(12)),
//           ),
//         ),
//       ),
//     );
//   }
//   Widget _textFieldOTP4({required bool first, last}) {
//     return SizedBox(
//       height: 50,
//       child: AspectRatio(
//         aspectRatio: 1.0,
//         child: TextField(
//           controller: _text4,
//           autofocus: true,
//           onChanged: (value) {
//             if (value.length == 1 && last == false) {
//               FocusScope.of(context).nextFocus();
//             }
//             if (value.length == 0 && first == false) {
//               FocusScope.of(context).previousFocus();
//             }
//           },
//           showCursor: false,
//           readOnly: false,
//           textAlign: TextAlign.center,
//           style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//           keyboardType: TextInputType.number,
//           maxLength: 1,
//           decoration: InputDecoration(
//             counter: const Offstage(),
//             enabledBorder: OutlineInputBorder(
//                 borderSide: const BorderSide(width: 2, color: Colors.black12),
//                 borderRadius: BorderRadius.circular(12)),
//             focusedBorder: OutlineInputBorder(
//                 borderSide: const BorderSide(width: 2, color: Colors.purple),
//                 borderRadius: BorderRadius.circular(12)),
//           ),
//         ),
//       ),
//     );
//   }
//   Widget _textFieldOTP5({required bool first, last}) {
//     return SizedBox(
//       height: 50,
//       child: AspectRatio(
//         aspectRatio: 1.0,
//         child: TextField(
//           controller: _text5,
//           autofocus: true,
//           onChanged: (value) {
//             if (value.length == 1 && last == false) {
//               FocusScope.of(context).nextFocus();
//             }
//             if (value.length == 0 && first == false) {
//               FocusScope.of(context).previousFocus();
//             }
//           },
//           showCursor: false,
//           readOnly: false,
//           textAlign: TextAlign.center,
//           style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//           keyboardType: TextInputType.number,
//           maxLength: 1,
//           decoration: InputDecoration(
//             counter: const Offstage(),
//             enabledBorder: OutlineInputBorder(
//                 borderSide: const BorderSide(width: 2, color: Colors.black12),
//                 borderRadius: BorderRadius.circular(12)),
//             focusedBorder: OutlineInputBorder(
//                 borderSide: const BorderSide(width: 2, color: Colors.purple),
//                 borderRadius: BorderRadius.circular(12)),
//           ),
//         ),
//       ),
//     );
//   }
//   Widget _textFieldOTP6({required bool first, last}) {
//     return SizedBox(
//       height: 50,
//       child: AspectRatio(
//         aspectRatio: 1.0,
//         child: TextField(
//           controller: _text6,
//           autofocus: true,
//           onChanged: (value) {
//             if (value.length == 1 && last == false) {
//               FocusScope.of(context).nextFocus();
//             }
//             if (value.length == 0 && first == false) {
//               FocusScope.of(context).previousFocus();
//             }
//           },
//           showCursor: false,
//           readOnly: false,
//           textAlign: TextAlign.center,
//           style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//           keyboardType: TextInputType.number,
//           maxLength: 1,
//           decoration: InputDecoration(
//             counter: const Offstage(),
//             enabledBorder: OutlineInputBorder(
//                 borderSide: const BorderSide(width: 2, color: Colors.black12),
//                 borderRadius: BorderRadius.circular(12)),
//             focusedBorder: OutlineInputBorder(
//                 borderSide: const BorderSide(width: 2, color: Colors.purple),
//                 borderRadius: BorderRadius.circular(12)),
//           ),
//         ),
//       ),
//     );
//   }
// }
