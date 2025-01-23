import 'package:flutter/material.dart';
import 'package:fourth_counter_stateful_widget/09.counter_view_List_Builder_with_add_item_using_TextField.dart';
import 'package:fourth_counter_stateful_widget/10.counter_view_List_Builder_add_and_delete_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterViewNine(),
    );
  }
}
