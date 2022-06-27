// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:phedtanker/login/otp.dart';
//
// class Register extends StatefulWidget {
//   const Register({Key? key}) : super(key: key);
//
//   @override
//   State<Register> createState() => _RegisterState();
// }
// String verificationIDR = '';
//
// class _RegisterState extends State<Register> {
//   TextEditingController _phone = TextEditingController();
//
//   // String? otp, authStatus = "";
//
//   Future<void> verifyPhoneNumber(BuildContext context) async {
//     print('${_phone.text.toString()}');
//     FirebaseAuth auth = FirebaseAuth.instance;
//     await auth.verifyPhoneNumber(
//       phoneNumber: "+91${_phone.text.toString()}",
//       timeout: const Duration(seconds: 60),
//       verificationCompleted: (AuthCredential authCredential) async {
//         print('sucess======');
//         // await auth.signInWithCredential(authCredential);
//
//       },
//       verificationFailed: (e) {
//         if (e.code == 'invalid-phone-number') {
//           print('The provided phone number is not valid.');
//         }
//       },
//       codeSent: (verId, [forceCodeResent]) async{
//         // showSnackbarC(
//         //     context, "OTP Sent to Your Number", Colors.green, Colors.white);
//         verificationIDR = verId;
//         Navigator.of(context).push(
//           MaterialPageRoute(builder: (context) => otp()),
//         );
//       },
//       codeAutoRetrievalTimeout: (String verId) {
//         // verificationId = verId;
//         // setState(() {
//         //   authStatus = "TIMEOUT";
//         // });
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: Color(0xfff7f6fb),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
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
//                   'assets/images/illustration-2.png',
//                 ),
//               ),
//               const SizedBox(
//                 height: 24,
//               ),
//               const Text(
//                 'Registration',
//                 style: TextStyle(
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               const Text(
//                 "Add your phone number. we'll send you a verification code so we know you're real",
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
//                 padding: const EdgeInsets.all(28),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Column(
//                   children: [
//                     TextFormField(
//                       controller: _phone,
//                       keyboardType: TextInputType.number,
//                       style: const TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       decoration: InputDecoration(
//                         enabledBorder: OutlineInputBorder(
//                             borderSide: const BorderSide(color: Colors.black12),
//                             borderRadius: BorderRadius.circular(10)),
//                         focusedBorder: OutlineInputBorder(
//                             borderSide: const BorderSide(color: Colors.black12),
//                             borderRadius: BorderRadius.circular(10)),
//                         prefix: const Padding(
//                           padding: EdgeInsets.symmetric(horizontal: 8),
//                           child: Text(
//                             '(+91)',
//                             style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                         suffixIcon: const Icon(
//                           Icons.check_circle,
//                           color: Colors.green,
//                           size: 32,
//                         ),
//                       ),
//                       // onChanged: (value) {
//                       //   phoneNumber = value;
//                       // },
//                     ),
//                     SizedBox(
//                       height: 22,
//                     ),
//                     SizedBox(
//                       width: double.infinity,
//                       child: ElevatedButton(
//                         onPressed: () {
//                           verifyPhoneNumber(context);
//
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
//                             'Send',
//                             style: TextStyle(fontSize: 16),
//                           ),
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
