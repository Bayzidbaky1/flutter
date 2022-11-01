import 'package:authentication/model/registration_model.dart';
import 'package:authentication/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController fullnameController = TextEditingController();
  final TextEditingController phonenumberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  late LoginModel _loginModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.blue,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Text("Registration Page")),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 158,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28.0, right: 28, bottom: 15),
              child: TextField(
                controller: fullnameController,
                decoration: InputDecoration(
                  hintText: "Full Name",
                  labelText: "Full Name",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28.0, right: 28, bottom: 15),
              child: TextField(
                controller: phonenumberController,
                decoration: InputDecoration(
                  hintText: "Phone Number",
                  labelText: "Phone Number",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28.0, right: 28, bottom: 15),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Email",
                  labelText: "Email",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28.0, right: 28, bottom: 15),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: "Password",
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),

            // Button Section Start

            GestureDetector(
              onTap: () {
                registrationPost();
              },
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 28.0, right: 28, bottom: 15),
                child: Container(
                  alignment: Alignment.center,
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Colors.blue,
                  ),
                  child: Text(
                    "Registration",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            //Button Section End
          ],
        ),
      ),
    );
  }

  Future<LoginModel?> registrationPost() async {
    Map<String, dynamic> body = {
      "FullName": "${fullnameController.text}",
      "Username": "${phonenumberController.text}",
      "Email": "${emailController.text}",
      "Pswd": "${passwordController.text}",
    };

    var response = await http.post(
      Uri.parse("https://srvc.aide.com.bd/api/Auth/register"),
      headers: {
        "Accept": "application/json",
      },
      body: body,
    );

    if (response.statusCode == 200) {
      setState(() {
       _loginModel = loginModelFromJson(response.body);
       Fluttertoast.showToast(
           msg: "${_loginModel.message}",
           toastLength: Toast.LENGTH_SHORT,
           gravity: ToastGravity.CENTER,
           timeInSecForIosWeb: 1,
           backgroundColor: Colors.red,
           textColor: Colors.white,
           fontSize: 16.0
       );
       print("response___${response.body}");
       Navigator.push(context, MaterialPageRoute(builder: (_)=> HomeScreen()));
      });
    }
  }
}
