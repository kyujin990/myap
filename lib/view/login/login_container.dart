import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:circular_check_box/circular_check_box.dart';
import 'package:myap/routing_contsants.dart';
import 'package:myap/widget/roundedInputField.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginContainer extends StatefulWidget {
  @override
  _LoginContainerState createState() => _LoginContainerState();
}

class _LoginContainerState extends State<LoginContainer> {
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  bool checkboxvalue = false;
  bool _isShowed = true;
  int count = 0;

  bool _isLoading = false;

  signIn(String email, String password) async {
    String url = 'https://reqres.in/api/login';
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map body = {"email": email, "password": password};
    var jsonResponse;
    var res = await http.post(url, body: body);
    if (res.statusCode == 200) {
      jsonResponse = json.decode(res.body);
      print("${res.statusCode}");
      print("${res.body}");

      if (jsonResponse != null) {
        setState(() {
          _isLoading = false;
        });

        sharedPreferences.setString("token", jsonResponse['token']);

        // Navigator.of(context).pushAndRemoveUntil(
        //   MaterialPageRoute(builder: (BuildContext context) => HomePage()),
        //   ModalRoute.withName(LoginViewPage),
        // );
        // (Route <dynamic> route => false);
      }
    } else {
      setState(() {
        _isLoading = false;
      });

      print("${res.body}");
    }
  }

  @override
  Widget build(BuildContext context) {
    final EdgeInsets _defaultPadding = EdgeInsets.symmetric(horizontal: 50);

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
            InputField(
              defaultPadding: _defaultPadding,
              controller: _emailcontroller,
              hint: 'Email',
              icon: Icons.email,
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: _defaultPadding,
              child: TextField(
                controller: _passwordcontroller,
                style: TextStyle(
                  color: Colors.white,
                ),
                obscureText: _isShowed,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 6, 0),
                    child: Icon(
                      Icons.security,
                      size: 32,
                      color: Colors.white,
                    ),
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsetsDirectional.only(end: 12),
                    child: IconButton(
                      icon: Icon(
                        _isShowed ? Icons.visibility_off : Icons.visibility,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          _isShowed = !_isShowed;
                        });
                      },
                    ),
                  ),
                  hintText: 'Password',
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
            ),
            // Text(
            //   _emailcontroller.text,
            //   style: TextStyle(
            //     fontSize: 50,
            //     color: Colors.white,
            //   ),
            // ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Row(
                children: [
                  CircularCheckBox(
                    inactiveColor: Colors.white,
                    value: checkboxvalue,
                    // activeColor: Colors.white,
                    onChanged: (bool value) {
                      setState(() {
                        checkboxvalue = value;
                      });
                    },
                  ),
                  Text(
                    'Lưu mật khẩu',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: _defaultPadding,
              child: Container(
                width: double.infinity,
                height: 45,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  onPressed: () {
                    (_emailcontroller.text == "" ||
                            _passwordcontroller.text == "")
                        ? null
                        : () {
                            setState(() {
                              _isLoading = true;
                              signIn(_emailcontroller.text,
                                  _passwordcontroller.text);
                            });
                          };
                  },
                  color: Colors.green,
                  child: Text(
                    'Đăng nhập',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: _defaultPadding,
              child: TextButton(
                child: Text(
                  'Quên mật khẩu?',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    //Router Quên mật khẩu
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 70),
              child: Divider(
                color: Colors.white,
                height: 2,
                thickness: 1.5,
              ),
            ),
            Padding(
              padding: _defaultPadding,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Chưa có tài khoản? ',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                      child: Text(
                        'Đăng Ký',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, RegisterViewPage);
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
