import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prometeo23/constants.dart';
import 'package:prometeo23/pages/signup2.dart';
import 'package:prometeo23/widgets/app_bar.dart';
import 'package:flutter_gif/flutter_gif.dart';
import 'package:prometeo23/widgets/bottom_navigation_bar.dart';
import 'package:prometeo23/widgets/nav_drawer.dart';
import 'package:prometeo23/widgets/register_button.dart';

class SignUp1 extends StatefulWidget {
  const SignUp1({super.key});

  @override
  State<SignUp1> createState() => _SignUp1State();
}

class _SignUp1State extends State<SignUp1> with TickerProviderStateMixin {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? _email, _firstName, _lastName, _password, _confirmPassword;
  late FlutterGifController controller1;
  @override
  void initState() {
    controller1 = FlutterGifController(
      vsync: this,
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: NavDrawer(),
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Container(
          padding: universalPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Welcome!",
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: size.height * 0.25,
                  // width: size.width / 2,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/prometeo.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                  // child: GifImage(
                  //   controller: controller1,
                  //   image: const AssetImage(
                  //     "assets/prometeo-gif.gif",
                  //   ),
                  // ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: TextFormField(
                        validator: (input) {
                          if (input != null && input.isEmpty)
                            return "Enter Name";
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "First Name",
                          prefixIcon: Icon(Icons.person_add),
                        ),
                        onSaved: (input) => _firstName = input!,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: TextFormField(
                        validator: (input) {
                          if (input != null && input.isEmpty)
                            return "Enter Name";
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Last Name",
                          prefixIcon: Icon(Icons.person),
                        ),
                        onSaved: (input) => _lastName = input!,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: TextFormField(
                        validator: (input) {
                          if (input != null && input.isEmpty)
                            return "Enter Email";
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email",
                          prefixIcon: Icon(Icons.email),
                        ),
                        onSaved: (input) => _email = input!,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: TextFormField(
                        validator: (input) {
                          if (input != null && input.isEmpty)
                            return "Enter Password";
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          prefixIcon: Icon(Icons.lock),
                        ),
                        obscureText: true,
                        onSaved: (input) => _password = input!,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: TextFormField(
                        validator: (input) {
                          if (input != null && input.isEmpty)
                            return "Enter Password";
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Confirm Passowrd",
                          prefixIcon: Icon(Icons.lock_person),
                        ),
                        obscureText: true,
                        onSaved: (input) => _confirmPassword = input!,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: size.height * 0.07,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                  // color: Color(0xff096B65),
                  color: Color(0xff003959),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      print(_firstName);
                      print(_lastName);
                      print(_email);
                      print(_password);
                      print(_confirmPassword);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUp2(
                            firstName: _firstName!,
                            lastName: _lastName!,
                            email: _email!,
                            password: _password!,
                          ),
                        ),
                      );
                    }
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              // RegisterButton(
              //     text: "Next",
              //     size: size,
              //     onPressed: () {
              //       if (_formKey.currentState!.validate()) {
              //         _formKey.currentState!.save();
              //         print(_firstName);
              //         print(_lastName);
              //         print(_email);
              //         print(_password);
              //         print(_confirmPassword);
              //         Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //             builder: (context) => SignUp2(
              //               firstName: _firstName!,
              //               lastName: _lastName!,
              //               email: _email!,
              //               password: _password!,
              //             ),
              //           ),
              //         );
              //       }
              //     }),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(currentIndex: -1),
    );
  }
}
