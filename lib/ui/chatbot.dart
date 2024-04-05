import 'package:flutter/material.dart';
import 'package:quick_park/ui/chatbot1.dart';

class Chatbot extends StatefulWidget {
  const Chatbot({super.key});

  @override
  _ChatbotState createState() => _ChatbotState();
}

class _ChatbotState extends State<Chatbot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf6f2ff),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xffc582ee)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Support',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: const Color(0xfff6f2ff),
        shadowColor: Colors.transparent,
        actions: [
          IconButton(
            icon:
                const Icon(Icons.message_outlined, color: Color(0xffc582ee)), // Message icon
            onPressed: () {
              // Handle message icon press
            },
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/chatbotImage.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              _top(),
              _body(),
              _bodyBotton(),
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
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x00e3d5ff).withOpacity(0.75),
                              blurRadius: 5,
                              spreadRadius: 3,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.resolveWith<Color>(
                                    (states) {
                              return Colors.transparent;
                            }),
                          ),
                          child: Image(
                            image: AssetImage('assets/user1.png'),
                            width: 40, // Adjust the width of the image
                            height: 52,
                          ),
                          // style: ButtonStyle(shadowColor:,),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x00e3d5ff).withOpacity(0.75),
                              blurRadius: 5,
                              spreadRadius: 3,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.resolveWith<Color>(
                                    (states) {
                              return Colors.transparent;
                            }),
                          ),
                          child: Image(
                            image: AssetImage('assets/home1.png'),
                            width: 40, // Adjust the width of the image
                            height: 52,
                          ),
                          // style: ButtonStyle(shadowColor:,),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x00e3d5ff).withOpacity(0.75),
                              blurRadius: 5,
                              spreadRadius: 3,
                              offset: Offset(0, 4),
                            ),
                          ],
                          border: Border.all(color: Color.fromARGB(255, 174, 73, 231),)
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Chatbot1()),
                            );
                          },
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.resolveWith<Color>(
                                    (states) {
                              return Colors.transparent;
                            }),
                          ),
                          child: Image(
                            image: AssetImage('assets/robotic1.png'),
                            width: 35, 
                            height: 52,
                          ),
                          // style: ButtonStyle(shadowColor:,),
                        ),
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
      padding: const EdgeInsets.only(top: 23, left: 30),
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
        padding: const EdgeInsets.only(left: 5, right: 5, top: 0, bottom: 5),
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
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            _itemChat(
              chat: 0,
              message: 'How can i save my location',
              time: '18.00',
              avatar: 'assets/user1.png',
            ),
            _itemChat(
              avatar: 'assets/avatar.png',
              chat: 1,
              message:
                  'you can press where you parked and it will show you the saved button, 😀',
              time: '18.00',
            ),
            _itemChat(
              chat: 0,
              message: 'thank you ',
              time: '18.00',
              avatar: 'assets/user1.png',
            ),
            _itemChat(
              avatar: 'assets/avatar.png',
              chat: 1,
              message: 'Anytime',
              time: '18.00',
            ),
          ],
        ),
      ),
    );
  }

  Widget _bodyBotton() {
    return Expanded(
      flex: 1,
      child: Container(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
          margin:
              const EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 35),
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
          child: const Row(
            children: [
              Text(
                'Talk to Parkie',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              SizedBox(
                width: 130,
              ),
              Icon(
                Icons.arrow_circle_right,
                color: Color(0xffcfb8ff),
              ),
            ],
          )),
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
                size: 20,
              )
            : Text(
                '$time',
                style: TextStyle(
                  color: Colors.grey.shade400,
                ),
              ),

        Flexible(
          child: Container(
            margin: const EdgeInsets.only(left: 10, right: 10, top: 15),
            padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 4),
            decoration: BoxDecoration(
                // color: chat == 0 ? Colors.indigo.shade100 : Colors.indigo.shade50,
                color: Color(0xfff4f5f7),
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
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 196, 194, 194),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: Offset(0, 4),
                  )
                ]),
            child: Text('$message'),
          ),
        ),
        // chat == 1
        // ? Text(
        //     '$time',
        //     style: TextStyle(color: Colors.grey.shade400),
        //   )
        // : const SizedBox(),
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
