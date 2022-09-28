import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:book_report_app/style/theme.dart';

class IconBackground extends StatefulWidget {
  const IconBackground({
    Key? key,
    required this.icon,
    required this.onTap,
    this.iconColor = Colors.black,
    this.size = 20.0,
    this.iconSize = 16.0,
    this.borderRadius = 6.0,
    this.background = AppColors.cardLight,
  }) : super(key: key);

  final IconData icon;
  final VoidCallback onTap;
  final Color iconColor;
  final double size;
  final double iconSize;
  final double borderRadius;
  final Color background;

  @override
  State<IconBackground> createState() => _IconBackgroundState();
}

class _IconBackgroundState extends State<IconBackground> {
  bool isNewData = true;
  void _handleClicked() {
    setState(() {
      isNewData = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      color: widget.background,
      borderRadius: BorderRadius.circular(widget.borderRadius),
      child: InkWell(
        borderRadius: BorderRadius.circular(6),
        splashColor: Theme.of(context).scaffoldBackgroundColor,
        onTap: () {
          _handleClicked();
          widget.onTap();
        },
        child: Padding(
          padding: const EdgeInsets.all(6),
          child: SizedBox(
            width: widget.size,
            height: widget.size,
            child: Column(
              children: [
                _badge(isNewData),
                Icon(widget.icon,
                    size: widget.iconSize, color: widget.iconColor),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _badge(isNewData) {
  return Padding(
      padding: const EdgeInsets.only(left: 13.0),
      child: SizedBox(
          width: 4,
          height: 4,
          child: Icon(
            CupertinoIcons.circle_fill,
            size: 4,
            color: isNewData ? AppColors.secondary : Colors.transparent,
          )));
}

class IconBorder extends StatelessWidget {
  const IconBorder({
    Key? key,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(6),
      splashColor: AppColors.secondary,
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            width: 2,
            color: Theme.of(context).cardColor,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Icon(
            icon,
            size: 16,
          ),
        ),
      ),
    );
  }
}
