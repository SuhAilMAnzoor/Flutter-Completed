import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// imported Custom Widget Which i have made in Widgets Folder
//For Reusbility & Best Approch for Development
import 'package:third_custom_ui_custom_stateless_widget/Widgets/04.custom_chat_tile.dart';

class FourScreen extends StatelessWidget {
  const FourScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const CustomChatTile(
              name: "SohAil MAnzoor",
              message: "KAhan Ho ?",
              time: "07:00pm",
            ),
            const CustomChatTile(
              name: "Ahmed",
              message: "Where are you going ?",
              time: "12:00pm",
            ),
            const CustomChatTile(
              message: "Hy",
              time: "12:00pm",
            ),
            Container(
              decoration: BoxDecoration(),
            )
            // CustomChatTile(),
            // i made it more easy to call that class
            // jitna daf men chaho previous code men app ne dekh ke hum wo
            // code par par linkha par rha tha
            // ab us code ko ek class men wrap kar ke yaha par mane call karwaya
            // ab jo bhi changes karne hoge mujhe us class men karne hoge jo k mane
            // Widgets folder men custom_chat_tile ke naam se bane hai
          ],
        ),
      ),
    );
  }
}
