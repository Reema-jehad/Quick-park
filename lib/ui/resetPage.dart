import 'package:flutter/material.dart';
import 'package:quick_park/ui/success.dart';

class reset extends StatefulWidget {
  const reset({Key? key}) : super(key: key);

  @override
  State<reset> createState() => _resetState();
}

class _resetState extends State<reset> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  final FocusNode _focusNodePassword = FocusNode();
  final TextEditingController _controllerUsername = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  bool _obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Container(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/upper-image.png'),
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
                          AssetImage('assets/password-lock.png'),
                      radius: 40,
                    ),
                  ))
                ],
              ),
              const SizedBox(height: 30),
              const Text(
                "Reset your password",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 7),
              Text(
                "At least 8 characters, with uppercase and lowercase letters",
                style: TextStyle(fontSize: 12, color: Colors.grey[600]),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: TextFormField(
                  controller: _controllerPassword,
                  obscureText: _obscurePassword,
                  focusNode: _focusNodePassword,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    labelText: "New Password",
                    prefixIcon:
                        const Icon(Icons.lock, color: Color(0xffA990E1)),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                        icon: _obscurePassword
                            ? const Icon(Icons.visibility_outlined)
                            : const Icon(Icons.visibility_off_outlined)),
                    fillColor: const Color(0xffcdb467),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter password.";
                    } else if (value.length < 8) {
                      return "Password must be at least 8 character.";
                    }
                    return null;
                  },
                  // onEditingComplete: () =>
                  // _focusNodeConfirmPassword.requestFocus(),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: TextFormField(
                  // controller: _controllerConFirmPassword,
                  obscureText: _obscurePassword,
                  // focusNode: _focusNodeConfirmPassword,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    labelText: "Confirm Password",
                    prefixIcon:
                        const Icon(Icons.lock, color: Color(0xffA990E1)),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                        icon: _obscurePassword
                            ? const Icon(Icons.visibility_outlined)
                            : const Icon(Icons.visibility_off_outlined)),
                    fillColor: const Color(0xffcdb467),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter password.";
                    } else if (value != _controllerPassword.text) {
                      return "Password doesn't match.";
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 90),
              Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffA990E1),
                      // minimumSize: const Size.fromHeight(50),
                      // shadowColor: ,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Success()),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
                      child: Text("Log in"),
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

  @override
  void dispose() {
    _focusNodePassword.dispose();
    _controllerUsername.dispose();
    _controllerPassword.dispose();
    super.dispose();
  }
}
