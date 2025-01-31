import 'package:flutter/material.dart';
import 'package:seventh_stack_structures/utilsOrConstant/app_images.dart';
import 'package:seventh_stack_structures/widgets/custom_button.dart';
class HomePage  extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child:SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
              AppImages.appLogo,
              width: 400,
              height: 400,
              errorBuilder: (context, error, stackTrace) => const Icon(
               Icons.error,
               size: 50,
              color: Colors.red,)
              ),
              const CustomButton(
                color: Colors.red,
                  buttonText: "Home Button",
              ),
            ],
          ),
        )
      ),
    );
  }
}
