part of "pages.dart";

class LandingPage extends StatefulWidget {
  LandingPage({super.key});

  final List<Map<String, String>> services = [
    {"title": "Affordable", "description": "Explanation about affordability"},
    {"title": "Customizable", "description": "Explanation about customization"},
    {"title": "Reusable", "description": "Explanation about reusability"},
  ];

  final List<String> products = ['Paket 1', 'Paket 2', 'Paket 3'];

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.blue, // Example color for navbar
            expandedHeight: 50.0,
            pinned: true, // Make the app bar pinned at the top
            title: Row(
              children: [
                Image.asset(
                  'images/logodei.jpg',
                  width: 40, // Adjust width as needed
                  height: 40, // Adjust height as needed
                ),
                SizedBox(width: 10), // Add spacing between logo and "4U" title
                GestureDetector(
                  onTap: () {
                    // Add the action you want when the "4U" title is tapped,
                    // for example, navigate to the homepage.
                    // Navigator.pushNamed(context, '/homepage'); // Example navigation
                  },
                  child: Text(
                    '4U',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Adjust color as needed
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                // 2. Banner
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/banner_image.jpg'), // Replace with your image
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Additional banner contents (if any)
                ),

                // 3. Explanation about services using dynamic data
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        'Our Services',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      // Display services dynamically
                      Row(
                        children: widget.services
                            .map((services) => _buildServiceSection(
                                services['title']!, services['description']!))
                            .toList(),
                      ),
                    ],
                  ),
                ),

                // 4. Products section using dynamic data
                Container(
                  height: 200, // Adjust height as needed
                  color: Colors.grey, // Example color for product section
                  child: Row(
                    children: widget.products
                        .map((product) => Expanded(child: _buildProduct(product)))
                        .toList(),
                  ),
                ),

                // 5. Form section
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        'Fill in the Form',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      // Form fields for name, email, and telephone number
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Name'),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Email'),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Telephone Number'),
                      ),
                      // Additional form submission button or action
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Function to create service sections
  Widget _buildServiceSection(String title, String description) {
    return Expanded(
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(description),
        ],
      ),
    );
  }

  // Function to create product sections
  Widget _buildProduct(String title) {
    return Container(
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
