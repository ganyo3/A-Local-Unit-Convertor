// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'login_page.dart';

//creating the statefulWidget class
class Signup_Page extends StatefulWidget {
  @override
  const Signup_Page({super.key});

  @override
  State<StatefulWidget> createState() {
    return Logout_PageState();
  }
}

class Logout_PageState extends State<Signup_Page> {
  @override
  Widget build(BuildContext context) {
    //Total Page Size
    var size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 214, 209, 190),
        // appBar: AppBar(
        //   centerTitle: true,
        // backgroundColor: const Color.fromARGB(255, 214, 209, 190),
        //   title: const Text(
        //     'Sign Up',
        //     style: TextStyle(
        //       fontSize: 25,
        //       fontWeight: FontWeight.bold,
        //       color: Colors.black,
        //     ),
        //   ),
        // ),
        body:DecoratedBox(
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/marketproduct.jpg"),
              fit: BoxFit.cover,
              opacity: 0.8
              )
          ),
          child: SafeArea(
            child: SingleChildScrollView(
            padding: EdgeInsets.only(bottom: size.height*0.05),
              child: Container(
                 decoration: const BoxDecoration(
                  backgroundBlendMode: BlendMode.lighten,
                    color: Colors.grey,
                     borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                      margin:
                        const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    alignment: Alignment.center,
                child: Column(
                  children: [
                    const Text("Sign Up",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                   Column(
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
                         "Register Your Account",
                         style: TextStyle(
                           fontSize: 30,
                           fontWeight: FontWeight.bold,
                         ),
                       ),
                       SizedBox(
                         height: size.height * 0.02,
                       ),
                       const Text("Join the hub..."),
                     ],
                   ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Column(
                      children: [
                        //TODO: Adding Form
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: const InputDecoration(
                                  label: Text("First Name"),
                                  enabledBorder:UnderlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                      borderSide: BorderSide(
                                    width: 5,
                                  )),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.01,
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                  label: Text("Last Name"),
                                  enabledBorder: UnderlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                      borderSide: BorderSide(
                                    width: 5,
                                  )),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.01,
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                  label: Text("Email"),
                                  enabledBorder: UnderlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                      borderSide: BorderSide(
                                    width: 5,
                                  )),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.01,
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                  label: Text("Mobile Number"),
                                  enabledBorder: UnderlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                      borderSide: BorderSide(
                                    width: 5,
                                  )),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.01,
                              ),
                              TextFormField(
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
                              SizedBox(
                                height: size.height * 0.01,
                              ),
                              TextFormField(
                                obscureText: true,
                                decoration: const InputDecoration(
                                  label: Text("Confirm Password"),
                                  enabledBorder: UnderlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                      borderSide: BorderSide(
                                    width: 5,
                                  )
                                  ),
                                ),
                              ),                        
                            ],
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        FloatingActionButton.extended(
                          backgroundColor: const Color.fromARGB(239, 255, 123, 0),
                          extendedPadding: const EdgeInsets.all(110),
                          onPressed: () {},
                          label: const Text(
                            'Register',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Already have an account?"),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Login_Page()),
                                  );
                                },
                                child: const Text("Log In"))
                          ],
                        ),
                        const Text("Or Continue with; "),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton.small(
                              backgroundColor: Colors.black,
                              onPressed: () {},
                              child: Image.asset(
                                "assets/images/twitter.png",
                              ),
                            ),
                            FloatingActionButton.small(
                              backgroundColor: Colors.white,
                              onPressed: () {},
                              child: Image.asset("assets/images/google.png"),
                            ),
                            FloatingActionButton.small(
                              backgroundColor: Colors.blue,
                              onPressed: () {},
                              child: Image.asset("assets/images/facebook.png"),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
