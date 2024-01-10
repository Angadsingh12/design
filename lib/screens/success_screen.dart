import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0,40,16,16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/Tick.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                child: SizedBox(
                  width: 320,
                  child: Text(
                    'You have successfully changed your password',
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
                'Now you can login with your new \n password',
                style: GoogleFonts.openSans(
                  textStyle: GoogleFonts.openSans(textStyle:const TextStyle(
        
                      color: Color(0xFF2F3036),
                      fontSize: 17,
                      fontWeight: FontWeight.w400), ),
                ),
                textAlign: TextAlign.center,
              ),



              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(const Color(0xffDC7D57)),
                  ),
                  onPressed: () {  },
                  child: Row(
                    children: [
                      const SizedBox(width: 120),
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0, bottom: 18),
                        child: Text(
                          'Go to Login',
                          style: GoogleFonts.openSans(
                            textStyle:
                            const TextStyle(fontSize: 18 , color: Colors.white,fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Image.asset('images/Vector.png')
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
