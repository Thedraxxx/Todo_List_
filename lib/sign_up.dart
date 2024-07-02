import 'package:flutter/material.dart';
import 'package:todo_list/log_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.deepPurpleAccent.shade400,)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Create an account.",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple.shade800),
            ),
            SizedBox(
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
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter a full name",
                    hintStyle: TextStyle(
                        color: const Color.fromARGB(255, 33, 18, 100),
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                    prefixIcon: Icon(
                      Icons.person_2_rounded,
                      color: Colors.deepPurple.shade800,
                    ),
                    border: InputBorder.none),
                keyboardType: TextInputType.name,
              ),
            ),
            SizedBox(
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
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter an e-mail",
                    hintStyle: TextStyle(
                        color: const Color.fromARGB(255, 33, 18, 100),
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.deepPurple.shade800,
                    ),
                    border: InputBorder.none),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            SizedBox(
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
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter a Password",
                    hintStyle: TextStyle(
                        color: const Color.fromARGB(255, 33, 18, 100),
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.deepPurple.shade800,
                    ),
                    border: InputBorder.none),
                keyboardType: TextInputType.visiblePassword,
              ),
            ),
            SizedBox(
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
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "or",
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?\t\t",
                  style: TextStyle(fontSize: 20),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LogIn()
                          ));
                    },
                    child: Text(
                      "Log In",
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
