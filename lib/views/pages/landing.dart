part of "pages.dart";

class LandingPage extends StatefulWidget {
  LandingPage({super.key});

  final List<Map<String, dynamic>> services = [
    {"image": "affordable.png", "title": "Affordable", "description": "Explanation about affordability"},
    {"image": "customizeable.png", "title": "Customizable", "description": "Explanation about customization"},
    {"image": "reuseable.png", "title": "Reusable", "description": "Explanation about reusability"},
  ];

  final List<Map<String, dynamic>> products = [
    {"title": "Paket 1", "description": "Short description for Paket 1"},
    {"title": "Paket 2", "description": "Short description for Paket 2"},
    {"title": "Paket 3", "description": "Short description for Paket 3"},
  ];

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
            backgroundColor: const Color.fromARGB(255, 255, 253, 208),
            expandedHeight: 50.0,
            pinned: true,
            title: Row(
              children: [
                Image.asset(
                  'images/logodei.jpg',
                  width: 40,
                  height: 40,
                ),
                SizedBox(width: 10),
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
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  height: 320,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    color: Colors.amber,
                    child: Image.asset(
                      'images/testimage.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
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
                      Row(
                        children: widget.services
                            .map((service) => _buildServiceSection(
                                  service['image']!,
                                  service['title']!,
                                  service['description']!,
                                ))
                            .toList(),
                      ),
                    ],
                  ),
                ),

                // 4. Products section using dynamic data
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: widget.products
                        .map((product) => _buildProductSection(
                              product['title']!,
                              product['description']!,
                            ))
                        .toList(),
                  ),
                ),

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
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Name'),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Email'),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Telephone Number'),
                      ),
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

  Widget _buildServiceSection(String image, String title, String description) {
    return Expanded(
      child: Column(
        children: [
          Image.asset(
            'images/$image',
            width: 80,
            height: 80,
          ),
          SizedBox(height: 10),
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

  // Function to create product sections with buttons
  Widget _buildProductSection(String title, String description) {
    return Column(
      children: [
        SizedBox(height: 20),
        Text(
          title,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text(description),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Add the action you want when the button is pressed,
            // for example, navigate to another page.
            // Navigator.pushNamed(context, '/productDetails', arguments: title);
          },
          child: Text('Learn More'),
        ),
      ],
    );
  }
}
