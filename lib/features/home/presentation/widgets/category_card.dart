
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/features/home/presentation/widgets/default_category_container.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {Key? key, required this.categoryImage, required this.categoryText,required this.onTap})
      : super(key: key);

  final String categoryImage;
  final String categoryText;
  final void Function()? onTap;

  Widget _buildCategoryIcon(BuildContext context) {
    return SizedBox(
        height: 44.h, width: 44.w, child: Image.asset(categoryImage));
  }

  Widget _buildCategoryTitle(BuildContext context) {
    return Text(
      categoryText,
      style: Theme.of(context).textTheme.titleSmall,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CategoryContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildCategoryIcon(context),
            _buildCategoryTitle(context),
          ],
        ),
      ),
    );
  }
}
