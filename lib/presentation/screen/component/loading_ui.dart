import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingUI extends StatefulWidget {
  const LoadingUI({super.key});

  @override
  State<LoadingUI> createState() => _LoadingUIState();
}

class _LoadingUIState extends State<LoadingUI> {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey,
          ),
          width: double.infinity,
          height: 78,
        ),
      ),
    );
  }
}
