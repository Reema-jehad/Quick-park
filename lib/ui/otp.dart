import 'package:flutter/material.dart';
import 'package:quick_park/ui/resetPage.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F2FF),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
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
                          AssetImage('assets/Screenshot 2023-11-17 174540.png'),
                      radius: 40,
                    ),
                  ))
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              "OTP Authentication",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            const SizedBox(height: 7),
            Text(
              "An authentication code has been send to you",
              style: TextStyle(fontSize: 12, color: Colors.grey[600]),
            ),
            const SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: _textFieldOTP(first: true, last: false)),
                      Expanded(child: _textFieldOTP(first: false, last: false)),
                      Expanded(child: _textFieldOTP(first: false, last: false)),
                      Expanded(child: _textFieldOTP(first: false, last: true)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("I didn't receive code."),
                      TextButton(
                        onPressed: () {},
                        child: const Text("Resend Code",
                            style: TextStyle(
                              color: Color(0xffA990E1),
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 72,
                  ),
                  SizedBox(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const reset()),
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
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
                        child: Text(
                          'Next',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _textFieldOTP({required bool first, last}) {
    return SizedBox(
      height: 85,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.isEmpty && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: const Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 2, color: Colors.black12),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 2, color: Colors.purple),
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
}
