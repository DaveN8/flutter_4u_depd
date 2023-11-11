part of "pages.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.blue,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Navbar contents (e.g., logo, menu items)
                // Replace with your own navbar elements
              ],
            ),
          ),
        ],
      ),
    );
  }
}