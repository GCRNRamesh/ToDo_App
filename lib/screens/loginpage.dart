import 'package:flutter/material.dart';
import 'package:todo_app/widgets/textfields.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    SizedBox space=const SizedBox(height: 10.0,);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // login Image
                Image.asset("assets/images/login.png"),
                space,
                //2 textfieds in coloum manner
                const Textfields(Icon(Icons.email),"Email"),
                space,
                const Textfields(Icon(Icons.key),"Password"),
                space,
                //2 text's with one clickable in row manner
                RichText(
                  text: const TextSpan(
                    text: "Don't have an account?",
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: " Sign up",
                        style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)
                      )
                    ]
                  ),
                ),
                space,
                //button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: (){}, 
                    child: const Text("Login",style: TextStyle(fontSize: 20),)))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
