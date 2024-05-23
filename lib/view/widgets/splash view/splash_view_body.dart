import 'package:flutter/material.dart';
import 'package:notebook/core/constants/app%20theme/text_theme.dart';
import 'package:notebook/core/constants/assets/asset_images.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingText;

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 750));
    slidingText = Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
        .animate(animationController);
    animationController.forward();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            MyAssetImages.logo,
            fit: BoxFit.fill,
            height: 250,
          ),
        ),
        const SizedBox(height: 15),
        AnimatedBuilder(
          animation: animationController,
          builder: (context, child) => SlideTransition(
            position: slidingText,
            child: const Text(
              'Welcome to Notebook',
              style: FontStyles.font18,
            ),
          ),
        )
      ],
    );
  }
}
