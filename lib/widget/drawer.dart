import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:joblistingui/utils/color.dart';

class CFFlutterDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextStyle _tStyle = TextStyle(
        color: Color(0xFF1F88A0), fontSize: 18.0, fontWeight: FontWeight.w500);
    return Drawer(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: AppColor().blueColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.userCircle,
                      color: Colors.white,
                      size: 50.0,
                    ),
                    Text(
                      "username",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: ListView(children: <Widget>[
              ListTile(
                leading: Icon(
                  FontAwesomeIcons.home,
                  size: 20.0,
                  color: Color(0xFF1F88A0),
                ),
                title: Text(
                  "Home",
                  style: _tStyle,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(
                  FontAwesomeIcons.building,
                  size: 20.0,
                  color: Color(0xFF1F88A0),
                ),
                title: Text(
                  "Manpowers",
                  style: _tStyle,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(
                  FontAwesomeIcons.newspaper,
                  size: 20.0,
                  color: Color(0xFF1F88A0),
                ),
                title: Text(
                  "News",
                  style: _tStyle,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(
                  FontAwesomeIcons.globe,
                  size: 20.0,
                  color: Color(0xFF1F88A0),
                ),
                title: Text(
                  "Language",
                  style: _tStyle,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              Divider(
                color: Colors.grey[500],
              ),
              ListTile(
                leading: Icon(
                  FontAwesomeIcons.userCircle,
                  size: 20.0,
                  color: Color(0xFF1F88A0),
                ),
                title: Text(
                  "Profile",
                  style: _tStyle,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(
                  FontAwesomeIcons.bell,
                  size: 20.0,
                  color: Color(0xFF1F88A0),
                ),
                title: Text(
                  "Notifications",
                  style: _tStyle,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              Divider(
                color: Colors.grey[500],
              ),
              ListTile(
                leading: Icon(
                  FontAwesomeIcons.questionCircle,
                  size: 20.0,
                  color: Color(0xFF1F88A0),
                ),
                title: Text(
                  "FAQ",
                  style: _tStyle,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(
                  FontAwesomeIcons.phoneSquareAlt,
                  size: 20.0,
                  color: Color(0xFF1F88A0),
                ),
                title: Text(
                  "Contact us",
                  style: _tStyle,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(
                  FontAwesomeIcons.powerOff,
                  size: 20.0,
                  color: Color(0xFF1F88A0),
                ),
                title: Text(
                  "Log out",
                  style: _tStyle,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(
                  FontAwesomeIcons.home,
                  size: 20.0,
                  color: Color(0xFF1F88A0),
                ),
                title: Text(
                  "Home",
                  style: _tStyle,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(
                  FontAwesomeIcons.home,
                  size: 20.0,
                  color: Color(0xFF1F88A0),
                ),
                title: Text(
                  "Home",
                  style: _tStyle,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ]),
          )
        ],
      ),
    );
  }
}
