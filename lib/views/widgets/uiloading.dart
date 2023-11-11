part of "widgets.dart";

class UiLoading{
  static Container loadingBlock() {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: double.infinity,
      color: Colors.grey[300],
      child: const SpinKitFadingCircle(
        size: 50,
        color: Colors.blueAccent
      ),
    );
  }
}