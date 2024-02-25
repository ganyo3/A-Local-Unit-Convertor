// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';

class Conversion_Page extends StatefulWidget {
  @override
  const Conversion_Page({super.key});

  @override
  State<StatefulWidget> createState() {
    return Login_PageState();
  }
}

class Login_PageState extends State<Conversion_Page> {
  String dropdownValue = 'Gari';
  String dropdownlocalValue = 'Olonka';
  String dropdownstandardValue = 'Kilogram(kg)';
  double value = 0;
  double convertedValue = 0;
  @override
  Widget build(BuildContext context) {
    //Total Page Size
    var size = MediaQuery.of(context).size;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 151, 137, 93),
        drawer: callDrawer(context),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 151, 137, 93),
          title: const Text(
            'GhMetric',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.black,
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  // height: size.height*0.4,
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      vertical: size.width * 0.05,
                      horizontal: size.height * 0.03,
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: size.width * 0.35,
                      horizontal: size.height * 1,
                    ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                        image: AssetImage("assets/images/marketproduct2.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: size.width * 0.07,
                        ),
                        padding: EdgeInsets.only(
                          left: size.width * 0.1,
                        ),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 224, 212, 212),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            const Text(
                              "Ingredient:     ",
                            ),
                            DropdownButton(
                              // padding: const EdgeInsets.all(3),
                              borderRadius: BorderRadius.circular(10),
                              hint: const Text("Ingredient"),
                              value: dropdownValue,
                              items: [
                                'Gari',
                                'Rice',
                                'Maize',
                                'Groundnut',
                                'Beans',
                                'Sugar',
                                'Salt',
                                'Onion',
                                'Tomato'
                              ].map((String value) {
                                return DropdownMenuItem(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue = newValue!;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 224, 212, 212),
                                    borderRadius: BorderRadius.circular(10)),
                                child: DropdownButton(
                                  padding: const EdgeInsets.all(5),
                                  borderRadius: BorderRadius.circular(10),
                                  hint: const Text("Local Unit"),
                                  value: dropdownlocalValue,
                                  items: [
                                    'Olonka',
                                    'Margarine-Cup',
                                    'Paint Rubber'
                                  ].map((String value) {
                                    return DropdownMenuItem(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownlocalValue = newValue!;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: size.width * 0.1,
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 224, 212, 212),
                                    borderRadius: BorderRadius.circular(10)),
                                child: DropdownButton(
                                  padding: const EdgeInsets.all(5),
                                  borderRadius: BorderRadius.circular(10),
                                  hint: const Text("Standard unit"),
                                  value: dropdownstandardValue,
                                  items: [
                                    'Kilogram(kg)',
                                    'Pound(lb)',
                                    'Gram(g)'
                                  ].map((String value) {
                                    return DropdownMenuItem(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownstandardValue = newValue!;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 224, 212, 212),
                                  borderRadius: BorderRadius.circular(5)),
                              width: size.width * 0.35,
                              alignment: Alignment.topLeft,
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  label: Text("Value"),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(width: 0.15)),
                                ),
                              ),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              alignment: Alignment.center,
                              child: FloatingActionButton.small(
                                backgroundColor:
                                    const Color.fromARGB(255, 190, 186, 186),
                                onPressed: () {},
                                child: Image.asset("assets/images/reverse.png"),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 224, 212, 212),
                                  borderRadius: BorderRadius.circular(5)),
                              width: size.width * 0.35,
                              alignment: Alignment.topLeft,
                              child: TextFormField(
                                style: TextField.materialMisspelledTextStyle,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  label: Text("Value"),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(width: 0.15)),
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
                        extendedPadding: const EdgeInsets.all(90),
                        onPressed: () {},
                        label: const Text(
                          'Calculate',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
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
              ],
            ),
          ),
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
