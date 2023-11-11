part of "widgets.dart";

  Widget button(context, isLoginSelected) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Clicked')));
        Navigator.pushNamed(context, "/home.dart");
      },
      
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 60).copyWith(bottom: 15),
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  offset: Offset(3, 3),
                  blurRadius: 4,
                  spreadRadius: 1,
                  color: Colors.black45.withOpacity(.08))
            ],
            borderRadius: BorderRadius.circular(50)
                .copyWith(topRight: Radius.circular(0)),
            gradient: LinearGradient(colors: [
              Colors.blue,
              Colors.white,
            ])),
        child: Text(
          isLoginSelected ? 'Sign In' : 'Register',
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }