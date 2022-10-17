import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship_task/Auth_model/components/CustomTextField.dart';
import 'package:internship_task/Auth_model/services/api_services.dart';

final emailText = TextEditingController();
final passwordText = TextEditingController();

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 65, left: 20, right: 20),
                  child: SizedBox(
                    height: 416,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 33,
                          ),
                          Row(
                            children: [
                              Text('Login',
                                  style: GoogleFonts.poppins(
                                      fontSize: 36,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xff1D2733))),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Text('Login with your username or email',
                                  style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff999B9F))),
                            ],
                          ),
                          const SizedBox(height: 40),
                          CustomTextField(
                            label: "Email Address",
                            hintText: "",
                            inputType: TextInputType.emailAddress,
                            obscureText: false,
                            controller: emailText,
                          ),
                          CustomTextField(
                            label: "Password",
                            hintText: "",
                            obscureText: true,
                            controller: passwordText,
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('Forgot Password?',
                                  style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff999B9F))),
                            ],
                          ),
                          const SizedBox(height: 20),
                          MaterialButton(
                            height: 50,
                            minWidth: 350,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                            onPressed: () {
                              callLoginApi();
                            },
                            color: const Color(0xff004225),
                            child: const Text(
                              'Sign in',
                              style: TextStyle(color: Color(0XffFFFFFF)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Row(children: const <Widget>[
                  Expanded(
                      child: Divider(
                    thickness: 2,
                    endIndent: 10,
                    indent: 45,
                  )),
                  Text("OR"),
                  Expanded(
                      child: Divider(
                    thickness: 2,
                    endIndent: 45,
                    indent: 10,
                  )),
                ]),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 35, right: 35),
                  child: MaterialButton(
                    height: 50,
                    minWidth: 305,
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Color(0xff3b5998)),
                        borderRadius: BorderRadius.circular(4)),
                    color: const Color(0xff3b5998),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Sign In with Facebook",
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: const Color(0XffFFFFFF))),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset('assets/images/fb.png')),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 35, right: 35),
                  child: MaterialButton(
                    height: 50,
                    minWidth: 305,
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Color(0xffdb4a39)),
                        borderRadius: BorderRadius.circular(4)),
                    color: const Color(0xffdb4a39),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Sign In with Goggle",
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: const Color(0XffFFFFFF))),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset('assets/images/goggleplus.png')),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 35, right: 35),
                  child: MaterialButton(
                    height: 50,
                    minWidth: 305,
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Color(0xff000000)),
                        borderRadius: BorderRadius.circular(4)),
                    color: const Color(0xff000000),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Sign In with Apple",
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: const Color(0XffFFFFFF))),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset('assets/images/apple.png')),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 91),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: 'Dont have an account? ',
                          style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff1D2733))),
                      TextSpan(
                          text: 'Sign up',
                          recognizer: TapGestureRecognizer()..onTap = () => {},
                          style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff9C1C76))),
                    ])),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


