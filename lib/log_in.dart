import 'package:flutter/material.dart';
import 'package:todo_list/sign_up.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome Back",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple.shade800),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: 350,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Enter an e-mail",
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 33, 18, 100),
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.deepPurple,
                    ),
                    border: InputBorder.none),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: 350,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Enter a Password",
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 33, 18, 100),
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.deepPurple,
                    ),
                    border: InputBorder.none),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: 350,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.deepPurple.shade900)),
                  child: const Text(
                    "Log In",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
           Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Create an account \t\t",
                  style: TextStyle(fontSize: 20),
                ),
                GestureDetector(
                    onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUp()));
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.deepPurple.shade700,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
