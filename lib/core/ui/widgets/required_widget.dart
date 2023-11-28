import 'package:flutter/material.dart';

class RequiredWidget extends StatelessWidget {
  final bool isRequired;
  const RequiredWidget({super.key, required this.isRequired});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 20,
      child: Visibility(
        visible: isRequired,
        child: const Align(
          alignment: Alignment.topCenter,
          child: Text(
            style: TextStyle(fontSize: 20, color: Colors.red),
            '*',
          ),
        ),
      ),
    );
  }
}
