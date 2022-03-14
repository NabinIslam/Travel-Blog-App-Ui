import 'package:advance_ui/Model/travel.dart';
import 'package:flutter/material.dart';

class MostPopular extends StatelessWidget {
  final _list = Travel.mostPopular();
  final _pgCtrl = PageController(viewportFraction: .4);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: _pgCtrl,
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index){
        var travel = _list[index];
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30,left: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  travel.url,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 40,
              left: 30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    travel.name,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
      separatorBuilder: (context,index)=>SizedBox(width: 5,),
      itemCount: _list.length,
    );
  }
}

