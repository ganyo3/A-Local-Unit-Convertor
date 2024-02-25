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
  TextEditingController textEditingController = TextEditingController();
  var velocityEditingController = TextEditingController();
  var finalValue = TextEditingController();
  int initialValue = 0;
  int valueFinal = 0;
  String foodProduct = 'Gari';
  String localUnit = 'Olonka';
  String standardUnit = 'Kilogram(kg)';
  double value = 0;
  double convertedValue = 0;

  @override
  void initState() {
    super.initState();
    finalValue.addListener(() => setState(() {}));
  }

  String totalCalculated() {
    String sam = "";

    if (initialValue >= 0 && foodProduct == "Gari" && localUnit == "Olonka") {
      sam = (initialValue * 2.56).toString();
      finalValue.value = finalValue.value.copyWith(
        text: sam.toString(),
       );
      }
    else if (initialValue >= 0 && foodProduct == "Rice" && localUnit == "Olonka") {
      sam = (initialValue * 3.09).toString();
      finalValue.value = finalValue.value.copyWith(
        text: sam.toString(),
      );
    }
    else if (initialValue >= 0 && foodProduct == "Maize" && localUnit == "Olonka") {
      sam = (initialValue * 5.67).toString();
      finalValue.value = finalValue.value.copyWith(
        text: sam.toString(),
      );
    }
    else if (initialValue >= 0 && foodProduct == "Groundnut" && localUnit == "Olonka") {
      sam = (initialValue * 5.67).toString();
      finalValue.value = finalValue.value.copyWith(
        text: sam.toString(),
      );
    }
    else if (initialValue >= 0 && foodProduct == "Beans" && localUnit == "Olonka") {
      sam = (initialValue * 5.67).toString();
      finalValue.value = finalValue.value.copyWith(
        text: sam.toString(),
      );
    }
    else if (initialValue >= 0 && foodProduct == "Sugar" && localUnit == "Margarine-Cup") {
      sam = (initialValue * 5.67).toString();
      finalValue.value = finalValue.value.copyWith(
        text: sam.toString(),
      );
    }
    else if (initialValue >= 0 && foodProduct == "Salt" && localUnit == "Margarine-Cup") {
      sam = (initialValue * 5.67).toString();
      finalValue.value = finalValue.value.copyWith(
        text: sam.toString(),
      );
    }
    else if (initialValue >= 0 && foodProduct == "Onion" && localUnit == "Paint Rubber") {
      sam = (initialValue * 5.67).toString();
      finalValue.value = finalValue.value.copyWith(
        text: sam.toString(),
      );
    }
    else if (initialValue >= 0 && foodProduct == "Tomato" && localUnit == "Paint Rubber") {
      sam = (initialValue * 5.67).toString();
      finalValue.value = finalValue.value.copyWith(
        text: sam.toString(),
      );
    }
    else {
      finalValue.value = finalValue.value.copyWith(
        text: sam.toString(),
      );
    }
    return sam;
  }

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
                              value: foodProduct,
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
                                  foodProduct = newValue!;
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
                                  value: localUnit,
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
                                      localUnit = newValue!;
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
                                  value: standardUnit,
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
                                      standardUnit = newValue!;
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
                                controller: textEditingController,
                                onChanged: (textEditingController) {
                                  setState(() {
                                    initialValue = int.parse(
                                        textEditingController.toString());
                                  });
                                },
                                onTap: () {
                                  setState(() {
                                    textEditingController.clear();
                                  });
                                },
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
                                key: Key(totalCalculated()),
                                controller: finalValue,
                                onChanged: (value) {
                                  setState(() {
                                    finalValue.value =
                                        finalValue.value.copyWith(
                                      text: value.toString(),
                                    );
                                  });
                                },
                                onTap: () {
                                  setState(() {
                                    finalValue.clear();
                                    finalValue.value =
                                        finalValue.value.copyWith(
                                      text: '',
                                    );
                                  });
                                },
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  // label: Text("Value"),
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
