// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Player {
  String name;

  Player(this.name);
}

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  //const App({super.key});

  @override
  Widget build(BuildContext context) {
    // CupertinoApp() : ios style
    // MaterialApp() : google style
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        // Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          //EdgeInsets.all(10)
          child :Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height:80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children:[
                      const Text('Hey, Selena',
                        style: TextStyle(
                          color:Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                          ),
                      ),
                      Text('Welcome back',
                        style: TextStyle(
                          color:Colors.white.withOpacity(0.8),
                          fontSize: 18,
                        ),
                      ),
                    ],
                ),
              ],
              ),
              
              // Total Balance 부분의 SizedBOx
              const SizedBox(
                height: 120,
              ),
              Text('Total Balance',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 22,
                ),
              ),

              // 금액 부분의 SizedBOx
              const SizedBox(
                height: 5,
              ),
              const Text('\$5 194 482',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.w600
                ),
              ),

              // Transfer 부분의 SizedBOx
              // Transfer 부분을 컨테이너 처리를 통해 div처럼 만들기
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(45),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 50,
                      ),
                      child: Text('Transfer',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

