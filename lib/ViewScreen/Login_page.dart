import 'package:flutter/material.dart';
import 'package:force_delivery/Name%20class/Naming.dart';
import 'package:rive/rive.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Center(child: FittedBox(child: Text(Naming.LoginPageName,textAlign: TextAlign.center,style: const TextStyle(fontSize: 15,color: Colors.black),))),
        backgroundColor: Colors.cyan,
        shape: const  RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
       width: MediaQuery.of(context).size.width,
        color: Colors.white.withOpacity(0.5),
        child:   SingleChildScrollView(
          child: Column(
            children:  [

             const  SizedBox(
                   height: 310,
                   width: 400,
                   child:   RiveAnimation.asset('assets/panda.riv')),
              UserName(),
            const  SizedBox(
              height: 10,
            ),
              password(),
              const  SizedBox(
                height: 15,
              ),
              SignInButton(),
            ],
          ),
        ),
      ),
    );
  }
  Widget  UserName() {
    return    Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        cursorHeight: 20,
        autofocus: true,
        focusNode: FocusNode(),
        controller: nameController,
        decoration: InputDecoration(
          labelText: 'Username',
          hintText: "Enter your Name",
          prefixIcon:const  Icon(Icons.person),
          contentPadding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide:const  BorderSide(color: Colors.black, width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide:const  BorderSide(color: Colors.grey, width: 1.5),
          ),
          focusedBorder: OutlineInputBorder(
            gapPadding: 0.0,
            borderRadius: BorderRadius.circular(30),
            borderSide:const BorderSide(color: Colors.blue, width: 1.5),
          ),
        ),
      )
    );

  }
  Widget  password() {
    return    Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TextField(
          cursorHeight: 20,
          focusNode: FocusNode(),
          autofocus: true,
          controller: passwordController,
          decoration: InputDecoration(
            labelText: 'Password',
            hintText: "Enter your Password",
            prefixIcon:const  Icon(Icons.person),
            contentPadding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide:const  BorderSide(color: Colors.black, width: 2),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide:const  BorderSide(color: Colors.grey, width: 1.5),
            ),
            focusedBorder: OutlineInputBorder(
              gapPadding: 0.0,
              borderRadius: BorderRadius.circular(30),
              borderSide:const BorderSide(color: Colors.blue, width: 1.5),
            ),
          ),
        )
    );

  }
  Widget  SignInButton(){
    return Padding(
      padding: const  EdgeInsets.only(right: 20),
      child: Align(
        alignment:  Alignment.centerRight,
        child: SizedBox(
          width: 150,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Login'),
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),

          ),
        ),
      ),
    );
  }


}
