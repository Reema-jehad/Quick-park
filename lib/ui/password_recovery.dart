import 'package:flutter/material.dart';
import 'package:quick_park/ui/login.dart';
import 'package:quick_park/ui/otp.dart';

class Password_recovery extends StatelessWidget {
  const Password_recovery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F2FF),
      body: Form(
        // key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/Screenshot 2023-11-17 174511.png'),
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.topCenter),
                    ),
                    height: 220,
                  ),
                    const Center(
                      child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 130, 0, 0),
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/Screenshot 2024-01-31 090813.png'),
                      radius: 40,
                    ),
                  ))
                ],
              ),
              const SizedBox(height: 30),
              const Text(
                "Password Recovery",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 7),
              Text(
                "Enter your phone number to recover your password",
                style: TextStyle(fontSize: 12, color: Colors.grey[600]),
              ),
              const SizedBox(height: 70),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: TextFormField(
                  // controller: _controllerUsername,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: '+966 ',
                    hintText: 'Phone Number',
                    fillColor: const Color(0xffcdb467),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 140),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Otp()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffA990E1),
                  // minimumSize: const Size.fromHeight(50),
                  // shadowColor: ,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  'Send Code',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const login()),
                  );
                },
                child: const Text(
                  "Already have an account? Login Here",
                  style: TextStyle(
                    color: Color(0xffA990E1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
