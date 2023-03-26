import 'package:flutter/material.dart';

class CustomHorizontalMenu extends StatefulWidget {
  const CustomHorizontalMenu({super.key});

  @override
  _CustomHorizontalMenuState createState() => _CustomHorizontalMenuState();
}

class _CustomHorizontalMenuState extends State<CustomHorizontalMenu> {
  int _currentIndex = 0;
  final List<String> _menuItems = ['Home', 'Blog', 'Account', 'FAQ'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _menuItems.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _currentIndex = index;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: _currentIndex == index ? Colors.blue : Colors.white,
                border: Border(
                  bottom: BorderSide(
                    width: 2.0,
                    color: _currentIndex == index ? Colors.blue : Colors.grey,
                  ),
                ),
              ),
              child: Text(
                _menuItems[index],
                style: TextStyle(
                  color: _currentIndex == index ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
