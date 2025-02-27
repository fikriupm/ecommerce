
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key,
    required this.iconColor, 
    required this.onPressed,
  });

  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
      final dark = THelperFunctions.isDarkMode(context);

    return Stack(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(Iconsax.shopping_bag,
                 color: dark ? TColors.light : TColors.dark,)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: dark ? TColors.light : TColors.dark,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
                child: Text("2",
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .apply(
                            color: dark ? TColors.dark : TColors.light,
                            fontSizeFactor: 0.8))),
          ),
        )
      ],
    );
  }
}
