import 'package:flutter/material.dart';
import 'package:sign_button/sign_button.dart';

class signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var hei = MediaQuery.of(context).size.height;
    var wid = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/image2.png"), fit: BoxFit.fill)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: hei / 35,
              ),
              Image.asset("assets/image3.png", width: wid / 1.3),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 38, right: 38, top: 20, bottom: 20),
                  child: TextField(
                    style: TextStyle(fontSize: hei / 30),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.pinkAccent)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.pink)),
                        hintText: "Username",
                        prefixIcon: Icon(Icons.account_circle_sharp),
                        hintStyle: TextStyle(fontSize: hei / 40)),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 38, right: 38, top: 20, bottom: 20),
                  child: TextField(
                    style: TextStyle(fontSize: hei / 30),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.pinkAccent)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.pink)),
                        hintText: "Password",
                        prefixIcon: Icon(Icons.lock),
                        hintStyle: TextStyle(fontSize: hei / 40)),
                  ),
                ),
              ),
              SizedBox(
                height: hei/20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(hei/3, hei/14),
                      primary: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)))),
                  onPressed: () {},
                  child: Text("Sign In",style: TextStyle(
                    fontSize: hei/33
                  ),)),
              SizedBox(
                height: hei/50,
              ),
            Text ("or",style: TextStyle(
              color: Colors.black,fontSize: hei/30
            ),),
              SizedBox(
                height: hei/50,
              ),

              SignInButton(
                buttonType: ButtonType.google,
                onPressed: () {},
                buttonSize: ButtonSize.medium,
              ),
              SizedBox(
                height: hei/100,
              ),
              SignInButton(
                buttonType: ButtonType.apple,
                onPressed: () {},
                buttonSize: ButtonSize.medium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
