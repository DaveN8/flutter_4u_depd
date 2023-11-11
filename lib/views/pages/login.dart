part of "pages.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

// class _LoginPageState extends State<LoginPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: const Text('Login Page'),
//       ),
//       body: Stack(
//         children: [
//           Container(

//           ),
//         ],
//       ),
//     );
//   }
// }

class _LoginPageState extends State<LoginPage> {
  bool showPassword = false;
  bool showConfirmPassword = false;
  bool isLoginSelected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
      ),
      body: Stack(
        // height: double.infinity,
        // width: double.infinity,
        // child: Stack(

        children: [
          // Positioned(top: 50, left: 100, child: customContainer(100, 100)),
          // Positioned(top: 50, right: 70, child: customContainer(150, 150)),
          // Positioned(
          //   top: 130,
          //   right: 150,
          //   child: customContainer(100, 100),
          // ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
              child: Container(
            margin: EdgeInsets.all(8),
            color: Colors.white,
            width: 200,
            height: 200,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset("images/logodei.jpg"),
            ),
          )),

          SingleChildScrollView(
            padding: EdgeInsets.only(top: 260),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10),
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        gradient: LinearGradient(
                            colors: [Colors.blue.shade50, Colors.blue])),
                    child: Row(
                      children: [
                        !isLoginSelected
                            ? Expanded(
                                child: Center(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      print('tap');
                                      isLoginSelected = true;
                                    });
                                  },
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ))
                            : Expanded(
                                child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    gradient: LinearGradient(colors: [
                                      Colors.blue.shade50,
                                      Colors.blue
                                    ])),
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              )),
                        isLoginSelected
                            ? Expanded(
                                child: Center(
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      print('tap');
                                      isLoginSelected = false;
                                    });
                                  },
                                  child: Text(
                                    'Register',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ))
                            : Expanded(
                                child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    gradient: LinearGradient(colors: [
                                      Colors.blue.shade50,
                                      Colors.blue
                                    ])),
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              ))
                      ],
                    ),
                  ),
                ),
                emailField(),
                passwordField(),
                !isLoginSelected ? SizedBox() : forgotPassword(),
                isLoginSelected ? SizedBox() : confirmPasswordField(),
                !isLoginSelected
                    ? SizedBox(
                        height: 40,
                      )
                    : SizedBox(),
                button(context, isLoginSelected),
              ],
            ),
          ),
        ],
        // ),
      ),
    );
  }

  Widget passwordField() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60).copyWith(top: 12),
        child: TextField(
          obscureText: showPassword ? false : true,
          style: TextStyle(color: Colors.black45, fontSize: 14),
          decoration: InputDecoration(
              prefixIconConstraints: BoxConstraints(minWidth: 24),
              suffixIconConstraints: BoxConstraints(minWidth: 24),
              prefixIcon: Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.lock,
                  color: Colors.black45,
                  size: 20,
                ),
              ),
              suffixIcon: Padding(
                padding: EdgeInsets.only(left: 10),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                  child: Icon(
                    showPassword ? Icons.visibility : Icons.visibility_off,
                    color: Colors.black45,
                    size: 20,
                  ),
                ),
              ),
              hintText: 'Enter password',
              hintStyle: TextStyle(color: Colors.black45, fontSize: 14),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black45, width: .4)),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black45, width: .4))),
        ));
  }

  Widget confirmPasswordField() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60).copyWith(top: 12),
        child: TextField(
          obscureText: showConfirmPassword ? false : true,
          style: TextStyle(color: Colors.black45, fontSize: 14),
          decoration: InputDecoration(
              prefixIconConstraints: BoxConstraints(minWidth: 24),
              suffixIconConstraints: BoxConstraints(minWidth: 24),
              prefixIcon: Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.lock,
                  color: Colors.black45,
                  size: 20,
                ),
              ),
              suffixIcon: Padding(
                padding: EdgeInsets.only(left: 10),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      showConfirmPassword = !showConfirmPassword;
                    });
                  },
                  child: Icon(
                    showConfirmPassword
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Colors.black45,
                    size: 20,
                  ),
                ),
              ),
              hintText: 'Confirm password',
              hintStyle: TextStyle(color: Colors.black45, fontSize: 14),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black45, width: .4)),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black45, width: .4))),
        ));
  }
}
