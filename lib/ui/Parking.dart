import 'package:flutter/material.dart';
import 'package:quick_park/ui/chatbot.dart';
import 'package:quick_park/ui/chatbot1.dart';
import 'package:quick_park/ui/password_recovery.dart';
import 'package:quick_park/widgets/park_block.dart';

const kdark = Color(0xFF21242A);
const klightYellow = Color(0xFFFEEB83);
const kpurple = Color(0xffA990E1);

class Parking extends StatefulWidget {
  const Parking({super.key});

  // const Parking({Key? key, required this.image}) : super(key: key);

  @override
  _ParkingState createState() => _ParkingState();
  // final ParkingProvider<Object> image;
}

class _ParkingState extends State<Parking> {
  // final auth = FirebaseAuth.instance;
  // late User loggedInUser;
  // final firestore = FirebaseFirestore.instance;
  // 0 indicates filled space and 1 indicates empty space
  List<int> list = List.filled(65, 0);
  List<String> index = [];
  // late StreamSubscription<QuerySnapshot> streamSub;

  @override
  // void initState() {
  //   super.initState();
  //   // getCurrentUser();
  //   try {
  //     dataTest();
  //   } on Exception catch (e) {
  //     print('Exception in init: ' + e.toString());
  //   } catch (e) {
  //     print('Error in init: ' + e.toString());
  //   }
  // }

  // Future<void> deleteData() async {
  //   await firestore.collection('empty-spaces').get().then((snapshot) {
  //     for (DocumentSnapshot ds in snapshot.docs) {
  //       ds.reference.delete();
  //     }
  //   });
  //   print('data deleted');
  // }

  // void dataTest() {
  //   CollectionReference reference = firestore.collection('empty-spaces');
  //   streamSub = reference.snapshots().listen((querySnapshot) {
  //     querySnapshot.docChanges.forEach((change) {
  //       // Do something with change

  //       //collect all the empty-spaces index into a list
  //       index = change.doc
  //           .data()
  //           .toString()
  //           .replaceAll('{', '')
  //           .replaceAll('}', '')
  //           .replaceAll('data:', '')
  //           .replaceAll('[', '')
  //           .replaceAll(']', '')
  //           .replaceAll(',', '')
  //           .split(' ');

  //       //print(index);

  //       //empty the list
  //       list = [];
  //       list = List.filled(64, 0);

  //       //put 1 on the appropriate index indicating empty-space
  //       for (int i = 0; i < index.length; i++) {
  //         if (index[i] != '') {
  //           list[int.parse(index[i])] = 1;
  //         }
  //       }

  //       setState(() {});
  //     });
  //   });
  // }

  // void getDataStatic() async {
  //   final messages = await firestore.collection('empty-spaces').get();

  //   for (var message in messages.docs) {
  //     print(message.data());
  //   }
  // }

  // void getDataRealTime() async {
  //   await for (var snapshot
  //       in firestore.collection('empty-spaces').snapshots()) {
  //     for (var message in snapshot.docs) {
  //       print(message.data());
  //       //message.reference.delete();
  //     }
  //   }
  // }

  // void getCurrentUser() {
  //   try {
  //     final user = auth.currentUser;
  //     if (user != null) {
  //       loggedInUser = user;
  //       print(loggedInUser.email);
  //     }
  //   } on Exception catch (exception) {
  //     //print('Exception eeeeeeeeeeeeeeeeeeeeeeee: ');
  //     print(exception);
  //   } catch (e) {
  //     //print('Error eeeeeeeeeeeeeeeeeeeeeeee: ');
  //     print(e);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        // backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [],
          elevation: 0,
          backgroundColor: const Color(0xFFf6f2ff),
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          title: const Text(
            'Red Sea Mall Parking',
            style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
        ),
        body: Container(
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage("assets/Parking.png"),
          //     fit: BoxFit.cover,
          //   ),
          // ),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/parkingImage.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                const Center(
                    child: Text("Level 2",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold))),
                const SizedBox(
                  height: 0.0,
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 0),
                            //color: Colors.red,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    // color: Color(0xffA990E1),
                                    // blocks A
                                    child: Column(
                                      children: [
                                        ParkBlock(
                                          colorBack:
                                              list[0] == 0 ? kpurple : kdark,
                                          colorFore:
                                              list[0] == 1 ? kdark : kpurple,
                                          number: '1',
                                        ),
                                        ParkBlock(
                                          colorBack:
                                              list[1] == 1 ? kpurple : kdark,
                                          colorFore: list[1] == 1
                                              ? kdark
                                              : Colors.white,
                                          number: '2',
                                        ),
                                        ParkBlock(
                                          colorBack:
                                              list[2] == 0 ? kpurple : kdark,
                                          colorFore:
                                              list[2] == 1 ? kdark : kpurple,
                                          number: '3',
                                        ),
                                        ParkBlock(
                                          colorBack:
                                              list[3] == 0 ? kpurple : kdark,
                                          colorFore:
                                              list[3] == 1 ? kdark : kpurple,
                                          number: '4',
                                        ),
                                        ParkBlock(
                                          colorBack:
                                              list[4] == 1 ? kpurple : kdark,
                                          colorFore: list[4] == 1
                                              ? kdark
                                              : Colors.white,
                                          number: '5',
                                        ),
                                        ParkBlock(
                                          colorBack:
                                              list[5] == 1 ? kpurple : kdark,
                                          colorFore: list[5] == 1
                                              ? kdark
                                              : Colors.white,
                                          number: '6',
                                        ),
                                        ParkBlock(
                                          colorBack:
                                              list[6] == 0 ? kpurple : kdark,
                                          colorFore:
                                              list[6] == 1 ? kdark : kpurple,
                                          number: '7',
                                        ),
                                        ParkBlock(
                                          colorBack:
                                              list[7] == 1 ? kpurple : kdark,
                                          colorFore: list[7] == 1
                                              ? kdark
                                              : Colors.white,
                                          number: '8',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 120.0,
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 0),
                            // color: Color(0xffA990E1),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    // color: Colors.pink,
                                    child: Column(
                                      //block B
                                      children: [
                                        ParkBlock(
                                          colorBack:
                                              list[8] == 1 ? kpurple : kdark,
                                          colorFore: list[8] == 1
                                              ? kdark
                                              : Colors.white,
                                          number: '16',
                                        ),
                                        ParkBlock(
                                          colorBack:
                                              list[9] == 0 ? kpurple : kdark,
                                          colorFore:
                                              list[9] == 1 ? kdark : kpurple,
                                          number: '17',
                                        ),
                                        ParkBlock(
                                          colorBack:
                                              list[51] == 0 ? kpurple : kdark,
                                          colorFore:
                                              list[51] == 1 ? kdark : kpurple,
                                          number: '18',
                                        ),
                                        ParkBlock(
                                          colorBack:
                                              list[52] == 1 ? kpurple : kdark,
                                          colorFore: list[52] == 1
                                              ? kdark
                                              : Colors.white,
                                          number: '19',
                                        ),
                                        ParkBlock(
                                          colorBack:
                                              list[53] == 1 ? kpurple : kdark,
                                          colorFore: list[53] == 1
                                              ? kdark
                                              : Colors.white,
                                          number: '20',
                                        ),
                                        ParkBlock(
                                          colorBack:
                                              list[54] == 0 ? kpurple : kdark,
                                          colorFore:
                                              list[54] == 1 ? kdark : kpurple,
                                          number: '21',
                                        ),
                                        ParkBlock(
                                          colorBack:
                                              list[55] == 1 ? kpurple : kdark,
                                          colorFore: list[55] == 1
                                              ? kdark
                                              : Colors.white,
                                          number: '22',
                                        ),
                                        ParkBlock(
                                          colorBack:
                                              list[56] == 1 ? kpurple : kdark,
                                          colorFore: list[56] == 1
                                              ? kdark
                                              : Colors.white,
                                          number: '23',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 00.0,
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
                            width: 40, // Adjust the width of the image
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
        // bottomNavigationBar: BottomNavigationBar(
        //   items: const [
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.person_2_rounded),
        //       label: '',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.home),
        //       label: '',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.school),
        //       label: '',
        //     ),
        //   ],
        //   //  currentIndex: _selectedIndex,
        //   selectedItemColor: Color(0xffA990E1),

        //   //  onTap: _onItemTapped,
        // ),
      ),
    );
  }
}

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
        // Image(
        //   image: image,
        //   width: 24,
        //   height: 24,
        //   color: Color.fromRGBO(174, 73, 231, 1),
        // ),
        const SizedBox(width: 16),
        Expanded(
          child: TextFormField(
            // controller: controller,
            decoration: const InputDecoration(
              // hintText: hintText,
              border: InputBorder.none,
            ),
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ],
    ),
  );
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
    required Null Function() onPressed,
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

class ParkBlock extends StatelessWidget {
  final Color colorBack;
  final Color colorFore;
  final String number;

  const ParkBlock(
      {Key? key,
      required this.colorBack,
      required this.colorFore,
      required this.number})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.transparent,
            border: Border(
              bottom: BorderSide(width: 5.0, color: Color(0xffA990E1)),
            )
            // borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            ),
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 6),
        child: Center(
          child: colorBack ==
                  kdark // Assuming kpurple is the color indicating empty space
              ? Image.asset(
                  'assets/car.png', // Replace 'assets/car.png' with the path to your car image
                  width: 90, // Adjust the width of the car image as needed
                  height: 54, // Adjust the height of the car image as needed
                )
              : Icon(
                  Icons.local_parking_rounded,
                  color: colorFore,
                ),
        ),
      ),
    );
  }
}
