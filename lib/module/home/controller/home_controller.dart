import 'package:flutter/material.dart';
import 'package:landing_page/state_util.dart';
import '../view/home_view.dart';

class HomeController extends State<HomeView> implements MvcController {
  static late HomeController instance;
  late HomeView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List<Map<String, dynamic>> posts = [
    {
      'id': 1,
      'photo': 'https://picsum.photos/1000?random=1',
      'title': 'Web Development Job',
      'category': 'Technology',
      'created_at': '2022-03-24',
    },
    {
      'id': 2,
      'photo': 'https://picsum.photos/1000?random=2',
      'title': 'Travel Writing Job',
      'category': 'Travel',
      'created_at': '2022-03-23',
    },
    {
      'id': 3,
      'photo': 'https://picsum.photos/1000?random=3',
      'title': 'Food Photography Job',
      'category': 'Food',
      'created_at': '2022-03-22',
    },
    {
      'id': 4,
      'photo': 'https://picsum.photos/1000?random=4',
      'title': 'Sports Coaching Job',
      'category': 'Sports',
      'created_at': '2022-03-21',
    },
    {
      'id': 5,
      'photo': 'https://picsum.photos/1000?random=5',
      'title': 'Fashion Design Job',
      'category': 'Fashion',
      'created_at': '2022-03-20',
    },
    {
      'id': 6,
      'photo': 'https://picsum.photos/1000?random=6',
      'title': 'Mobile App Development Job',
      'category': 'Technology',
      'created_at': '2022-03-19',
    },
    {
      'id': 7,
      'photo': 'https://picsum.photos/1000?random=7',
      'title': 'Travel Planning Job',
      'category': 'Travel',
      'created_at': '2022-03-18',
    },
    {
      'id': 8,
      'photo': 'https://picsum.photos/1000?random=8',
      'title': 'Food Blogging Job',
      'category': 'Food',
      'created_at': '2022-03-17',
    },
    {
      'id': 9,
      'photo': 'https://picsum.photos/1000?random=9',
      'title': 'Sports Journalism Job',
      'category': 'Sports',
      'created_at': '2022-03-16',
    },
    {
      'id': 10,
      'photo': 'https://picsum.photos/1000?random=10',
      'title': 'Fashion Styling Job',
      'category': 'Fashion',
      'created_at': '2022-03-15',
    },
  ];
}
