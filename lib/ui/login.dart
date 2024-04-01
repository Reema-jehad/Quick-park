// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quick_park/ui/password_recovery.dart';
import 'package:quick_park/ui/signup.dart';
import 'package:quick_park/ui/success.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  final FocusNode _focusNodePassword = FocusNode();
  final TextEditingController _controllerUsername = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  // Future signIn() async {
  //   await FirebaseAuth.instance.signInWithEmailAndPassword(
  //     email: _controllerUsername.text.trim(),
  //     password: _controllerPassword.text.trim(),
  //   );
  // }

  bool _obscurePassword = true;
  // final Box _boxLogin = Hive.box("login");
  // final Box _boxAccounts = Hive.box("accounts");

  @override
  Widget build(BuildContext context) {
    // if (_boxLogin.get("loginStatus") ?? false) {
    //   return Home();
    // }

    return Scaffold(
      backgroundColor: const Color(0xffF6F2FF),
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
                              'assets/Screenshot 2023-11-17 174511.png'),
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.topCenter),
                    ),
                    height: 210,
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
              Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: const Text(
                      "Log in",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                  const SizedBox(height: 7),
                  Text(
                    "Welcome to Quick Park",
                    style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: TextFormField(
                      controller: _controllerUsername,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: "Username",
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Color(0xffA990E1),
                        ),
                        fillColor: const Color(0xffcdb467),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),

                        // enabledBorder: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(100),
                        // ),
                      ),
                      onEditingComplete: () =>
                          _focusNodePassword.requestFocus(),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter username.";
                          // } else if (!_boxAccounts.containsKey(value)) {
                          // return "Username is not registered.";
                        }

                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: TextFormField(
                      controller: _controllerPassword,
                      focusNode: _focusNodePassword,
                      obscureText: _obscurePassword,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        labelText: "Password",
                        prefixIcon: const Icon(
                          Icons.lock_outline,
                          color: Color(0xffA990E1),
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _obscurePassword = !_obscurePassword;
                              });
                            },
                            icon: _obscurePassword
                                ? const Icon(Icons.visibility_off_outlined)
                                : const Icon(Icons.visibility_outlined)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        // enabledBorder: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(100),
                        // ),
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter password.";
                        }
                        // } else if (value !=
                        //     _boxAccounts.get(_controllerUsername.text)) {
                        //   return "Wrong password.";
                        // }

                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            _formKey.currentState?.reset();

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Password_recovery()),
                            );
                          },
                          child: const Text("Forget ?",
                              style: TextStyle(
                                color: Colors.black,
                              )),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 60),
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
                          // if (_formKey.currentState?.validate() ?? false) {
                          // _boxLogin.put("loginStatus", true);
                          // _boxLogin.put("userName", _controllerUsername.text);

                          // Navigator.pushReplacement(
                          //   context,
                          //   // MaterialPageRoute(
                          //   //   // builder: (context) {
                          //   //   //   // return Home();
                          //   //   // },
                          //   // ),
                          // );
                          // }
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have an account?"),
                          TextButton(
                            onPressed: () {
                              _formKey.currentState?.reset();

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const signup()),
                              );
                            },
                            child: const Text("Signup",
                                style: TextStyle(
                                  color: Color(0xffA990E1),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )
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
