import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(
MaterialApp(
  theme: ThemeData(primaryColor: Colors.purple),
  debugShowCheckedModeBanner: false,
  home: HomeScreen()
)
);

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final urlimage1 = 'assets/default/Captures.JPG';
    final iconma = 'assets/default/apple.png';
    final iconma1 = 'assets/default/facebook.png';
    final iconma2 = 'assets/default/google.png';

    return Scaffold(
      backgroundColor: Color(0xFF6d60f8),
      body:  
      Container(
         width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:  [
            Image.asset(
              urlimage1,
              width: 170,
              height: 187,
              ),
              Container(
                height: 430,
                width: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        ' ',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text('            Email',
                           style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                           )
                          )
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        alignment: Alignment.centerLeft,
                        width: 413,
                        child: TextField(
                        ),
                      ),
                      Text(
                        ' ',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text('            Password',
                           style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                           )
                          )
                        ],
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        width: 413,
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            suffixIcon: Icon(FontAwesomeIcons.eyeSlash, size: 17,)
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                            },
                            child: Text(
                              'Forget your password?',
                              style: TextStyle(
                                color: Colors.black54,
                              ),
                            )
                          )
                        ],
                      ),
                      Text(
                        ' ',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        width: 300,
                        color: Color(0xff6ffca3c),
                        child: 
                        TextButton(onPressed: () {
                          
                        },
                         child:
                          Text('LogIn',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )
                          )
                        ),
                        ),
                      ),
                      Text(
                        ' ',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                      Text(
                        'Or',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Row(
                        children: [
                          Text('                                               '),
                          IconButton(
                           icon: Icon(Icons.g_mobiledata_rounded),
                           onPressed: () {
                             
                           },
                           iconSize: 45,
                           color: Colors.green,
                          ),
                          IconButton(
                           icon: Icon(Icons.apple),
                           onPressed: () {
                           },
                           iconSize: 30,
                           color: Colors.black,
                          ),
                          IconButton(
                           icon: Icon(Icons.facebook),
                           onPressed: () {
                           },
                           iconSize: 30,
                           color: Colors.blue,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account?"),
                          TextButton(
                            onPressed: () {
                            },
                             child: Text('Signup',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 10,
                          ),
                          ),
                          )
                        ],
                      )
                    ],
                  ),
              )
          ],
        ),
        ),
    );
  }
}