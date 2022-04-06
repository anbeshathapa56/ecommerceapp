import 'package:ecommerceapp/models/models.dart';
import 'package:flutter/material.dart';


class HeroCarouselCard extends StatelessWidget {
  final Category category;
  const HeroCarouselCard({
    required this.category
  }) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 15),
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.network(category.imageUrl, fit: BoxFit.cover, width: 1000.0),
              Positioned(
                bottom: 1.0,
                left: 1.0,
                right: 2.0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Text(
                      category.name,
                      style: Theme.of(context).textTheme.headline2!.copyWith(
                        color: Colors.white,
                      )
                  ),
                ),
              ),
            ],
          )),
    );

  }
}
