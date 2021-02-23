import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelApp/constants/color_constants.dart';

class BottomNavigationTravelkuy extends StatefulWidget {
  @override
  _BottomNavigationTravelkuyState createState() =>
      _BottomNavigationTravelkuyState();
}

class _BottomNavigationTravelkuyState extends State<BottomNavigationTravelkuy> {
  int _selectedIndex = 0;
  var botttomTextStyle =
      GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w500);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        color: mFillColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 15,
            offset: Offset(0, 5),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? new SvgPicture.asset('assets/icons/home.svg')
                : SvgPicture.asset('assets/icons/home_colored.svg'),
            title: Text(
              'Home',
              style: botttomTextStyle,
            ),
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? new SvgPicture.asset('assets/icons/home.svg')
                : SvgPicture.asset('assets/icons/home_colored.svg'),
            title: Text(
              'Home',
              style: botttomTextStyle,
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: mBlueColor,
        unselectedItemColor: mSubtitleColor,
        onTap: _onItemTapped,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        showSelectedLabels: true,
        elevation: 0,
      ),
    );
  }
}
