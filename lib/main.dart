import 'package:flutter/material.dart';

import 'package:login_page/UI/CustomInputField.dart';

void main() {
  runApp(MaterialApp(
    title: 'Login App',
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue,
        child: Stack(children: [
          Align(
            alignment: Alignment.bottomRight,
            widthFactor: 0.5,
            heightFactor: 0.5,
            child: Material(
              borderRadius: BorderRadius.all(Radius.circular(250)),
              color: Color.fromARGB(255, 78, 135, 234),
              child: Container(
                width: 400,
                height: 400,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 200,
            child: Material(
              borderRadius: BorderRadius.all(Radius.circular(200)),
              color: Color.fromARGB(255, 78, 135, 234),
              child: Container(
                width: 400,
                height: 400,
              ),
            ),
          ),
          Center(
            child: Container(
              width: 400,
              height: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Material(
                    color: Colors.blue,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                          'images/WhatsApp Image 2022-02-05 at 4.34.45 PM.jpg'),
                    ),
                  ),
                  CustomInputField(
                      Icon(Icons.person, color: Colors.white), 'USERNAME'),
                  CustomInputField(
                      Icon(Icons.lock, color: Colors.white), 'PASSWORD'),
                  Container(
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.deepOrange),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)))),
                      ),
                      child: Text(
                        'login',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
