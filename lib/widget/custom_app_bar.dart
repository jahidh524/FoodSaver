import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.appBarTitle,
    this.prefixIcon,
    required this.postfixIcon,
    this.action,
  }) : super(key: key);
  final String appBarTitle;
  final Widget? prefixIcon;
  final Widget postfixIcon;
  final List<Widget>? action;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // actions: action,
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      elevation: 1,
      backgroundColor: const Color(0xffFFA477),
      centerTitle: true,
      title: Text(
        appBarTitle,
        textAlign: TextAlign.center,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 26),
      ),
      leading: prefixIcon,
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: postfixIcon,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
