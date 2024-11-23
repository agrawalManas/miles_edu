import 'package:flutter/material.dart';
import 'package:miles_edu_assessment/constants/app_colors.dart';

class CurvedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = AppColors.black
      ..style = PaintingStyle.fill;

    Path path = Path();
    // Draw the curved shape
    path.moveTo(0, 30); // Start higher up
    // Create a smooth curve that matches the icon positions
    path.quadraticBezierTo(
      size.width * 0.5, // Control point x
      -10, // Control point y - determines curve height
      size.width, // End point x
      30, // End point y
    );
    // Complete the shape
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    // Add subtle shadow
    canvas.drawShadow(path, Colors.black, 8, true);
    // Draw the shape
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class GridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey.shade600 // Line color
      ..strokeWidth = 0.1; // Line thickness

    double gridSize = 20.0; // Size of each square

    // Draw vertical lines
    for (double x = 0; x <= size.width; x += gridSize) {
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), paint);
    }

    // Draw horizontal lines
    for (double y = 0; y <= size.height; y += gridSize) {
      canvas.drawLine(Offset(0, y), Offset(size.width, y), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
