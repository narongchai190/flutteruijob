import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:joblistingui/models/category_model.dart';
import 'package:joblistingui/models/companies_model.dart';
import 'package:joblistingui/models/recently_added_job_model.dart';
import 'package:joblistingui/utils/color.dart';

List<String> country = [
  'Nepal',
  'India',
  'Bhutan',
  'Japan',
  'China',
];
List<String> time = [
  'Full Time',
  'Part Time',
  'Any',
];
List<String> jobType = [
  'Freelance',
  'Developer',
  'Programmer',
  'Accountaint',
  'Teacher'
];


List<Categories> categories = [
  Categories(
    'IT',
    Icons.code,
    AppColor().blueColor,
  ),
  Categories(
    'Hotel',
    FontAwesomeIcons.hotel,
    AppColor().blueColor,
  ),
  Categories(
    'Labour',
    Icons.work,
    AppColor().blueColor,
  ),
  Categories(
    'Airlines',
    FontAwesomeIcons.planeArrival,
    AppColor().blueColor,
  ),
  Categories(
    'Health',
    FontAwesomeIcons.heart,
    AppColor().blueColor,
  ),
];


List<TopCompanies> companies = [
  TopCompanies(
    'Facebook',
    'Nepal',
    FontAwesomeIcons.facebook,
    AppColor().blueColor,
  ),
  TopCompanies(
    'Facebook',
    'Nepal',
    FontAwesomeIcons.facebook,
    AppColor().blueColor,
  ),
  TopCompanies(
    'Facebook',
    'Nepal',
    FontAwesomeIcons.facebook,
    AppColor().blueColor,
  ),
  TopCompanies(
    'Facebook',
    'Nepal',
    FontAwesomeIcons.facebook,
    AppColor().blueColor,
  ),
  TopCompanies(
    'Facebook',
    'Nepal',
    FontAwesomeIcons.facebook,
    AppColor().blueColor,
  ),
];


List<RecentlyAddedJob> rJob = [
  RecentlyAddedJob(
    'Hotel & Resturant',
    'Company Name',
    Image.asset('assets/facebook.png'),
    FontAwesomeIcons.star,
    AppColor().blueColor,
  ),
  RecentlyAddedJob(
    'Hotel & Resturant',
    'Company Name',
    Image.asset('assets/facebook.png'),
    FontAwesomeIcons.star,
    AppColor().blueColor,
  ),
  RecentlyAddedJob(
    'Hotel & Resturant',
    'Company Name',
    Image.asset('assets/facebook.png'),
    FontAwesomeIcons.star,
    AppColor().blueColor,
  ),
  RecentlyAddedJob(
    'Hotel & Resturant',
    'Company name',
    Image.asset('assets/facebook.png'),
    FontAwesomeIcons.star,
    AppColor().blueColor,
  ),
  RecentlyAddedJob(
    'Hotel & Resturant',
    'Company Name',
    Image.asset('assets/facebook.png'),
    FontAwesomeIcons.star,
    AppColor().blueColor,
  ),
];
