import 'package:extra_class1/const/allText.dart';
import 'package:extra_class1/pages/loginPage.dart';
import 'package:extra_class1/pages/signUpPage.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white, 
      appBar: AppBar(  
        elevation: 0, 
        backgroundColor: Colors.white, 

      ),
      body: SafeArea(child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(  
           
            children: [ 
              const SizedBox(height: 10,),
              AllText.text('Welcome', Colors.teal.shade900, 35, FontWeight.w900),   
                const SizedBox(
                  height: 10,
                ),
              AllText.text('Font Stack Slash Flutter provides extraordinary flutter', Colors.black, 18, FontWeight.w400),
              AllText.text(
                    'tutorials. Do Subscribe!',
                    Colors.black,
                    18,
                    FontWeight.w400),  
                  const SizedBox(
                  height: 40,
                ), 
        
                Container(
                  width: size.width, 
                  child: Image.asset('assets/images/welcome.jpg')
                ), 
                   const SizedBox(
                  height: 20,
                ),
        
                  InkWell( 
                     onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const LoginPage()));
                  },
                    child: Container(
                    alignment: Alignment.center,
                    height: 70,
                    width: size.width,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.teal.shade900),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child:
                        AllText.text('Login ', Colors.teal.shade900, 30, FontWeight.w800),
                                  ),
                  ),
                const SizedBox(
                  height: 20,
                ), 
        
        
        
                  InkWell( 
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>const SignUpPage()));
                    },
                    child: Container(
                    alignment: Alignment.center,
                    height: 70,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Colors.teal.shade900,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child:
                        AllText.text('Sign Up ', Colors.white, 30, FontWeight.w800),
                                  ),
                  ), 
                   const SizedBox(
                  height: 38,
                ), 
                AllText.text( 'Security policy settings', Colors.teal.shade900, 18, FontWeight.w900)


                
            ],
          ),
        ),
      ),),
    );
  }
}
