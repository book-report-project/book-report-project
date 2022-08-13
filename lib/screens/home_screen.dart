import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:book_report_app/pages/pages.dart';
import 'package:book_report_app/style/theme.dart';
import 'package:book_report_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final ValueNotifier<int> pageIndex = ValueNotifier(0);
  final ValueNotifier<String> title = ValueNotifier('독후감 sns 앱(가칭)');

  final pages = const [FeedPage()];

  void _onNavigationItemSelected(index) {
    title.value = '독후감 sns 앱(가칭)';
    pageIndex.value = index;
  }

  @override
  Widget build(BuildContext context) {
    pageIndex.addListener(() {});

    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ValueListenableBuilder(
          valueListenable: title,
          builder: (BuildContext context, String value, _) {
            return Text(value,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ));
          },
        ),
        leadingWidth: 54,
        leading: Align(
          alignment: Alignment.centerRight,
          child: IconBackground(
              icon: Icons.search,
              onTap: () {
                print('TODO search');
              }),
        ),
        actions: [
          // Padding(
          //   padding: const EdgeInsets.only(right: 24.0),
          //   child: Avatar.small(url: Helpers.randomPictureUrl()),
          // )
        ],
      ),
      body: ValueListenableBuilder(
          valueListenable: pageIndex,
          builder: (BuildContext context, int value, _) {
            return pages[value];
          }),
      bottomNavigationBar: _BottomNavigationBar(
        onItemSelected: _onNavigationItemSelected,
      ),
    );
  }
}

class _BottomNavigationBar extends StatefulWidget {
  const _BottomNavigationBar({
    Key? key,
    required this.onItemSelected,
  }) : super(key: key);

  final ValueChanged<int> onItemSelected;

  @override
  State<_BottomNavigationBar> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<_BottomNavigationBar> {
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
    return Card(
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
                icon: CupertinoIcons.bubble_left_bubble_right_fill),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GlowingActionButton(
                  color: AppColors.secondary,
                  icon: CupertinoIcons.add,
                  onPressed: () {}),
            ),
          ],
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
                  size: isSelected ? 24 : 18,
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
