import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myap/widget/roundedInputField.dart';


import '../../routing_contsants.dart';

class RegisterContainer extends StatefulWidget {
  @override
  _RegisterContainerState createState() => _RegisterContainerState();
}

class _RegisterContainerState extends State<RegisterContainer> {
  @override
  Widget build(BuildContext context) {
    final EdgeInsets _defaultPadding = EdgeInsets.symmetric(horizontal: 50);
    TextEditingController _unamecontroller = TextEditingController();
    TextEditingController _passwdcontroller = TextEditingController();
    TextEditingController _firstNamecontroller = TextEditingController();
    TextEditingController _lastNamecontroller = TextEditingController();
    TextEditingController _addresscontroller = TextEditingController();
    TextEditingController _emailcontroller = TextEditingController();
    TextEditingController _phoneNumbercontroller = TextEditingController();

    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 30),
        margin: EdgeInsets.symmetric(vertical: 50),
        height: 550,
        width: 400,
        decoration: BoxDecoration(
          color: Colors.indigo[600],
          borderRadius: BorderRadius.all(Radius.circular(7)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[600],
              blurRadius: 8,
              offset: Offset(5, 5),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, HomeViewPage);
              },
              child: Image.asset(
                'assets/logo1.png',
                height: 100,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            InputField(defaultPadding: _defaultPadding, controller: _emailcontroller , hint: 'Email', icon: Icons.email);
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: _defaultPadding,
              child: Column(
                children: [
                  TextField(
                    controller: _unamecontroller,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    obscureText: false,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(12, 0, 6, 0),
                        child: Icon(
                          Icons.account_box,
                          size: 32,
                          color: Colors.white,
                        ),
                      ),
                      hintText: 'Tài khoản',
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      hintStyle: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: _defaultPadding,
              child: Column(
                children: [
                  TextField(
                    controller: _unamecontroller,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    obscureText: false,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(12, 0, 6, 0),
                          child: Text(
                            'Tên',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )),
                      hintText: 'Tên',
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      hintStyle: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
