import 'package:flutter/material.dart';
import 'package:sokan_msr/features/start/presentation/views/widgets/custom_on_boarding_content.dart';
import 'package:sokan_msr/features/start/presentation/views/widgets/on_bording_header_widget.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const .symmetric(vertical: 16, horizontal: 24),
        child: Column(
          children: [
            const OnBordingHeaderWidget(),
            const Expanded(child: CustomOnBoardingContent()),
          ],
        ),
      ),
    );
  }
}
