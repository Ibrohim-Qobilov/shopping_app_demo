import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoping_app/assets/constants/icons.dart';
import 'package:shoping_app/features/common/presentation/widgets/cached_image_network.dart';
import 'package:shoping_app/features/common/presentation/widgets/w_rating_bar.dart';
import 'package:shoping_app/features/common/presentation/widgets/w_sixed_box.dart';
import 'package:shoping_app/features/users/products/data/datasources/products_datasources.dart';
import 'package:shoping_app/features/users/products/data/models/all_products_model.dart';
import 'package:shoping_app/features/users/products/presentation/pages/product_detail.dart';
import 'package:shoping_app/utils/export_packages.dart.dart';

class CardWidget extends StatelessWidget {
  final AllProductsModel? data;
  const CardWidget({this.data, super.key});

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
                          data: data,
                        )));
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
                      imageUrl: data!.image,
                    ),
                  ),
                  const WSizedBox(),
                  SizedBox(
                    width: 150.w,
                    child: Text(
                      data!.title,
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
                        rating: data!.rating.rate,
                      ),
                      Text(
                        '\$ ${data!.price}',
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
        Positioned(
          top: 10,
          right: 10,
          child: InkWell(
            onTap: () {
              ProductsDataSources().addProductTolist(data!);
            },
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: black),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: SvgPicture.asset(AppIcons.basket),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
