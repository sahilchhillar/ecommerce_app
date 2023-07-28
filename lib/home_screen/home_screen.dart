import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ECommerceApp extends StatefulWidget {
  const ECommerceApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ECommerceApp createState() => _ECommerceApp();
}

class _ECommerceApp extends State<ECommerceApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
                  height: 20,
                ),
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 150,
                      height: MediaQuery.of(context).size.height / 4,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 230, 230, 230),
                        borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(15), bottomStart: Radius.circular(15))
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Image(
                            image: AssetImage("assets/images/iphone14.jpeg"),
                            fit: BoxFit.contain,
                            width: 150,
                            height: 200,
                          ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                          width: 200,
                          child: Text(
                            "Apple iPhone 14 Pro Max (128 GB) - Starlight",
                            softWrap: true,
                            style: TextStyle(fontSize: 17, color: Colors.black),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        RatingBar.builder(
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 30,
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            // print(rating);
                          },
                        )
                      ],
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
