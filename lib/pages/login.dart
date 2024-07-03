import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:im_rich/controllers/login_controller.dart';
import 'package:im_rich/functions/login_function.dart';
import 'package:im_rich/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Instagram',
              style: GoogleFonts.grandHotel(
                  color: Colors.black,
                  fontSize: 65,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: loginController.idController,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFF5F5F5),
                    contentPadding: const EdgeInsets.all(15),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide:
                          const BorderSide(color: Color(0xFFA8A8A8), width: .8),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide:
                          const BorderSide(color: Color(0xFFA8A8A8), width: .8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide:
                          const BorderSide(color: Color(0xFFA8A8A8), width: .8),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide:
                          const BorderSide(color: Color(0xFFA8A8A8), width: .8),
                    ),
                    hintText: 'Phone Number, username or email',
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: loginController.passController,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFF5F5F5),
                    contentPadding: const EdgeInsets.all(15),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide:
                          const BorderSide(color: Color(0xFFA8A8A8), width: .8),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide:
                          const BorderSide(color: Color(0xFFA8A8A8), width: .8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide:
                          const BorderSide(color: Color(0xFFA8A8A8), width: .8),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide:
                          const BorderSide(color: Color(0xFFA8A8A8), width: .8),
                    ),
                    hintText: 'Password',
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    )),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot Password?',
                  style: GoogleFonts.nunito(
                      color: const Color(0xff059CF6),
                      fontSize: 18,
                      letterSpacing: -.5,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  width: 20,
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        String loginResult = LoginFunction().login(
                            username: loginController.idController.text,
                            password: loginController.passController.text,
                            context: context);
                        if (loginResult == 'Login Successfull') {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const HomePage()));
                        }
                      },
                      style: TextButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        backgroundColor: const Color(0xFF58CBFD), // foreground
                      ),
                      child: Text(
                        'Log In',
                        style: GoogleFonts.nunito(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
