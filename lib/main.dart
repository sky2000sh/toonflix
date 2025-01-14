// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toonflix/screens/home_screen1.dart';
import 'package:toonflix/screens/toonflix_home_screen.dart';
import 'package:toonflix/services/api_service.dart';
import 'package:toonflix/widgets/Button.dart';
import 'package:toonflix/widgets/currency_card.dart';

class Player {
  String name;

  Player(this.name);
}

void main() {
  ApiService().getTodaysToons();
  runApp(const App());
}

// class App extends StatelessWidget {
//   const App({super.key});

//   //const App({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // CupertinoApp() : ios style
//     // MaterialApp() : google style
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: const Color(0xFF181818),
//         // Colors.black,
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             //EdgeInsets.all(10)
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const SizedBox(
//                   height: 80,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         const Text(
//                           'Hey, Selena',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 28,
//                             fontWeight: FontWeight.w800,
//                           ),
//                         ),
//                         Text(
//                           'Welcome back',
//                           style: TextStyle(
//                             color: Colors.white.withOpacity(0.8),
//                             fontSize: 18,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),

//                 // Total Balance 부분의 SizedBOx
//                 const SizedBox(
//                   height: 70,
//                 ),
//                 Text(
//                   'Total Balance',
//                   style: TextStyle(
//                     color: Colors.white.withOpacity(0.8),
//                     fontSize: 22,
//                   ),
//                 ),

//                 // 금액 부분의 SizedBOx
//                 const SizedBox(
//                   height: 5,
//                 ),
//                 const Text(
//                   '\$5 194 482',
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 48,
//                       fontWeight: FontWeight.w600),
//                 ),

//                 // Transfer/Request 부분의 SizedBOx
//                 // Transfer/Request 부분을 컨테이너 처리를 통해 div처럼 만들기
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 const Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Button(
//                       text: 'Transfer',
//                       bgColor: Color(0xFFF1B33B),
//                       textColor: Colors.black,
//                     ),
//                     Button(
//                       text: 'Request',
//                       bgColor: Color(0xFF1F2123),
//                       textColor: Colors.white,
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 100,
//                 ),
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     const Text(
//                       'Wallets',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 36,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                     Text(
//                       'View All',
//                       style: TextStyle(
//                         color: Colors.white.withOpacity(0.8),
//                         fontSize: 18,
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 const CurrencyCard(
//                   name: 'Euro',
//                   code: 'EUR',
//                   amount: '6 428',
//                   icon: Icons.euro_rounded,
//                   //isInverted: false,
//                   //offset: 0,
//                   order: 1,
//                 ),
//                 const CurrencyCard(
//                   name: 'Bitcoin',
//                   code: 'BTC',
//                   amount: '9 785',
//                   icon: Icons.currency_bitcoin,
//                   //isInverted: true,
//                   //offset: -20,
//                   order: 2,
//                 ),
//                 const CurrencyCard(
//                   name: 'Dollar',
//                   code: 'USD',
//                   amount: '428',
//                   icon: Icons.attach_money_outlined,
//                   //isInverted: false,
//                   //offset: -40,
//                   order: 3,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// 20250107
// class App extends StatefulWidget {
//   const App({super.key});

//   @override
//   State<App> createState() => _AppState();
// }

// class _AppState extends State<App> {
//   // // int counter = 0;
//   // List<int> numbers = [];

//   // void onClicked() {
//   //   // 동적인 역할을 해줄 때는, 데이터의 변화를 위해서.
//   //   // setState함수를 통해 build 메서드가 동작된다. = 기본적으로 build 메서드를 한 번 더 호출하는 역할을 한다.
//   //   setState(() {
//   //     // counter += 1;
//   //     numbers.add(numbers.length);
//   //     print('here's numbers :', numbers);
//   //   });
//   // }

//   bool showTitle = true;

//   void toggleTitle() {
//     setState(() {
//       showTitle = !showTitle;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         theme: ThemeData(
//           textTheme: const TextTheme(
//             titleLarge: TextStyle(
//               color: Colors.red,
//             ),
//           ),
//         ),
//         home: Scaffold(
//           backgroundColor: const Color(0xFFF4EDDB),
//           body: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 showTitle
//                     ? const MyLargeTitle()
//                     : const Text('Nothing to show!'),
//                 IconButton(
//                   onPressed: toggleTitle,
//                   icon: const Icon(Icons.remove_red_eye),
//                 ),
//                 // Text(
//                 //   '$counter',
//                 //   style: const TextStyle(fontSize: 30),
//                 // ),
//                 // for (var n in numbers) Text('$n'),
//                 // IconButton(
//                 //   iconSize: 40,
//                 //   onPressed: onClicked,
//                 //   icon: const Icon(Icons.add_box_rounded),
//                 // ),
//               ],
//             ),
//           ),
//         ));
//   }
// }

// class MyLargeTitle extends StatefulWidget {
//   const MyLargeTitle({
//     super.key,
//   });

//   @override
//   State<MyLargeTitle> createState() => _MyLargeTitleState();
// }

// class _MyLargeTitleState extends State<MyLargeTitle> {
//   @override
//   void initState() {
//     super.initState();
//     print('initState');
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     print('dispose');
//   }

//   @override
//   Widget build(BuildContext context) {
//     print('build');
//     return const Text(
//       'My Large Title',
//       style: TextStyle(
//         fontSize: 30,
//         // color: Theme.of(
//         //   context.textTheme.titleLarge?.color,
//         // ),
//       ),
//     );
//   }

// 20250109
// class App extends StatelessWidget {
//   const App({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//           scaffoldBackgroundColor: const Color(0xFFF7626C),
//           textTheme: const TextTheme(
//             // headlineLarge
//             displayLarge: TextStyle(
//               color: Color(0xFF232B55),
//             ),
//           ),
//           cardColor: const Color(0xFFF4EDDB)),
//       home: const HomeScreen1(),
//     );
//   }
// }

// 20250114
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ToonflixHomeScreen(),
    );
  }
}
