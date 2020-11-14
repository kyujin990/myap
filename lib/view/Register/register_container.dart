import 'package:flutter/material.dart';
import 'package:myap/widget/roundedInputField.dart';

import '../../routing_contsants.dart';
import '../../routing_contsants.dart';
import '../../widget/roundedInputField.dart';

class RegisterContainer extends StatefulWidget {
  @override
  _RegisterContainerState createState() => _RegisterContainerState();
}

class _RegisterContainerState extends State<RegisterContainer> {
  // bool _ispwShowed = true;
  final EdgeInsets _defaultPadding = EdgeInsets.symmetric(horizontal: 50);
  TextEditingController _unamecontroller = TextEditingController();
  TextEditingController _passwdcontroller = TextEditingController();
  TextEditingController _firstNamecontroller = TextEditingController();
  TextEditingController _lastNamecontroller = TextEditingController();
  TextEditingController _addresscontroller = TextEditingController();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _phoneNumbercontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 30),
        margin: EdgeInsets.symmetric(vertical: 50),
        height: 1000,
        width: 500,
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
              height: 10,
            ),
            Text(
              'Đăng Ký'.toUpperCase(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            InputField(
              defaultPadding: _defaultPadding,
              controller: _emailcontroller,
              hint: 'Email',
              icon: Icons.email,
              obsText: false,
            ),
            SizedBox(
              height: 15,
            ),
            InputField(
              defaultPadding: _defaultPadding,
              controller: _unamecontroller,
              hint: 'Tài Khoản',
              icon: Icons.account_box,
              obsText: false,
            ),
            SizedBox(
              height: 15,
            ),
            InputField(
              defaultPadding: _defaultPadding,
              controller: _passwdcontroller,
              hint: 'Mật khẩu',
              icon: Icons.vpn_key_outlined,
              obsText: true,
            ),
            SizedBox(
              height: 15,
            ),
            InputField(
              defaultPadding: _defaultPadding,
              controller: _passwdcontroller,
              hint: 'Nhập lại mật khẩu',
              icon: Icons.vpn_key,
              obsText: true,
            ),
            SizedBox(
              height: 15,
            ),
            InputField(
              defaultPadding: _defaultPadding,
              controller: _firstNamecontroller,
              hint: 'Tên',
              icon: null,
              obsText: false,
            ),
            SizedBox(
              height: 15,
            ),
            InputField(
              defaultPadding: _defaultPadding,
              controller: _lastNamecontroller,
              hint: 'Họ',
              icon: null,
              obsText: false,
            ),
            SizedBox(
              height: 15,
            ),
            InputField(
              defaultPadding: _defaultPadding,
              controller: _addresscontroller,
              hint: 'Địa chỉ',
              icon: Icons.location_city,
              obsText: false,
            ),
            SizedBox(
              height: 15,
            ),
            InputField(
              defaultPadding: _defaultPadding,
              controller: _phoneNumbercontroller,
              hint: 'Số điện thoại',
              icon: Icons.phone,
              obsText: false,
              textType: TextInputType.phone,
            ),
            SizedBox(
              height: 40,
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
                  onPressed: () {},
                  color: Colors.green,
                  child: Text(
                    'Đăng ký',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
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
                      'Đã có tài khoản? ',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                      child: Text(
                        'Đăng nhập',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, LoginViewPage);
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
