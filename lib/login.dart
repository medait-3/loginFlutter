import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Center(
          child: SingleChildScrollView(
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
                  decoration: InputDecoration(
                      labelText: 'email Address',
                      prefixIcon: Icon(
                        Icons.email,
                      ),
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 14.1,
                ),
                TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  onFieldSubmitted: (String value) {
                    print(value); //click on submit
                  },
                  onChanged: (String value) {
                    print(value); //one by one
                  },
                  decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 22.0,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.redAccent,
                  child: MaterialButton(
                    onPressed: () {},
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
                      child: Text('Register Now'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
