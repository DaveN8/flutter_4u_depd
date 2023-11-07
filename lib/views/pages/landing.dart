import 'package:flutter/material.dart';

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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Landing Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // 1. Navbar
            Container(
              color: Colors.blue, // Example color for navbar
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Navbar contents (e.g., logo, menu items)
                  // Replace with your own navbar elements
                ],
              ),
            ),

            // 2. Banner
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/banner_image.jpg'), // Replace with your image
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
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // children: services,
                    //     .map((services) => _buildServiceSection(
                    //         services['title']!, services['description']!))
                    //     .toList(),
                  ),
                ],
              ),
            ),

            // 4. Products section using dynamic data
            Container(
              height: 200, // Adjust height as needed
              color: Colors.grey, // Example color for product section
              child: Row(
                // children: products
                //     .map((product) => Expanded(child: _buildProduct(product)))
                //     .toList(),
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
