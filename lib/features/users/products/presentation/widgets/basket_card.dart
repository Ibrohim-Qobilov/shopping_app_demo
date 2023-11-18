import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:shoping_app/features/common/presentation/widgets/cached_image_network.dart';
import 'package:shoping_app/features/common/presentation/widgets/w_rating_bar.dart';
import 'package:shoping_app/features/common/presentation/widgets/w_sixed_box.dart';
import 'package:shoping_app/features/users/products/data/models/all_products_model.dart';
import 'package:shoping_app/features/users/products/presentation/pages/product_detail.dart';
import 'package:shoping_app/utils/export_packages.dart.dart';

class BarketCardWidget extends StatelessWidget {
  final AllProductsModel? box;

  const BarketCardWidget({this.box, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ProductDetailPage(
                  data: box,
                ),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const WSizedBox(),
                  Center(
                    child: CachedNetworkImageWidget(
                      kHeight: 100,
                      kWidth: 100,
                      imageUrl: box!.image,
                    ),
                  ),
                  const WSizedBox(),
                  SizedBox(
                    width: 150.w,
                    child: Text(
                      box!.title,
                      maxLines: 1,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ),
                  const WSizedBox(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      WRatingBar(
                        rating: box!.rating.rate,
                      ),
                      Text(
                        '\$ ${box!.price}',
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
