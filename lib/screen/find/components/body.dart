import 'package:flutter/material.dart';
import 'package:movie_info/screen/find/components/search_box.dart';
import '../../../component/component.dart';
import 'category_card.dart';

class FindBody extends StatefulWidget {
  const FindBody({Key? key}) : super(key: key);

  @override
  State<FindBody> createState() => _FindBodyState();
}

class _FindBodyState extends State<FindBody> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: SearchBox(
              onChanged: (value) {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: kPrimaryColor,
                    width: 3.0,
                  ),
                ),
              ),
              child: const Text(
                " Categories",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87),
              ),
            ),
          ),
          const CategoryCard(
            category: "Coming Soon",
            imageUrl:
                "https://static.vecteezy.com/system/resources/thumbnails/003/582/701/small/coming-soon-background-illustration-template-design-free-vector.jpg",
          ),
          const CategoryCard(
            category: "Actions",
            imageUrl:
                "https://www.filmarasidergisi.com/wp-content/uploads/2020/06/jungle-cruise.jpg",
          ),
          const CategoryCard(
            category: "Fear",
            imageUrl:
                "https://i2.milimaj.com/i/milliyet/75/0x410/5c8cf1db07291c1d7400a5f9.jpg",
          ),
          const CategoryCard(
            category: "Animation",
            imageUrl:
                "https://www.skwigly.co.uk/wp-content/uploads/2015/12/maxresdefault.jpg",
          )
        ],
      ),
    );
  }
}
