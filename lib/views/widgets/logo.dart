part of "widgets.dart";

// Beautiful flutter login and registration ui template screen design
  Widget customContainer(height, width) {
    return Container(
      height: double.parse(height.toString()),
      width: double.parse(width.toString()),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(colors: [Colors.blue, Colors.white])),
    );
  }