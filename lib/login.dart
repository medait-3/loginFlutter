import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  bool passvisible = true;
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'login',
                    style: TextStyle(
                      fontSize: 43.4,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 42.1,
                  ),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (String value) {
                      print(value); //click on submit
                    },
                    onChanged: (String value) {
                      print(value); //one by one
                    },
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'email add must nnot be empty';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'email Address',
                      labelStyle: TextStyle(color: Colors.greenAccent),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.greenAccent,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.greenAccent,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 14.1,
                  ),
                  TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: passvisible,
                    onFieldSubmitted: (String value) {
                      print(value); //click on submit
                    },
                    onChanged: (String value) {
                      print(value); //one by one
                    },
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'pssword must nnot be empty';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.greenAccent),
                      prefixIcon: Icon(Icons.lock, color: Colors.greenAccent),
                      suffixIcon: IconButton(
                        color: Colors.black,
                        icon: Icon(passvisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            passvisible = !passvisible;
                          });
                        },
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.greenAccent,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 22.0,
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.greenAccent,
                    child: MaterialButton(
                      onPressed: () {
                        if (formKey.currentState.validate()) {}
                      },
                      child: Text(
                        'LOGIN',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 11.1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'dont have an account ?',
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Register Now',
                          style: TextStyle(color: Colors.greenAccent),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
