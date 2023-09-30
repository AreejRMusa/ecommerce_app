import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
 class LaunchScreen extends StatefulWidget {
   const LaunchScreen({super.key});
 
   @override

   State<LaunchScreen> createState() => _LaunchScreenState();
 }
 
 class _LaunchScreenState extends State<LaunchScreen> {
   @override
  void initState() {
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, '/on_boarding_screen');
    });
    super.initState();
  }
   @override

   Widget build(BuildContext context) {
     return  Scaffold(
       body:Container(
         alignment: AlignmentDirectional.center,
         decoration:const BoxDecoration(
           gradient: LinearGradient(
             begin: AlignmentDirectional.topStart,
             end: AlignmentDirectional.bottomEnd,
             colors: [

               Color(0xFF272459),
               Color(0xFFF35C56)
             ]
           )
         ),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,

           children: [
             Container(

               margin: EdgeInsetsDirectional.only(bottom: 14),

               height: 100,
               width: 100,

               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(8)
               ),
               child: Image.asset("images/logo_icon1.png"),
             ),
             Text(
               'Elektra',
               style: GoogleFonts.poppins(
               fontSize: 24,
               fontWeight: FontWeight.bold,
               color: Colors.white,

             ),)
           ],
         ),
       )

     );
   }
 }
 