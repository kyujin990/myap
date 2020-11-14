import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myap/routing_contsants.dart';
import 'package:myap/view/Register/register_view.dart';
import 'package:myap/view/login/login_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width  of our screen
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[600],
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Image.asset(
            "assets/logo1.png",
            fit: BoxFit.scaleDown,
            height: 36,
          ),
        ),
        actions: [
          Row(
            children: size.width < 800
                ? []
                : [
                    FlatButton(
                      onPressed: () {},
                      child: FaIcon(
                        FontAwesomeIcons.facebook,
                        color: Colors.white,
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: FaIcon(
                        FontAwesomeIcons.twitter,
                        color: Colors.white,
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: FaIcon(
                        FontAwesomeIcons.linkedinIn,
                        color: Colors.white,
                      ),
                    ),
                  ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Container(
              width: 100,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                // color: Colors.indigo[600],
                onPressed: () {
                  Navigator.pushNamed(context, RegisterViewPage);
                },
                child: Text(
                  "Đăng ký",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Container(
              width: 100,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                color: Colors.yellow[700],
                onPressed: () {
                  Navigator.pushNamed(context, LoginViewPage);
                },
                child: Text(
                  "Đăng Nhập",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Header'),
              decoration: BoxDecoration(
                color: Colors.indigo[600],
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'Subtext',
              ),
            )
          ],
        ),
      ),
      body: Container(
        height: size.height,
        // it will take full width
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // NavBar(),
          ],
        ),
      ),
    );
  }
}

// class MenuItem extends StatelessWidget {
//   final String title;
//   final Function press;
//   const MenuItem({
//     Key key,
//     this.title,
//     this.press,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: press,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 15),
//         child: Text(
//           title.toUpperCase(),
//           style: TextStyle(
//             color: kTextcolor.withOpacity(0.3),
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }
