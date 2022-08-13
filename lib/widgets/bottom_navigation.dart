import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:book_report_app/style/theme.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({
    Key? key,
    required this.onItemSelected,
  }) : super(key: key);

  final ValueChanged<int> onItemSelected;

  @override
  State<BottomNavigationBarWidget> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBarWidget> {
  var selectedIndex = 0;

  void handleItemSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
    widget.onItemSelected(index);
  }

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    return SizedBox(
      height: 90.0,
      child: Card(
        color: (brightness == Brightness.light)
            ? const Color.fromARGB(0, 0, 0, 0)
            : Colors.red,
        elevation: 0,
        margin: const EdgeInsets.all(0),
        child: SafeArea(
          top: false,
          bottom: true,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _NavigationBarItems(
                  index: 0,
                  onTap: handleItemSelected,
                  isSelected: (selectedIndex == 0),
                  lable: '피드',
                  icon: CupertinoIcons.home),
              _NavigationBarItems(
                  index: 1,
                  onTap: handleItemSelected,
                  isSelected: (selectedIndex == 1),
                  lable: '검색',
                  icon: CupertinoIcons.search),
              _NavigationBarItems(
                  index: 2,
                  onTap: handleItemSelected,
                  isSelected: (selectedIndex == 2),
                  lable: '독후감 작성',
                  icon: CupertinoIcons.plus_app),
              _NavigationBarItems(
                  index: 3,
                  onTap: handleItemSelected,
                  isSelected: (selectedIndex == 3),
                  lable: '설정',
                  icon: CupertinoIcons.ellipsis_circle),
            ],
          ),
        ),
      ),
    );
  }
}

class _NavigationBarItems extends StatelessWidget {
  const _NavigationBarItems(
      {Key? key,
      required this.lable,
      required this.icon,
      required this.index,
      this.isSelected = false,
      required this.onTap})
      : super(key: key);

  final String lable;
  final IconData icon;
  final int index;
  final bool isSelected;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        onTap(index);
      },
      child: SizedBox(
        width: 70.0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Icon(icon,
                  size: isSelected ? 20 : 18,
                  color: isSelected ? AppColors.secondary : null),
            ),
            const SizedBox(height: 10),
            Text(lable,
                style: isSelected
                    ? const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: AppColors.secondary)
                    : const TextStyle(fontSize: 10)),
          ],
        ),
      ),
    );
  }
}
