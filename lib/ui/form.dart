import 'package:flutter/material.dart';

class form extends StatefulWidget {
  const form({super.key});

  @override
  _formState createState() => _formState();
}

class _formState extends State<form> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf6f2ff),
      appBar: AppBar(
        // leading: Container(
        //   width: 30, // Adjust width to control size
        //   height: 30, // Adjust height to control size
        //   padding: EdgeInsets.all(4),
        //   decoration: BoxDecoration(
        //     color: Color(0xFFcfb8ff), // Background color
        //     borderRadius: BorderRadius.circular(50.0), // Border radius
        //     border: Border.all(
        //         color: Color(0xFF2a2b2c), width: 1.0), // Border color
        //   ),
        //   child: IconButton(
        //     icon:
        //         Icon(Icons.arrow_back, color: Color(0xFFe3d5ff)), // Icon color
        //     onPressed: () => Navigator.of(context).pop(),
        //   ),
        // ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Support',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Color(0xfff6f2ff),
        shadowColor: Colors.transparent,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/formImage2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              _top(),
              _body(),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffA990E1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(16, 7, 16, 7),
                  child: Text("Send"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 80.5,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(0, 137, 89, 232)
                          .withOpacity(0.80),
                      blurRadius: 4,
                      spreadRadius: -2,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircularButton(
                      image: 'assets/user1.png',
                      shadowColor: const Color(0x00e3d5ff).withOpacity(0.75),
                    ),
                    CircularButton(
                      image: 'assets/home1.png',
                      shadowColor: const Color(0x00e3d5ff).withOpacity(0.75),
                    ),
                    CircularButton(
                      image: 'assets/robotic1.png',
                      shadowColor: const Color(0x00e3d5ff).withOpacity(0.75),
                      borderColor: const Color.fromARGB(
                          255, 174, 73, 231), // Border color as #AE49E7
                      borderWidth: 2.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _top() {
    return Container(
      padding: const EdgeInsets.only(top: 30, left: 30),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }

  Widget _body() {
    return Expanded(
      flex: 4,
      child: Container(
        padding: const EdgeInsets.only(left: 5, right: 5, top: 0, bottom: 0),
        margin: const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 0),
        width: double.infinity,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            color: Color(0xfff4f5f7),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 196, 194, 194),
                spreadRadius: 0,
                blurRadius: 4,
                offset: Offset(0, 4),
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ':Form',
                textDirection: TextDirection.rtl,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 196, 194, 194),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(0, 3),
                      )
                    ]),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: "..................................",
                    labelStyle:
                        TextStyle(color: Colors.grey), // Grey label text
                    filled: true,
                    fillColor: Color(0xfff4f5f7),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ), // Adjust padding here
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 225, 223, 223),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          color: Colors.blue), // Change color as needed
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                  // onEditingComplete: () =>
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                ':Title',
                textDirection: TextDirection.rtl,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 196, 194, 194),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(0, 3),
                      )
                    ]),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: "..................................",
                    labelStyle:
                        TextStyle(color: Colors.grey), // Grey label text
                    filled: true,
                    fillColor: Color(0xfff4f5f7),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ), // Adjust padding here
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 225, 223, 223),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          color: Colors.blue), // Change color as needed
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                  // onEditingComplete: () =>
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                ':Message',
                textDirection: TextDirection.rtl,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 196, 194, 194),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(0, 3),
                      )
                    ]),
                child: TextFormField(
                  minLines:
                      2, 
                  keyboardType: TextInputType.multiline,
                  maxLines: 3,
                  // keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: "..................................",
                    labelStyle:
                        TextStyle(color: Colors.grey), // Grey label text
                    filled: true,
                    fillColor: Color(0xfff4f5f7),
                    // contentPadding: EdgeInsets.symmetric(
                    //     horizontal: 20.0, vertical: 35), // Adjust padding here
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 225, 223, 223),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          color: Colors.blue), // Change color as needed
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                  // onEditingComplete: () =>
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // 0 = Send
  // 1 = Recieved
  _itemChat({required int chat, required String avatar, message, time}) {
    return Row(
      mainAxisAlignment:
          chat == 0 ? MainAxisAlignment.end : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        avatar != null
            ? Avatar(
                image: avatar,
                size: 50,
              )
            : Text(
                '$time',
                style: TextStyle(color: Colors.grey.shade400),
              ),
        Flexible(
          child: Container(
            margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: chat == 0 ? Colors.indigo.shade100 : Colors.indigo.shade50,
              borderRadius: chat == 0
                  ? const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    )
                  : const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
            ),
            child: Text('$message'),
          ),
        ),
        chat == 1
            ? Text(
                '$time',
                style: TextStyle(color: Colors.grey.shade400),
              )
            : const SizedBox(),
      ],
    );
  }

  Widget _formChat() {
    return Positioned(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 120,
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          color: Colors.white,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Type your message...',
              suffixIcon: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.indigo),
                padding: const EdgeInsets.all(14),
                child: const Icon(
                  Icons.send_rounded,
                  color: Colors.white,
                  size: 28,
                ),
              ),
              filled: true,
              fillColor: Colors.blueGrey[50],
              labelStyle: const TextStyle(fontSize: 12),
              contentPadding: const EdgeInsets.all(20),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blueGrey),
                borderRadius: BorderRadius.circular(25),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blueGrey),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Avatar extends StatelessWidget {
  final double size;
  final image;
  final EdgeInsets margin;
  const Avatar(
      {super.key,
      this.image,
      this.size = 50,
      this.margin = const EdgeInsets.all(0)});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}

class ProfileTextField extends StatelessWidget {
  final TextEditingController controller;
  final ImageProvider<Object> image;
  final String hintText;

  const ProfileTextField({
    super.key,
    required this.controller,
    required this.image,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: Colors.white.withOpacity(0.7),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          const SizedBox(width: 16),
          Image(
              image: image,
              width: 24,
              height: 24,
              color: const Color.fromRGBO(174, 73, 231, 1)),
          const SizedBox(width: 16),
          Expanded(
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none,
              ),
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}

class CircularButton extends StatelessWidget {
  final String image;
  final Color shadowColor;
  final Color borderColor;
  final double borderWidth;

  const CircularButton({
    super.key,
    required this.image,
    required this.shadowColor,
    this.borderColor = Colors.transparent,
    this.borderWidth = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 58,
      height: 57,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(0.7),
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
      ),
      child: IconButton(
        icon: Image.asset(image),
        onPressed: () {},
      ),
    );
  }
}
