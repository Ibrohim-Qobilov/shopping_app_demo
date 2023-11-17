import 'package:cached_network_image/cached_network_image.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shoping_app/assets/constants/images.dart';
import 'package:shoping_app/utils/export_packages.dart.dart';

class CachedNetworkImageWidget extends StatelessWidget {
  const CachedNetworkImageWidget({
    Key? key,
    this.imageUrl,
    this.kHeight,
    this.kWidth,
    this.fit = BoxFit.fill,
    this.radius,
  }) : super(key: key);
  final String? imageUrl;
  final BoxFit? fit;
  final double? kHeight;
  final double? kWidth;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        radius ?? 60,
      ),
      child: imageUrl == null || imageUrl == ''
          ? SizedBox(
              width: kWidth,
              height: kHeight,
              child: Center(
                child: Image.asset(
                  AppImage.image,

                  height: kHeight,
                  width: kWidth,
                  fit: BoxFit.cover,
                  // color: white,
                ),
              ),
            )
          : CachedNetworkImage(
              imageUrl: imageUrl!,
              placeholder: (context, url) => Shimmer.fromColors(
                highlightColor: Colors.grey[100]!,
                baseColor: Colors.grey[300]!,
                child: Container(
                  color: Colors.white,
                  width: kWidth,
                  height: kHeight,
                ),
              ),
              errorWidget: (context, url, error) => Image.asset(
                imageUrl!.contains('assets/')
                    ? imageUrl!
                    : "assets/images/default_product.png",
              ),
              width: kWidth,
              height: kHeight,
              fit: fit,
            ),
    );
  }
}
