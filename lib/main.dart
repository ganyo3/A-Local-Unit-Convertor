import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: Convertor(),
  ));
}

//creating the statefulWidget class
class Convertor extends StatefulWidget {
  @override
  const Convertor({super.key});

  @override
  State<StatefulWidget> createState() {
    return ConvertorState();
  }
}

class ConvertorState extends State<Convertor> {
  @override
  Widget build(BuildContext context) {
    //Total Page Size
    var size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       backgroundColor: const Color.fromARGB(255, 214, 209, 190),
        appBar: AppBar(
          centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 214, 209, 190),
          title: const Text(
            'Unit Convertor',
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
        ),
        drawer: callDrawer(context),
        body: SafeArea(
          child: Column(children: [
           Container(
                  margin: EdgeInsets.symmetric(
                vertical: size.width*0.05,
                horizontal: size.height*0.03,
                  ),
               padding: EdgeInsets.symmetric(
                vertical: size.width*0.35,
                horizontal: size.height*1,
               ),
                 decoration: const BoxDecoration(
                  borderRadius:BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(image: AssetImage("assets/images/marketproduct1.jpg"),
                    fit: BoxFit.cover,
                  ),
                 ),
                  alignment: Alignment.center,
               ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 60,
              ),
              alignment: Alignment.center,
              height: size.height * 0.25,
              child: ListView(
                  physics:const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: const [
                    Column(
                      children: [
                        Text(
                          "Measure Accurate",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                            "Converting Local Units to Standard \n Measures Made Easy"),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Local Unit Hub",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                            "Centralizing resources for \n Local Unit Efficiency"),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Global Integration",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                            "Driving conversions through \n Global Integration Initiatives"),
                      ],
                    ),
                  ]),
            ),
            FloatingActionButton.extended(
              backgroundColor: const Color.fromARGB(239, 255, 123, 0),
              extendedPadding: const EdgeInsets.all(90),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login_Page()),
                );
              },
              label: const Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.07,
            ),
            const Text(
              "Become a Seller",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )
          ]),
        ),
      ),
    );
  }

  Drawer callDrawer(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 100, 100, 107),
      child: ListView(
        children: [
          ListTile(
            leading: Image.asset("assets/images/tomato.jpg"),
            title: const Text(
              'GhMetric \n Convertor',
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.05,
            child: const Divider(
              thickness: 3,
              color: Colors.grey,
            ),
          ),
          ListTile(
            leading: FloatingActionButton.small(
              backgroundColor: Colors.blue,
              onPressed: () {},
              child: const Icon(
                Icons.balance,
                color: Colors.white,
              ),
            ),
            title: const Text(
              'Featured Units',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: FloatingActionButton.small(
              backgroundColor: Colors.blue,
              onPressed: () {},
              child: const Icon(
                Icons.next_week_rounded,
                color: Colors.white,
              ),
            ),
            title: const Text(
              'What\'s New',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: FloatingActionButton.small(
              backgroundColor: Colors.blue,
              onPressed: () {},
              child: const Icon(
                Icons.feedback_rounded,
                color: Colors.white,
              ),
            ),
            title: const Text(
              'Feed Back',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: FloatingActionButton.small(
              backgroundColor: Colors.blue,
              onPressed: () {},
              child: const Icon(
                Icons.info,
                color: Colors.white,
              ),
            ),
            title: const Text(
              'About GhMetric',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: FloatingActionButton.small(
              backgroundColor: Colors.blue,
              onPressed: () {},
              child: const Icon(
                Icons.settings,
                color: Colors.white,
              ),
            ),
            title: const Text(
              'Settings',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: FloatingActionButton.small(
              backgroundColor: Colors.blue,
              onPressed: () {},
              child: const Icon(
                Icons.share_outlined,
                color: Colors.white,
              ),
            ),
            title: const Text(
              'Invite Friends',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
