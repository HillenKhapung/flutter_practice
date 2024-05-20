import 'package:flutter/material.dart';
import 'routes.dart';
class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white ,
      child:SingleChildScrollView(
        child: Column(
        children: [
        Image.asset("assets/images/login.jpeg",fit: BoxFit.cover),
          SizedBox(
            height: 20,
          ),
          Text("Welcome",style: TextStyle(
            color: Colors.blue,
            fontSize: 30,
          ),),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:16.0,horizontal:20.0),
           child: Column(
           children: [
             TextFormField(
               decoration: InputDecoration(
                 hintText: "enter Username",
                 labelText: "Username",
               ),
             ),
             TextFormField(
               decoration: InputDecoration(
                 hintText: "enter Password",
                 labelText: "Password",
               ),
               obscureText: true,
             ),
             SizedBox(
               height: 40,
             ),
             ElevatedButton(
               onPressed: (){
                 Navigator.pushNamed(context, MyRoutes.homeRoute);
               },
               child: Text("login",style: TextStyle(
                 fontSize: 30,
               ),),
               style: TextButton.styleFrom(minimumSize:Size(120, 70)),
             ),
           ],
         )
         )
        ],
      ),
    ),
    );
  }
}
