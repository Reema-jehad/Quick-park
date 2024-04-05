import 'package:flutter/material.dart';
import 'package:quick_park/ui/login.dart';

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
    // @override
  // void initState() {
  //   super.initState();
  //   Future.delayed(const Duration(seconds: 2), () {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(builder: (context) => const login()),
  //     );
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      body: const Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/parking-Icon.png'),
              // width: ,
            ),
            SizedBox(height: 10),
            // Text(
            //   // _boxLogin.get("userName"),
            //   // style: Theme.of(context).textTheme.headlineLarge,
            // ),
          ],
        ),
      ),
    );
  }
}
