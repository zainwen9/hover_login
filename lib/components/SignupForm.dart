import 'package:flutter/material.dart';

import 'animatedHover.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            AnimatedHover(
              size: Size(360, 56),
              hoverColor: Colors.white,
              bgColor: Colors.white,
              border: Border.all(),
              offset: const Offset(6, -6),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                child: TextFormField(
                  onSaved: (name) {},
                  decoration: InputDecoration(
                    hintText: "Full name",
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: AnimatedHover(
                size: Size(360, 56),
                hoverColor: Colors.white,
                bgColor: Colors.white,
                border: Border.all(),
                offset: const Offset(6, -6),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  child: TextFormField(
                    onSaved: (email) {},
                    decoration: InputDecoration(
                      hintText: "Enter email",
                    ),
                  ),
                ),
              ),
            ),
            AnimatedHover(
              size: Size(360, 56),
              hoverColor: Colors.white,
              bgColor: Colors.white,
              border: Border.all(),
              offset: const Offset(6, -6),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                child: TextFormField(
                  obscureText: true,
                  onSaved: (password) {},
                  decoration: InputDecoration(
                    hintText: "Enter password",
                  ),
                ),
              ),
            ),
            SizedBox(height: 24,),
            AnimatedHover(
              size: Size(110, 48),
              curve: Curves.fastOutSlowIn,
              offset: Offset(6, -6),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(88, 48),
                  elevation: 0,
                  backgroundColor: Color(0xFF556124),
                        foregroundColor: Color(0xFFD9E1BE),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8),),
                  )
                ),
                onPressed: () {},
                child: Text("Sign Up",style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
