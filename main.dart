import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Color.fromARGB(255, 223, 196, 15)),
        home: Homescreen()
        );
  }
}

class Homescreen extends StatefulWidget {
  Homescreen({super.key});

   @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(79.0),
            child: Column(
              children: [
                //welcome back
                Text(
                  'Welcome back',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 25),

                //login to your account
                Text(
                  'login to your account',
                  style: TextStyle(
                    color: Color.fromARGB(255, 176, 182, 196),
                    fontSize: 45,
                  ),
                ),
                SizedBox(height: 25),

                //email textfield
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 76.0),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 2, 21, 37))),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 190, 186, 175)),
                      ),
                      fillColor: Color.fromARGB(255, 207, 192, 209),
                      filled: true,
                      hintText: 'email',
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 26, 27, 10),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),

                //password textfield
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 76.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 2, 21, 37))),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 202, 157, 7)),
                      ),
                      fillColor: Color.fromARGB(255, 216, 214, 200),
                      filled: true,
                      hintText: 'password',
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 25, 26, 24),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15), 
            
                //check box

                //remeber me
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 75.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                      value: _isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked = value ?? false;
                        });
                      },
                    ),
                    Text(
                      'Remember me?',
                      style: TextStyle(color: Color.fromARGB(255, 4, 5, 6)),
                    ),
                  ],
                ),
              ),
                      
                  


                //forgot password
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 75.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'forgot password?',
                        style:
                            TextStyle(color: Color.fromARGB(255, 12, 86, 160)),
                         
                      ),
                    ],
                  ),
                ),
                 SizedBox(height: 15), 
              MaterialButton(
                minWidth: double.infinity,
                onPressed: (){},
                child:Text('Login'),
                color: Colors.teal,
                textColor:Colors.white,
                ),

                const SizedBox(height: 15), 

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0)),
                  
                  Row(
                    children: [
                   Expanded(
                    child: Divider(thickness: 0.5,
                 color: Colors.grey[400],
                 ),
                  ),

                  
                  Expanded(
                    child: Divider(thickness: 0.5,
                 color: Colors.grey[400],
                 ),
                  ),
                    ],
                  ),
              ],
            ),
          ),
        ));
  }
}