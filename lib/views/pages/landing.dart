part of "pages.dart";

class LandingPage extends StatefulWidget {
  LandingPage({Key? key});

  final List<Map<String, dynamic>> services = [
    {
      "image": "affordable.png",
      "title": "Affordable",
      "description": "Explanation about affordability"
    },
    {
      "image": "customizeable.png",
      "title": "Customizable",
      "description": "Explanation about customization"
    },
    {
      "image": "reuseable.png",
      "title": "Reusable",
      "description": "Explanation about reusability"
    },
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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _reviewController = TextEditingController();

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
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    // Add the action you want when the "4U" title is tapped,
                    // for example, navigate to the homepage.
                    // Navigator.pushNamed(context, '/homepage'); // Example navigation
                  },
                  child: const Text(
                    '4U',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                //2. Banner Image
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                  ),
                  child: Stack(
                    children: [
                      // Banner Image
                      Center(
                        child: Container(
                          height: 720,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(
                                    255, 94, 92, 72), // Starting color
                                Color.fromARGB(
                                    255, 255, 253, 208), // Ending color
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              stops: [0.0, 1.0],
                              tileMode: TileMode.clamp,
                            ),
                          ),
                        ),
                      ),

                      //edit tampilan contoh pada Wix
                      // banner foto
                      Positioned(
                        left: 160,
                        top: 100,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          width: 720,
                          height: 400,
                          child: Image.asset(
                            'images/banner4u.png',
                            fit: BoxFit.fill,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                      //banner welcome
                      Positioned(
                        left: 650,
                        right: 180,
                        top: 300,
                        bottom: 100,
                        child: Container(
                          padding: const EdgeInsets.all(
                              20), // Add padding to the whole container
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(250, 255, 253, 208),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Welcome to 4U',
                                style: TextStyle(
                                  fontSize: 48,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        20), // Add padding to the description text
                                child: Text(
                                  'For you adalah bisnis undangan digital yang menawarkan layanan pembuatan undangan digital yang praktis, cepat, dan menarik. Bisnis ini memiliki platform online yang mudah digunakan dengan berbagai pilihan template dan desain yang dapat disesuaikan dengan kebutuhan dan selera pelanggan. Foryou juga menyediakan fitur interaktif seperti RSVP online dan tampilan galeri foto, sehingga undangan digital menjadi modern dan ramah lingkungan. Dengan layanan yang efisien dan berkualitas, Foryou merupakan pilihan yang sempurna bagi mereka yang ingin membuat undangan digital yang elegan dan mudah dibagikan kepada tamu undangan mereka.',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Rounded Rectangle + Welcome to 4U
                      // Positioned(
                      //   left: 180,
                      //   right: 180,
                      //   top: 150,
                      //   bottom: 150,
                      //   child: Container(
                      //     alignment: Alignment.center,
                      //     decoration: BoxDecoration(
                      //       color: Color.fromARGB(150, 255, 253, 208),
                      //       borderRadius: BorderRadius.circular(16),
                      //     ),
                      //     child: Text(
                      //       'Welcome to 4U',
                      //       style: TextStyle(
                      //         fontSize: 48,
                      //         fontWeight: FontWeight.bold,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),

                // 3. Our Services
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const Text(
                        'Our Services',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: widget.products
                        .map((product) => _buildProductSection(
                              product['title']!,
                              product['description']!,
                            ))
                        .toList(),
                  ),
                ),

                // 5. Form section
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        const Text(
                          'Fill in the Form',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: _nameController,
                          decoration: const InputDecoration(
                            labelText: 'Name',
                            border: OutlineInputBorder(),
                            filled: true,
                            fillColor: Color.fromRGBO(255, 244, 224, 1),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your full name';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16.0),
                        TextFormField(
                          controller: _emailController,
                          decoration: const InputDecoration(
                            labelText: 'Email',
                            border: OutlineInputBorder(),
                            filled: true,
                            fillColor: Color.fromRGBO(255, 244, 224, 1),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email address';
                            } else if (!EmailValidator.validate(value)) {
                              return 'Please enter a valid email address';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16.0),
                        TextFormField(
                          controller: _phoneNumberController,
                          decoration: const InputDecoration(
                            labelText: 'Phone Number',
                            border: OutlineInputBorder(),
                            filled: true,
                            fillColor: Color.fromRGBO(255, 244, 224, 1),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your phone number';
                            } else if (!RegExp(r'^[0-9]*$').hasMatch(value)) {
                              return 'Input a valid phone number (only numbers)';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16.0),
                        TextFormField(
                          controller: _reviewController,
                          maxLines: 4,
                          decoration: const InputDecoration(
                            labelText: 'Review',
                            border: OutlineInputBorder(),
                            filled: true,
                            fillColor: Color.fromRGBO(255, 244, 224, 1),
                          ),
                        ),
                        const SizedBox(height: 32.0),
                        ElevatedButton(
                          onPressed: () {
                            // Validate the form before submission
                            if (_formKey.currentState!.validate()) {
                              // If the form is valid, proceed with submission
                              String name = _nameController.text;
                              String email = _emailController.text;
                              String phoneNumber = _phoneNumberController.text;
                              String review = _reviewController.text;

                              // Add your logic to handle the form submission
                              // For example, you can print the values to the console
                              print('Name: $name');
                              print('Email: $email');
                              print('Phone Number: $phoneNumber');
                              print('Review: $review');
                            }
                          },
                          child: const Text('Submit'),
                        ),
                      ],
                    ),
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
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
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

  Widget _buildProductSection(String title, String description) {
  return Column(
    children: [
      const SizedBox(height: 20),
      Text(
        title,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 10),
      Text(description),
      const SizedBox(height: 20),
      ElevatedButton(
        onPressed: () {
          _launchURL('https://formfacade.com/sm/HMYxoxFEr');
        },
        child: const Text('Learn More'),
      ),
    ],
  );
}

void _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
}
