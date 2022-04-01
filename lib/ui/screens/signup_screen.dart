import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mothrly/ui/components/input_field.dart';
import 'package:mothrly/ui/components/myButton.dart';

// Importing Screens
import 'package:mothrly/ui/screens/home.dart';
import 'package:mothrly/ui/themes.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool isChecked = false;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _cpasswordController = TextEditingController();

  dynamic _checkPass;

  signUp() async {
    if (_formKey.currentState!.validate()) {
      if (_passwordController.text == _cpasswordController.text) {
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
                  content: const Text("Agree Terms And Conditions"),
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
      } else {
        print("snackbar");
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              "Password Mis-match",
            ),
            duration: Duration(seconds: 3),
            elevation: 10.0,
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
          ),
        );
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
                  Text(
                    "Create Your Account",
                    style: Themes().cardHeader.copyWith(fontSize: 24.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                        "To confirm your account, enter the 4-digit \n code sent to\b+91 - 9876543211",
                        style: Themes().cardDesc),
                  ),
                  MyInputField(
                    labelText: "Full Name",
                    obscureText: false,
                    controller: _nameController,
                  ),
                  MyInputField(
                    labelText: "Email Address",
                    obscureText: false,
                    controller: _emailController,
                  ),
                  MyInputField(
                    labelText: "Password",
                    obscureText: true,
                    controller: _passwordController,
                  ),
                  MyInputField(
                    labelText: "Confirm Password",
                    obscureText: true,
                    controller: _cpasswordController,
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
                        const Text("Agree with Terms and Conditions"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 20.0),
                    child: MyButton(
                      label: "Continue",
                      color: const Color.fromRGBO(242, 107, 147, 1),
                      onTapButton: () {
                        signUp();
                      },
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
