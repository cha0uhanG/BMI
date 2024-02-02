// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: AuthenticationScreen(),
//     );
//   }
// }
//
// class AuthenticationScreen extends StatefulWidget {
//   @override
//   _AuthenticationScreenState createState() => _AuthenticationScreenState();
// }
//
// class _AuthenticationScreenState extends State<AuthenticationScreen> {
//   @override
//   void initState() {
//     super.initState();
//     checkAuthenticationStatus();
//   }
//
//   void checkAuthenticationStatus() async {
//     var sharedPreferences = await SharedPreferences.getInstance();
//     var userId = sharedPreferences.getString('userId');
//
//     if (userId != null) {
//       // User is already signed up and logged in
//       navigateToHome();
//     }
//   }
//
//   void navigateToHome() {
//     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignupScreen()));
//               },
//               child: Text('Sign Up'),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => SigninScreen()));
//               },
//               child: Text('Sign In'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class SignupScreen extends StatelessWidget {
//   final TextEditingController userIdController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sign Up'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             TextField(
//               controller: userIdController,
//               decoration: InputDecoration(labelText: 'User ID'),
//             ),
//             TextField(
//               controller: passwordController,
//               obscureText: true,
//               decoration: InputDecoration(labelText: 'Password'),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () async {
//                 var sharedPreferences = await SharedPreferences.getInstance();
//                 sharedPreferences.setString('userId', userIdController.text);
//
//                 Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
//               },
//               child: Text('Sign Up'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class SigninScreen extends StatelessWidget {
//   final TextEditingController userIdController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sign In'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             TextField(
//               controller: userIdController,
//               decoration: InputDecoration(labelText: 'User ID'),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () async {
//                 var sharedPreferences = await SharedPreferences.getInstance();
//                 var userId = sharedPreferences.getString('userId');
//
//                 if (userId == userIdController.text) {
//                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
//                 } else {
//                   // Handle incorrect login
//                   // You might want to show an error message or take other actions
//                 }
//               },
//               child: Text('Sign In'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//       ),
//       body: Center(
//         child: Text('Welcome to the Home Screen!'),
//       ),
//     );
//   }
// }
