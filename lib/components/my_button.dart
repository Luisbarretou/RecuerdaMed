import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final void Function()? onTap;
  //final String routeName;
  final String labelButton;

  const MyButton(
      {super.key,
      this.onTap,
      /*required this.routeName,*/
      required this.labelButton});

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    //return Container(
    //     margin: const EdgeInsets.symmetric(horizontal: 25),
    //     child: ElevatedButton(
    //       style: ElevatedButton.styleFrom(
    //           backgroundColor: const Color(0xFF6C63FF),
    //           fixedSize: const Size(double.infinity, 50),
    //           shape: RoundedRectangleBorder(
    //               borderRadius: BorderRadius.circular(8)
    //           )
    //       ),
    //       onPressed: () {
    //         Navigator.pushNamed(context, routeName);
    //       },
    //       child: const Center(
    //         child: Text(
    //           'Iniciar Sesion',
    //           style: TextStyle(
    //               color: Colors.white,
    //               fontSize: 18
    //           ),
    //         ),
    //       ),
    // ),

    //);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: const BoxDecoration(
            color: Color(0xFF636CFF),
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Center(
          child: Text(
            labelButton,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
