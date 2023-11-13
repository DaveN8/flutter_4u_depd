part of "pages.dart";

class LandingPage extends StatefulWidget {
  LandingPage({super.key});

  final List<Map<String, dynamic>> services = [
    {"image": "affordable.png", "title": "Affordable", "description": "Explanation about affordability"},
    {"image": "customizeable.png", "title": "Customizable", "description": "Explanation about customization"},
    {"image": "reuseable.png", "title": "Reusable", "description": "Explanation about reusability"},
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
                      image: AssetImage("assets/images"), // Updated path to assets/images
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    color: Colors.amber,
                    child: Image.asset(
                      'images/testimage.png', // Updated path to assets/images
                      fit: BoxFit.cover,
                    ),
                  ),
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
                Container(
                  height: 200,
                  color: Colors.grey,
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


// Function to create service sections
  Widget _buildServiceSection(String image, String title, String description) {
    return Expanded(
      child: Column(
        children: [
          Image.asset(
            'images/$image', // directory untuk mengambil image yg sudah di copas
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
