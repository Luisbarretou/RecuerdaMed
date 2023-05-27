import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final void Function()? onTap;
  final String routeName;

  const MyButton({super.key, this.onTap, required Set<Future> Function() onPressed, required this.routeName});

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 25),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF89A1EF),
              fixedSize: const Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
              )
          ),
          onPressed: () {
            Navigator.pushNamed(context, routeName);
          },
          child: const Center(
            child: Text(
              'Iniciar Sesion',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18
              ),
            ),
          ),
    ),
    );
    /*GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: const BoxDecoration(
          color: Color(0xFF89A1EF),
          borderRadius: BorderRadius.all(
            Radius.circular(8)
          )
        ),
        child: const Center(
          child: Text(
            'Iniciar Sesion',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18
            ),
          ),
        ),
      ),
    );*/
  }
}
