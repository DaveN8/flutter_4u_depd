part of "widgets.dart";

  Widget emailField() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: TextField(
          style: TextStyle(color: Colors.black45, fontSize: 14),
          decoration: InputDecoration(
              prefixIconConstraints: BoxConstraints(minWidth: 24),
              prefixIcon: Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.email,
                  color: Colors.black45,
                  size: 20,
                ),
              ),
              hintText: 'Enter email',
              hintStyle: TextStyle(color: Colors.black45, fontSize: 14),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black45, width: .4)),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black45, width: .4))),
        ));
  }

  Widget forgotPassword() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.only(top: 10, right: 58, bottom: 30),
        child: InkWell(
          onTap: () {
            // navigate to other screen
          },
          child: Text(
            'Forgot password?',
            style: TextStyle(
                color: Colors.black45,
                fontSize: 12,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }