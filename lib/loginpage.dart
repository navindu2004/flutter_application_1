// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/Animation/FadeAnimation.dart';

// void main() => runApp(const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     ));

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         decoration: const BoxDecoration(
//             gradient: LinearGradient(begin: Alignment.topCenter, colors: [
//           Color(0xFF3383CD),
//           Color(0xFF11249F),
//         ])),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             const SizedBox(
//               height: 80,
//             ),
//             const Padding(
//               padding: EdgeInsets.all(20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Text(
//                     "Login",
//                     style: TextStyle(color: Colors.white, fontSize: 40),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Text(
//                     "Welcome Back",
//                     style: TextStyle(color: Colors.white, fontSize: 18),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),
//             Expanded(
//               child: Container(
//                 decoration: const BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(60),
//                       topRight: Radius.circular(60)),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(30),
//                   child: Column(
//                     children: <Widget>[
//                       const SizedBox(
//                         height: 60,
//                       ),
//                       FadeAnimation(
//                           delay: 1.4,
//                           child: Container(
//                             decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(10),
//                                 boxShadow: const [
//                                   BoxShadow(
//                                       color: Color.fromRGBO(225, 95, 27, .3),
//                                       blurRadius: 20,
//                                       offset: Offset(0, 10))
//                                 ]),
//                             child: Column(
//                               children: <Widget>[
//                                 Container(
//                                   padding: const EdgeInsets.all(10),
//                                   decoration: const BoxDecoration(
//                                       border: Border(
//                                           bottom: BorderSide(
//                                               color: Color.fromARGB(
//                                                   255, 172, 172, 172)))),
//                                   child: const TextField(
//                                     decoration: InputDecoration(
//                                         hintText: "Email or Phone number",
//                                         hintStyle:
//                                             TextStyle(color: Colors.grey),
//                                         border: InputBorder.none),
//                                   ),
//                                 ),
//                                 Container(
//                                   padding: const EdgeInsets.all(10),
//                                   decoration: const BoxDecoration(
//                                     border: Border(
//                                         bottom: BorderSide(
//                                             color: Color.fromARGB(
//                                                 255, 172, 172, 172))),
//                                   ),
//                                   child: const TextField(
//                                     decoration: InputDecoration(
//                                         hintText: "Password",
//                                         hintStyle:
//                                             TextStyle(color: Colors.grey),
//                                         border: InputBorder.none),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           )),
//                       const SizedBox(
//                         height: 40,
//                       ),
//                       const FadeAnimation(
//                           delay: 1.5,
//                           child: Text(
//                             "Forgot Password?",
//                             style: TextStyle(color: Colors.grey),
//                           )),
//                       const SizedBox(
//                         height: 40,
//                       ),
//                       FadeAnimation(
//                         delay: 1.6,
//                         child: Container(
//                           height: 50,
//                           margin: const EdgeInsets.symmetric(horizontal: 50),
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(50),
//                               color: Colors.orange[900]),
//                           child: const Center(
//                             child: Text(
//                               "Login",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 50,
//                       ),
//                       const FadeAnimation(
//                           delay: 1.7,
//                           child: Text(
//                             "Continue with social media",
//                             style: TextStyle(color: Colors.grey),
//                           )),
//                       const SizedBox(
//                         height: 30,
//                       ),
//                       Row(
//                         children: <Widget>[
//                           Expanded(
//                             child: FadeAnimation(
//                               delay: 1.8,
//                               child: Container(
//                                   height: 50,
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(50),
//                                       color: Colors.blue),
//                                   child: const Center(
//                                     child: Text(
//                                       "Facebook",
//                                       style: TextStyle(
//                                           color: Colors.white,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   )),
//                             ),
//                           ),
//                           const SizedBox(
//                             width: 30,
//                           ),
//                           Expanded(
//                             child: FadeAnimation(
//                               delay: 1.9,
//                               child: Container(
//                                   height: 50,
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(50),
//                                       color: Colors.black),
//                                   child: const Center(
//                                     child: Text(
//                                       "GitHub",
//                                       style: TextStyle(
//                                           color: Colors.white,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   )),
//                             ),
//                           )
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
