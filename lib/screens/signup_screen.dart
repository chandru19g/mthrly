import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Importing Screens
import 'package:mothrly/screens/home.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool isChecked = false;

  late String _name, _email, _password, _cPassword;

  var _checkPass;

  signUp() async {
    if (_formKey.currentState!.validate()) {
      if (isChecked) {
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (BuildContext context) => const HomeScreen()),
        );
      } else {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text("Agree Terms And Conditions"),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Ok'),
                  ),
                ],
              );
            });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
        backgroundColor: Colors.white38,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 30.0,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Create Your Account",
                    style: TextStyle(
                      fontSize: 23.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "To confirm your account, enter the 4-digit \n code sent to\b+91 - 9876543211",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: TextFormField(
                      validator: (input) {
                        if (input!.isEmpty) {
                          return 'Enter Name';
                        }
                      },
                      decoration: InputDecoration(
                        labelText: 'Full Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      onSaved: (input) => _name = input!,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: TextFormField(
                      validator: (input) {
                        if (input!.isEmpty) {
                          return 'Enter Email Address';
                        }
                      },
                      decoration: InputDecoration(
                        labelText: 'Email Address',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      onSaved: (input) => _email = input!,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: TextFormField(
                      validator: (input) {
                        _checkPass = input;
                        if (input!.length < 4) {
                          return 'Password length should be atleast 4 characters';
                        }
                      },
                      decoration: InputDecoration(
                        // icon: Icon(Icons.visibility_off),
                        labelText: 'Enter Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      onSaved: (input) => _password = input!,
                      obscureText: true,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: TextFormField(
                      validator: (input) {
                        if (input!.length < 4) {
                          return 'Password length should be atleast 4 characters';
                        } else if (input != _checkPass) {
                          return "Password must be the same as above";
                        }
                      },
                      decoration: InputDecoration(
                        // icon: Icon(Icons.visibility_off),
                        labelText: 'Confirm Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      onSaved: (input) => _cPassword = input!,
                      obscureText: true,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      children: [
                        Checkbox(
                          onChanged: (val) {
                            setState(() {
                              if (val != null) isChecked = val;
                            });
                          },
                          value: isChecked,
                        ),
                        Text("Agree with Terms and Conditions"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 20.0),
                    child: ElevatedButton(
                      onPressed: () {
                        signUp();
                      },
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.0),
                          child: Text("Continue"),
                        ),
                      ),
                      style: TextButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(242, 107, 147, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60.0),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
