import 'package:flutter/material.dart';
import 'package:fourth_counter_stateful_widget/Widgets/04.custom_chat_tile.dart';
// imported Custom Widget Which i have made in Widgets Folder
//For Reusbility & Best Approch for Development

class FourScreen extends StatelessWidget {
  const FourScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomChatTile(
              name: "SohAil MAnzoor",
              message: "KAhan Ho ?",
              time: "07:00pm",
            ),
            CustomChatTile(
              name: "Ahmed",
              message: "Where are you going ?",
              time: "12:00pm",
            ),
            CustomChatTile(
              message: "Hy",
              time: "12:00pm",
            ),

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
