import 'package:flutter/material.dart';
import 'package:quick_park/ui/login.dart';

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xffA990E1)),
              ),
              child: IconButton(
                // onPressed: () {
                // _boxLogin.clear();
                // _boxLogin.put("loginStatus", false);
                // Navigator.pushReplacement(
                //   context,
                // );
                // },
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const login()),
                  );
                },
                icon: const Icon(
                  Icons.logout_rounded,
                  color: Color(0xffA990E1),
                ),
              ),
            ),
          )
        ],
      ),
      body: const Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/Screenshot 2024-01-31 083158.png'),
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
