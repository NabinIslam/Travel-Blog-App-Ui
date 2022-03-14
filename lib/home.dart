import 'package:advance_ui/widget/most_popular.dart';
import 'package:advance_ui/widget/travel_blog.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(
              Icons.menu,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15,bottom: 15),
            child: Text(
              'Travel Blog',
              style: TextStyle(
                fontSize: 35,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: TravelBlogs(),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Most Popular',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  'View All',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.deepOrange,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: MostPopular(),
          ),
        ],
      ),
    );
  }
}
