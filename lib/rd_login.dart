import 'package:flutter/material.dart';

import 'forgot_password.dart';

class rd_login extends StatelessWidget {
  final email = TextEditingController();
  final passw = TextEditingController();
  //create key
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("rd_login page"),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
              const SizedBox(height: 15,),
              //const Text("Email:"),
/* TextFormField */                  
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: "Email",
                  border: OutlineInputBorder(),
                ),
                controller: email,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "กรุณากรอก Email ด้วย!";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15,),
              // const Text("Password:"),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
                controller: passw,
                obscureText: true,
                validator: (input) {
                  if (input!.isEmpty) {
                    return "กรุณากรอกรหัสผ่านด้วย!";
                  }
                  return null;
                },
              ),
/* Forgot password? */ 
              const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => forgot_password(),
                      ),
                    );
                    },
                    child: const Text('Forgot password?'),
                  ),
                ],),
/* Login */
              const SizedBox(height: 15,),
              Row(  
                children: <Widget>[
                  Expanded(child: ElevatedButton(
                    onPressed: () {
                      print("Button1 Click");
                      //bool pass = _formKey.currentState!.validate();
                      // if (pass == true) {print("\nEmail : ${email.text}\nPasswoed : ${passw.text}");}
                      if (_formKey.currentState!.validate()) {
                        if (email.text == "root") {
                          //print("email pass");
                          if (passw.text == "1234") {
                            // print("passw pass");
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Welcome! \nEmail : ${email.text}\nPasswoed : ${passw.text}")),
                            );
                          }
                        }
                      }
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(top: 16,bottom: 16), child: Text("Login"))),),
                ],
              ),
/* Sign up */                        
              const SizedBox(height: 10,),
              const Text("-OR-"),
              TextButton(
                style: ButtonStyle(
                  foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => sign_up(),
                  //   ),
                  // );
                },
                child: const Text('Don\'t have an Account? Sign up',),),
              ],
            )),
        ));
  }
}
