import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_design/screens/success_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/Oncologo.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 320,
                  child: Text(
                    'Reset your Password',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.openSans(
                      textStyle: const TextStyle(
                        color: Color(0xFFDC7D57),
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                'Enter your email address and we will send '
                'you instructions to reset your password.',
                style: GoogleFonts.openSans(
                  textStyle: const TextStyle(
                      color: Color(0xFF2F3036),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              Text(
                'Email',
                style: GoogleFonts.openSans(
                  textStyle: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 8),
               TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(width: 01, color: Color(0xff7A8BA4BF)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),

                  ),
                    hintText: 'Enter your corporate email',
                    hintStyle: const TextStyle(
                      color: Color(0xff7A8BA4BF),
                      fontWeight: FontWeight.w500
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 01, color: Colors.grey.shade100),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
               ),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all(const Color(0xffDC7D57)),
                ),
                onPressed: () {  Navigator.push(context, MaterialPageRoute(builder: (context) => const SuccessScreen()));},
                child: Row(
                  children: [
                    const SizedBox(width: 130),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0, bottom: 18),
                      child: Text(
                        'Continue',
                        style: GoogleFonts.openSans(
                          textStyle:
                          const TextStyle(fontSize: 16, color: Colors.white,fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Image.asset('images/Vector.png')
                  ],
                ),
              ),
              const SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text('Already have an account?',style: GoogleFonts.openSans(
                    textStyle: const TextStyle(color: Color(0xff2A2A2A), fontSize: 16),),),
                   const SizedBox(width: 5),
                  InkWell(
                    child: Text(
                      'Login',
                      style: GoogleFonts.openSans(
                        textStyle:
                            const TextStyle(color: Color(0xff213D68), fontSize: 16),
                      ),
                    ),
                   onTap: (){
                   },
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}
