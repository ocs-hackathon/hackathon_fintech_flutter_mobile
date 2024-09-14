import 'dart:math';

import 'package:hackathon_fintech_flutter_mobile/shared/theme/app_colors.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/constants/asset_constants/svg_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BaseLoadingIndicator extends StatefulWidget {
  const BaseLoadingIndicator({super.key});

  @override
  State<BaseLoadingIndicator> createState() => _BaseLoadingIndicatorState();
}

class _BaseLoadingIndicatorState extends State<BaseLoadingIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )
      ..forward()
      ..addListener(() {
        if (_controller.isCompleted) _controller.repeat();
      });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: 80,
            width: 80,
            child: CircularProgressIndicator(
              backgroundColor: AppColors.secondaryColor,
              color: AppColors.primaryColor,
              strokeWidth: 10,
              strokeCap: StrokeCap.butt,
            ),
          ),
          // Animated SVG logo
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Transform.scale(
                scale: sin(_controller.value * pi) * 0.6,
                child: SvgPicture.asset(
                  SvgConstants.logoSvg,
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
