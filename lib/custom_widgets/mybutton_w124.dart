import 'package:flutter/material.dart';

class MybuttonW124 extends StatelessWidget {
  final String title;
  const MybuttonW124({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 381,
      decoration: BoxDecoration(
        color: WidgetStateColor.resolveWith((state) {
            return state.contains(WidgetState.focused)
                ? Color(0xff2BAE66)
                : Color(0xff646464);
          }),
        borderRadius: BorderRadius.circular(35),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 15,
            fontFamily: 'Urbanist',
            color: Color(0xffFFFFFF),
            fontWeight: FontWeight.w600
          ),
        ),
      ),
    );
  }
}
