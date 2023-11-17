import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoping_app/features/common/presentation/widgets/cached_image_network.dart';
import 'package:shoping_app/features/common/presentation/widgets/w_app_bar.dart';
import 'package:shoping_app/features/common/presentation/widgets/w_rating_bar.dart';
import 'package:shoping_app/features/common/presentation/widgets/w_sixed_box.dart';
import 'package:shoping_app/features/users/products/data/models/all_products_model.dart';

class ProductDetailPage extends StatefulWidget {
  final AllProductsModel? data;
  const ProductDetailPage({super.key, this.data});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'To\'liq ma\'lumot'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
            child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Center(
                child: CachedNetworkImageWidget(
                  imageUrl: widget.data!.image,
                ),
              ),
              const Divider(),
              SizedBox(
                width: 300.w,
                child: Text(
                  widget.data!.title.toString(),
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ),
              const WSizedBox(),
              SizedBox(
                width: 300.w,
                child: Text(
                  widget.data!.description,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WRatingBar(
                    rating: widget.data!.rating.rate,
                  ),
                  Text(
                    '\$ ${widget.data!.price}',
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const WSizedBox(height: 20),
            ],
          ),
        )),
      ),
    );
  }
}
