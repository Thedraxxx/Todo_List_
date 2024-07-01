import 'package:flutter/material.dart';

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
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Create an account.",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.deepPurple.shade800),),
            SizedBox(height: 40,),
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
                    hintStyle: TextStyle(color: const Color.fromARGB(255, 33, 18, 100),fontSize: 20,fontWeight: FontWeight.w500),
                    prefixIcon: Icon(
                      Icons.person_2_rounded,
                      color: Colors.deepPurple.shade800,
                    ),
                    border: InputBorder.none),
                    keyboardType: TextInputType.name,
              ),
            ),
            SizedBox(height: 40,),
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
                    hintStyle: TextStyle(color: const Color.fromARGB(255, 33, 18, 100),fontSize: 20,fontWeight: FontWeight.w500),
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.deepPurple.shade800,
                    ),
                    border: InputBorder.none),
                    keyboardType: TextInputType.emailAddress,
              ),
            ),
            SizedBox(height: 40,),
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
                    hintStyle: TextStyle(color: const Color.fromARGB(255, 33, 18, 100),fontSize: 20,fontWeight: FontWeight.w500),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.deepPurple.shade800,
                    ),
                    border: InputBorder.none),
                    keyboardType: TextInputType.visiblePassword,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
