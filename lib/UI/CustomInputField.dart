import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomInputField extends StatelessWidget {
  Icon fieldIcon;
  String hintText;

  CustomInputField(this.fieldIcon, this.hintText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      child: Material(
          elevation: 5,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.deepOrange,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: fieldIcon,
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0))),
                  width: 200,
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: hintText,
                          fillColor: Colors.white,
                          filled: true),
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ))
            ],
          )),
    );
  }
}
