import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  final bool isLoading;
  final VoidCallback onPressed;
  final String title;

  const LoadingButton(
      {super.key,
      required this.isLoading,
      required this.onPressed,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.all(12.0)),
      onPressed: isLoading ? null : onPressed, // Disable button when loading
      child: isLoading
          ? CircularProgressIndicator(color: Colors.white)
          : Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}
