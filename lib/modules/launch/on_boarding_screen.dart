import 'package:ecommerce_app/modules/widget/on_boarding_content.dart';
import 'package:ecommerce_app/modules/widget/page_view_custom_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class OnBoardingScreen extends StatefulWidget {

  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;
  int _currentPage = 0;
  @override
  void initState() {
    _pageController= PageController();
    super.initState();
  }
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: Visibility(
                visible: _currentPage<2,
                replacement:
                TextButton(onPressed: (){

                },
                    child: Text('START',
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF272459)


                      ),)),
                child: TextButton(onPressed: (){
                  _pageController.animateToPage(2, duration: const Duration(seconds: 1), curve: Curves.easeInOutBack);
                },
                    child: Text('SKIP',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF272459)


                ),)),
              ),
            ),
            Expanded(
              child: PageView(
                physics: const BouncingScrollPhysics(),
                controller: _pageController,
                onPageChanged: (int currentPage){
                  setState(() {
                    _currentPage=currentPage;
                  });
                  debugPrint('current Page $currentPage');
                },
                scrollDirection: Axis.horizontal,
                children: const [
                  OnBoardingContent(
                      imageUrl: "on_boarding1",
                      title: "Online Shopping",
                      subTitle: "Buy anything you need anywhere and anytime with the guarantee of the best goods."),
                  OnBoardingContent(
                      imageUrl: "on_boarding2",
                      title: "An Affordable Price",
                      subTitle: "we have very cheap prices with easy and simple transactions"),
                  OnBoardingContent(
                      imageUrl: "on_boarding3",
                      title: "Tracking your Shipments",
                      subTitle: "Use the tracking system feature to get information about the courier on the map")
                ],


              ),
            ),
            /* Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TabPageSelectorIndicator(
                    backgroundColor:_currentPage==0? const Color(0xFFF35C56):Color(0xFFE4E4E6),
                    borderColor: Colors.transparent,
                    size: 10),
                TabPageSelectorIndicator(
                    backgroundColor:_currentPage==1? const Color(0xFFF35C56):Color(0xFFE4E4E6),
                    borderColor: Colors.transparent,
                     size: 10),
                TabPageSelectorIndicator(
                    backgroundColor:_currentPage==2? const Color(0xFFF35C56):Color(0xFFE4E4E6),
                    borderColor: Colors.transparent,
                   size: 10),

              ],
            ),*/
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              PageViewCustomIndicator(
                isCurentPage: _currentPage ==0,
                marginEnd: 8,
              ),
              PageViewCustomIndicator(
                isCurentPage: _currentPage ==1 ,
                marginEnd: 8,
              ),
              PageViewCustomIndicator(
                isCurentPage: _currentPage ==2 ,
              ),
            ],)
           ,const SizedBox(
              height: 142,
            ),
          ],
        ),
      ),
    );
  }
}




