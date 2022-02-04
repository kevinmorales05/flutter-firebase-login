import 'package:flutter/material.dart';
class RecoverPasswordScreen extends StatefulWidget {
  const RecoverPasswordScreen({ Key? key }) : super(key: key);

  @override
  _RecoverPasswordScreenState createState() => _RecoverPasswordScreenState();
}

class _RecoverPasswordScreenState extends State<RecoverPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final emailField = TextFormField(
        autofocus: false,
        controller: emailEditingController,
        keyboardType: TextInputType.emailAddress,
        //validator: () {},
        onSaved: (value) {
          emailEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.mail),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));
    //recover password button
    final recoverButton = Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(30),
        color: Colors.black,
        child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {},
          child: const Text("Recover Password",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
        ));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon:const Icon(Icons.arrow_back, color: Colors.black),
              )),
      body: Center(
          child: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    
                    SizedBox(
                        height: 200,
                        child: Image.asset(
                          "assets/1.png",
                          fit: BoxFit.contain,
                        )),
                   
                   
                    const SizedBox(height: 40),
                    emailField,
                    const SizedBox(height: 40),
                    
                    recoverButton,
                    const SizedBox(height: 40),
                  ],
                )),
          ),
        ),
      )),
    );
  }
}