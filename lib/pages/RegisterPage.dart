import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super_key});

  @override
  State<StatefulWidget> createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  String? nama;
  String? email;
  String? noHP;
  String? password;

  @override
  Widget build(BuildContext context) {
    // throw UnimplementedError();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 80, width: double.infinity),
              const Text(
                "Register",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const Text(
                "Create ur profile to start ur journey",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 20),
              Container(
                child: Form(
                    key: _formKey,
                    child: Column(children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Name",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 5),
                          Container(
                              child: TextFormField(
                            onChanged: (value) {
                              nama = value;
                            },
                            decoration: InputDecoration(
                                hintText: "Fullname",
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ))
                        ],
                      ),
                      //define imput component
                      Text("Name"),
                      Text("Email"),
                      Text("No. HP"),
                      Text("Password"),
                      Text("Confirmation Password"),
                      FilledButton(onPressed: () {}, child: Text('Register'))
                    ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
