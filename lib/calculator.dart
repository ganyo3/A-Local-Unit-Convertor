import "package:flutter/material.dart";

 TextEditingController textEditingController = TextEditingController();
  var velocityEditingController = TextEditingController();
  var finalValue = TextEditingController();
  int initialValue = 0;
  int valueFinal = 0;
   double value = 0;
  double convertedValue = 0;


String totalCalculated() {
  String sam = "";

  String dropdownValue = "";
  if (initialValue >= 0 && dropdownValue == "Gari") {
    sam = (initialValue * 2.56).toString();
    finalValue.value = finalValue.value.copyWith(
      text: sam.toString(),
    );
  } else if (initialValue >= 0 && dropdownValue == "Rice") {
    sam = (initialValue * 3.09).toString();
    finalValue.value = finalValue.value.copyWith(
      text: sam.toString(),
    );
  } else if (initialValue >= 0 && dropdownValue == "Maize") {
    sam = (initialValue * 5.67).toString();
    finalValue.value = finalValue.value.copyWith(
      text: sam.toString(),
    );
  } else if (initialValue >= 0 && dropdownValue == "Groundnut") {
    sam = (initialValue * 5.67).toString();
    finalValue.value = finalValue.value.copyWith(
      text: sam.toString(),
    );
  } else if (initialValue >= 0 && dropdownValue == "Beans") {
    sam = (initialValue * 5.67).toString();
    finalValue.value = finalValue.value.copyWith(
      text: sam.toString(),
    );
  } else if (initialValue >= 0 && dropdownValue == "Sugar") {
    sam = (initialValue * 5.67).toString();
    finalValue.value = finalValue.value.copyWith(
      text: sam.toString(),
    );
  } else if (initialValue >= 0 && dropdownValue == "Salt") {
    sam = (initialValue * 5.67).toString();
    finalValue.value = finalValue.value.copyWith(
      text: sam.toString(),
    );
  } else if (initialValue >= 0 && dropdownValue == "Onion") {
    sam = (initialValue * 5.67).toString();
    finalValue.value = finalValue.value.copyWith(
      text: sam.toString(),
    );
  } else if (initialValue >= 0 && dropdownValue == "Tomato") {
    sam = (initialValue * 5.67).toString();
    finalValue.value = finalValue.value.copyWith(
      text: sam.toString(),
    );
  }
  return sam;
}
