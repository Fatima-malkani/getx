import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    super.key,
    this.width = 60,
    this.height = 50,
    required this.title,
    this.loading = false,
    required this.onPress,
    this.buttoncolor = Colors.blueGrey,
    this.textcolor = Colors.blueGrey,
  });

  final String title;
  final double width, height;
  final bool loading;
  final VoidCallback onPress;
  final Color buttoncolor, textcolor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: buttoncolor, borderRadius: BorderRadius.circular(20)),
          child: loading
              ? const Center(child: CircularProgressIndicator())
              : Center(
                  child: Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.white),
                  ),
                )),
    );
  }
}
