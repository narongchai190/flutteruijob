import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:joblistingui/provider/tap_provider.dart';
import 'package:joblistingui/utils/color.dart';
import 'package:joblistingui/utils/data.dart';
import 'package:joblistingui/utils/sizes_helpers.dart';
import 'package:joblistingui/widget/drawer.dart';
import 'package:joblistingui/widget/text_widgets.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _selectedCountry;
  String _selectedTime;
  String _selectedType;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TapProvider>(context);
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: _appBar(context),
      drawer: CFFlutterDrawer(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            _topContainer(context),
            _bottomContainer(context, provider),
          ],
        ),
      ),
    );
  }

  Widget _topContainer(context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height / 5.6,
      height: displayHeight(context) * 0.18,
      decoration: BoxDecoration(
          color: AppColor().blueColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextWidgets(
            title: 'Find you job',
            color: AppColor().whiteColor,
            fs: 22.0,
            fw: FontWeight.w700,
            letterSpacing: 1.5,
          ),
          SizedBox(height: 15.0),
          _dropDown(context),
        ],
      ),
    );
  }

  Widget _dropDown(context) {
    return Container(
      height: 45.0,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            height: 40.0,
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            // padding: const EdgeInsets.only(left: 4.0, right: 4.0),
            decoration: BoxDecoration(
              color: Color(0xFF91CCDA),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                iconEnabledColor: Colors.white,
                iconDisabledColor: Colors.white,
                iconSize: 30.0,
                hint: Text(
                  'country',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                value: _selectedCountry,
                items: country.map((contries) {
                  return DropdownMenuItem(
                    child: Text(
                      contries,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                      ),
                    ),
                    value: contries,
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedCountry = value;
                  });
                },
              ),
            ),
          ),
          SizedBox(width: 8.0),
          Container(
            height: 40.0,
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            // padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            decoration: BoxDecoration(
              color: Color(0xFF91CCDA),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                iconEnabledColor: Colors.white,
                iconDisabledColor: Colors.white,
                iconSize: 30.0,
                hint: Text(
                  'Full time',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                value: _selectedTime,
                items: time.map((time) {
                  return DropdownMenuItem(
                    child: Text(
                      time,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                      ),
                    ),
                    value: time,
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedTime = value;
                  });
                },
              ),
            ),
          ),
          SizedBox(width: 8.0),
          Container(
            height: 40.0,
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            // padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            decoration: BoxDecoration(
              color: Color(0xFF91CCDA),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                iconEnabledColor: Colors.white,
                iconDisabledColor: Colors.white,
                iconSize: 30.0,
                hint: Text(
                  'Freelance',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                value: _selectedType,
                items: jobType.map((jobType) {
                  return DropdownMenuItem(
                    child: Text(
                      jobType,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                      ),
                    ),
                    value: jobType,
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedType = value;
                  });
                },
              ),
            ),
          ),
          SizedBox(width: 12.0),
          Container(
            height: 45.0,
            width: 45.0,
            decoration: BoxDecoration(
                color: AppColor().whiteColor,
                borderRadius: BorderRadius.circular(100.0)),
            child: Center(
              child: Icon(
                FontAwesomeIcons.arrowAltCircleRight,
                color: AppColor().blueColor,
              ),
            ),
          ),
          SizedBox(width: 12.0),
        ],
      ),
    );
  }

  Widget _bottomContainer(context, provider) {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.58,
      height: displayHeight(context) * 0.58,
      child: ListView(
        // shrinkWrap: true,
        children: <Widget>[
          Column(
            children: <Widget>[
              // SizedBox(height: 10.0),
              _categoryContainer(context, provider),
              SizedBox(height: 10.0),
              _topCompanies(context, provider),
              SizedBox(height: 10.0),
              _recentlyAddedJob(context, provider),
              SizedBox(height: 25.0),
              _trendingJobs(context, provider),
            ],
          ),
        ],
      ),
    );
  }

  Widget _categoryContainer(context, provider) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFBCCDD1),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TextWidgets(
                title: 'Categories',
                color: Color(0xFF37636D),
                fs: 18.0,
                fw: FontWeight.w800,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: AppColor().blueColor,
                  ),
                ),
                child: Center(
                  child: TextWidgets(
                    title: 'SEE ALL',
                    color: AppColor().blueColor,
                    fs: 16.0,
                    fw: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
          Container(
            // height: 100.0,
            // height: MediaQuery.of(context).size.height * 0.20,
            height: displayHeight(context) * 0.19,
            // color: Colors.purple,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          provider.isTap = index;
                        },
                        child: Container(
                          height: 90.0,
                          width: 60.0,
                          decoration: BoxDecoration(
                            color: provider.isTap == index
                                ? AppColor().blueColor
                                : AppColor().whiteColor,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 4,
                                  blurRadius: 5,
                                  offset: Offset(0, 3)),
                            ],
                          ),
                          child: Center(
                            child: Icon(
                              categories[index].icon,
                              color: provider.isTap == index
                                  ? AppColor().whiteColor
                                  : AppColor().blueColor,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        categories[index].title,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    Container(
                      width: 20.0,
                      color: Colors.transparent,
                    ),
                itemCount: categories.length),
          ),
        ],
      ),
    );
  }

  Widget _topCompanies(context, provider) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TextWidgets(
                title: 'Top Companies',
                color: Color(0xFF37636D),
                fs: 18.0,
                fw: FontWeight.w800,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: AppColor().blueColor,
                  ),
                ),
                child: Center(
                  child: TextWidgets(
                    title: 'SEE ALL',
                    color: AppColor().blueColor,
                    fs: 16.0,
                    fw: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Container(
            // height: 100.0,
            // height: MediaQuery.of(context).size.height * 0.20,
            height: displayWidth(context) * 0.33,
            // color: Colors.purple,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 18.0, vertical: 18.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 4,
                                blurRadius: 5,
                                offset: Offset(0, 3)),
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            Icon(companies[index].icon),
                            SizedBox(height: 5.0),
                            Text(
                              companies[index].title,
                              style: TextStyle(color: Colors.blue[900]),
                            ),
                            SizedBox(height: 1.0),
                            Text(companies[index].subtitle),
                          ],
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    Container(
                      width: 16.0,
                      color: Colors.transparent,
                    ),
                itemCount: companies.length),
          ),
        ],
      ),
    );
  }

  Widget _recentlyAddedJob(context, provider) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TextWidgets(
                title: 'Recently Added Job',
                color: Color(0xFF37636D),
                fs: 18.0,
                fw: FontWeight.w800,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: AppColor().blueColor,
                  ),
                ),
                child: Center(
                  child: TextWidgets(
                    title: 'SEE ALL',
                    color: AppColor().blueColor,
                    fs: 16.0,
                    fw: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Container(
            // height: 100.0,
            // height: MediaQuery.of(context).size.height * 0.14,
            // color: Colors.purple,
            child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    decoration: BoxDecoration(
                        color: Color(0xFFBCCDD1),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: ListTile(
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            rJob[index].title,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            rJob[index].subtitle,
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 12.0,
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                color: Colors.grey[500],
                                size: 10.0,
                              ),
                              Text(
                                'Nepal,Kathmandu',
                                style: TextStyle(
                                  color: Colors.grey[500],
                                  fontSize: 8.0,
                                ),
                              ),
                              SizedBox(width: 5.0),
                              Icon(
                                Icons.timer,
                                color: Colors.grey[500],
                                size: 10.0,
                              ),
                              Text(
                                '2 hrs 30min ago',
                                style: TextStyle(
                                  color: Colors.grey[500],
                                  fontSize: 8.0,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      leading: Image.asset(
                        'assets/facebook.png',
                        height: 40.0,
                      ),
                      trailing: Icon(rJob[index].icon2),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    Divider(),
                // Container(
                //   width: 16.0,
                //   color: Colors.transparent,
                // ),
                itemCount: rJob.length),
          ),
        ],
      ),
    );
  }

  Widget _trendingJobs(context, provider) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TextWidgets(
                title: 'Trending Job',
                color: Colors.black,
                fs: 18.0,
                fw: FontWeight.w500,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: AppColor().blueColor,
                  ),
                ),
                child: Center(
                  child: TextWidgets(
                    title: 'SEE ALL',
                    color: AppColor().blueColor,
                    fs: 16.0,
                    fw: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Container(
            // height: 100.0,
            // height: MediaQuery.of(context).size.height * 0.14,
            // color: Colors.purple,
            child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    decoration: BoxDecoration(
                        color: Color(0xFFBCCDD1),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: ListTile(
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            rJob[index].title,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            rJob[index].subtitle,
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 12.0,
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                color: Colors.grey[500],
                                size: 10.0,
                              ),
                              Text(
                                'Nepal,Kathmandu',
                                style: TextStyle(
                                  color: Colors.grey[500],
                                  fontSize: 8.0,
                                ),
                              ),
                              SizedBox(width: 5.0),
                              Icon(
                                Icons.timer,
                                color: Colors.grey[500],
                                size: 10.0,
                              ),
                              Text(
                                '2 hrs 30min ago',
                                style: TextStyle(
                                  color: Colors.grey[500],
                                  fontSize: 8.0,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      leading: Image.asset(
                        'assets/facebook.png',
                        height: 40.0,
                      ),
                      trailing: Icon(rJob[index].icon2),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    Divider(),
                // Container(
                //   width: 16.0,
                //   color: Colors.transparent,
                // ),
                itemCount: rJob.length),
          ),
        ],
      ),
    );
  }

  Widget _appBar(context) {
    return AppBar(
      backgroundColor: AppColor().blueColor,
      elevation: 0.0,
      actions: <Widget>[
        IconButton(
          icon: Icon(
            FontAwesomeIcons.bell,
            color: AppColor().whiteColor,
            size: 25.0,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            FontAwesomeIcons.userCircle,
            color: AppColor().whiteColor,
            size: 25.0,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.more_vert,
            color: AppColor().whiteColor,
            size: 25.0,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}


