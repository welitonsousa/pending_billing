import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FakeInputWidget extends StatelessWidget {
  final void Function() onTap;
  final String? value;
  final String label;
  const FakeInputWidget({
    Key? key,
    required this.onTap,
    this.value,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: GestureDetector(
        onTap: onTap,
        child: Stack(
          children: [
            Container(
              height: 65,
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  value ?? '',
                  style: const TextStyle(fontSize: 20),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Container(
              color: context.theme.scaffoldBackgroundColor,
              padding: const EdgeInsets.symmetric(horizontal: 6),
              margin: const EdgeInsets.symmetric(horizontal: 6),
              child: Text(label),
            )
          ],
        ),
      ),
    );
  }
}
