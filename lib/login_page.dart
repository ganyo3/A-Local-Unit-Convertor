// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:units_convertor/conversion_page.dart';
import 'signup_page.dart';

class Login_Page extends StatefulWidget {
  @override
  const Login_Page({super.key});

  @override
  State<StatefulWidget> createState() {
    return Login_PageState();
  }
}

class Login_PageState extends State<Login_Page> {
  @override
  Widget build(BuildContext context) {
    //Total Page Size
    var size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 214, 209, 190),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 214, 209, 190),
          title: const Text(
            'Sign In',
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FloatingActionButton.small(
                        backgroundColor: Colors.black,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        "Welcome Back!",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      const Text("We are excited to see you!"),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      //TODO: Adding Form
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Column(
                          children: [
                            Container(
                                decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 224, 212, 212),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  label: Text("Email"),
                                  enabledBorder: UnderlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                      borderSide: BorderSide(
                                    width: 5,
                                  )),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                           Container(
                               decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 224, 212, 212),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              child: TextFormField(
                                obscureText: true,
                                decoration: const InputDecoration(
                                  label: Text("Password"),
                                  enabledBorder: UnderlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                      borderSide: BorderSide(
                                    width: 5,
                                  )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      TextButton(
                        onPressed: () {},
                        child: const Text("Forgot Password?"),
                      ),
                      FloatingActionButton.extended(
                        backgroundColor: const Color.fromARGB(239, 255, 123, 0),
                        extendedPadding: const EdgeInsets.all(130),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=>const Conversion_Page()),
                          );
                        },
                        label: const Text(
                          'Log In',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("New User?"),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Signup_Page()),
                                );
                              },
                              child: const Text("Create new account"))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
