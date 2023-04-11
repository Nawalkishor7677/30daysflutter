import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatelessWidget {
    const LoginPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child:SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login_page.png.png",
            fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text("Welcome",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold
            ),
            ),
             SizedBox(
              height: 20.0,
            ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
          child: Column(
            children: [
                  TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Username,",
                  labelText: "Username"
                  ),
              ),
               TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter Password,",
                  labelText: "Password"
                  ),
              ),
             SizedBox(
              height: 30.0,
            ),
            InkWell(
              onTap: () async{
                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context,MyRoutes.homenRoute); 
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: 130,
                height: 40,
                alignment: Alignment.center,
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18,
                  ),
                ),
                decoration: BoxDecoration(
                 color: Colors.deepPurple,
                 borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            // ElevatedButton(
             // child: Text("Login"),
            // style: TextButton.styleFrom(minimumSize:Size(130, 40)),
             // onPressed: () {
               // Navigator.pushNamed(context,MyRoutes.homenRoute);             },
           // ),
            ],           
          ),
        )
          ],
        ),
      )
    );
  }
}