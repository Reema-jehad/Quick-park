import 'package:flutter/material.dart';
import 'package:quick_park/ui/Parking.dart';

class Success extends StatelessWidget {
  const Success({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F2FF),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 150, 10, 20),
        child: Column(
          children: [
            const Image(
              image: AssetImage('assets/successfully.png'),
              fit: BoxFit.fitWidth,
            ),
            const SizedBox(
              height: 80,
            ),
            FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Parking()),
                          ),
                child: const Icon(Icons.house_outlined,
                    color: Color(0xffbca6e6), size: 40)),
          ],
        ),
      ),
    );
  }
}
