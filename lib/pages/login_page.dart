import 'package:flutter/material.dart';

import '../utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  goToHome(BuildContext context) async {
    if(_formKey.currentState!.validate()){
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      Navigator.pushNamed(context, MyRoutes.homeRoute);
    }

  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset('assets/images/login_image.png', fit: BoxFit.cover),
              SizedBox(height: 28.0,),
              Text('Welcome $name', style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 20.0,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter username',
                        labelText: 'Username'
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Username can not Empty';
                        }
                        return null;
                      },
                      onChanged: (value){
                        name = value;
                        //call setState() function to update ui
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Enter password',
                          labelText: 'Password'
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Password can not Empty';
                        }
                        else if(value.length < 6){
                          return 'Password must include at least 6 character';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 30.0,),
                    Material(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(8),
                      child: InkWell(
                        onTap:() => goToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changeButton ? 100 : 150,
                          height: 40,
                          alignment: Alignment.center,
                          child: changeButton ? Icon(Icons.done, color: Colors.white) : Text('Login', style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                          ),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
