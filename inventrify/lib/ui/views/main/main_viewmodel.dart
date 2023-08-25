import 'package:flutter/material.dart';
import 'package:inventrify/ui/views/home/home_view.dart';
import 'package:stacked/stacked.dart';

class MainViewModel extends BaseViewModel {
  final selectedItemColor =  Colors.white;
  final unselectedItemColor =  const Color(0xFF4c5775);
  final selectedBgColor = Colors.indigo;
  final unselectedBgColor = Colors.transparent;
  int selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
   List<Widget> widgetOptions = <Widget> [
    const HomeView(),
    const Text(
      'Index 1: Assets',
      style: optionStyle,
    ),
    const Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  Color _getBgColor(int index) =>
      selectedIndex == index ? selectedBgColor : unselectedBgColor;

  Color _getItemColor(int index) =>
      selectedIndex == index ? selectedItemColor : unselectedItemColor;

  Widget buildIcon(IconData iconData, String text, int index) => Container(
    margin: const EdgeInsets.all(8),
        width: double.infinity,
        height: kBottomNavigationBarHeight,
        child: Material(
          shape: selectedIndex == index ? const CircleBorder() : null,
          color: _getBgColor(index),
          child: InkWell(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(iconData, color: _getItemColor(index),),
                Text(text,
                    style:
                        TextStyle(fontSize: 12, color: _getItemColor(index))),
              ],
            ),
            onTap: () => _onItemTapped(index),
          ),
        ),
      );
}
