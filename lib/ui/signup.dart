
import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  final FocusNode _focusNodeEmail = FocusNode();
  final FocusNode _focusNodePassword = FocusNode();
  final FocusNode _focusNodeConfirmPassword = FocusNode();
  final TextEditingController _controllerUsername = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  final TextEditingController _controllerConFirmPassword =
      TextEditingController();

  // final Box _boxAccounts = Hive.box("accounts");
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F2FF),
      body: Form(
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
              const SizedBox(height: 10),
              const Text(
                "Let's Sign You In",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 7),
              Text(
                "Welcome to Quick Park",
                style: TextStyle(fontSize: 12, color: Colors.grey[600]),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: TextFormField(
                  controller: _controllerUsername,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: "Name",
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
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter username.";
                    }
                    // } else if (_boxAccounts.containsKey(value)) {
                    //   return "Username is already registered.";
                    // }

                    return null;
                  },
                  onEditingComplete: () => _focusNodeEmail.requestFocus(),
                ),
              ),
              const SizedBox(height: 10),
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
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter username.";
                    }
                    // } else if (_boxAccounts.containsKey(value)) {
                    //   return "Username is already registered.";
                    // }

                    return null;
                  },
                  onEditingComplete: () => _focusNodeEmail.requestFocus(),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: TextFormField(
                  controller: _controllerEmail,
                  focusNode: _focusNodeEmail,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email",
                    // prefixIcon: const Icon(),
                    prefixIcon: const Icon(
                      Icons.email,
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
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter email.";
                    } else if (!(value.contains('@') && value.contains('.'))) {
                      return "Invalid email";
                    }
                    return null;
                  },
                  onEditingComplete: () => _focusNodePassword.requestFocus(),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: TextFormField(
                  // controller: _controllerEmail,
                  // focusNode: _focusNodeEmail,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    // prefixIcon: const Icon(),
                    prefixIcon: const Icon(
                      Icons.phone,
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
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: TextFormField(
                  controller: _controllerPassword,
                  obscureText: _obscurePassword,
                  focusNode: _focusNodePassword,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    labelText: "Password",
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
                  onEditingComplete: () =>
                      _focusNodeConfirmPassword.requestFocus(),
                ),
              ),
              const SizedBox(height: 10),
              // Padding(
              //   padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              //   child: TextFormField(
              //     controller: _controllerConFirmPassword,
              //     obscureText: _obscurePassword,
              //     focusNode: _focusNodeConfirmPassword,
              //     keyboardType: TextInputType.visiblePassword,
              //     decoration: InputDecoration(
              //       labelText: "Confirm Password",
              //       prefixIcon:
              //           const Icon(Icons.lock, color: Color(0xffA990E1)),
              //       suffixIcon: IconButton(
              //           onPressed: () {
              //             setState(() {
              //               _obscurePassword = !_obscurePassword;
              //             });
              //           },
              //           icon: _obscurePassword
              //               ? const Icon(Icons.visibility_outlined)
              //               : const Icon(Icons.visibility_off_outlined)),
              //       fillColor: Color(0xffcdb467),
              //       border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(100),
              //       ),
              //     ),
              //     validator: (String? value) {
              //       if (value == null || value.isEmpty) {
              //         return "Please enter password.";
              //       } else if (value != _controllerPassword.text) {
              //         return "Password doesn't match.";
              //       }
              //       return null;
              //     },
              //   ),
              // ),
              const SizedBox(height: 20),
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
                      if (_formKey.currentState?.validate() ?? false) {
                        // _boxAccounts.put(
                        //   _controllerUsername.text,
                        //   _controllerConFirmPassword.text,
                        // );
                        // FirebaseAuth
                        // FirebaseAuth.instance.createUserWithEmailAndPassword(
                        //     email: _em, password: password);

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            width: 200,
                            backgroundColor:
                                Theme.of(context).colorScheme.secondary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            behavior: SnackBarBehavior.floating,
                            content: const Text("Registered Successfully"),
                          ),
                        );

                        _formKey.currentState?.reset();

                        Navigator.pop(context);
                      }
                    },
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
                      child: Text("Register"),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account?"),
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text("Login",
                            style: TextStyle(
                              color: Color(0xffA990E1),
                            )),
                      ),
                      
                    ],
                  ),
                  SizedBox(height: 20,)
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
    _focusNodeEmail.dispose();
    _focusNodePassword.dispose();
    _focusNodeConfirmPassword.dispose();
    _controllerUsername.dispose();
    _controllerEmail.dispose();
    _controllerPassword.dispose();
    _controllerConFirmPassword.dispose();
    super.dispose();
  }
}
