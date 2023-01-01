// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_extensions_learning/core/extensions/image_widget_extensions.dart';

import '../core/enum/image_items_enum.dart';
import '../state/is_visible.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<IsVisible>(context,listen: false).change();
          // provider ile methodu burada aktarıp çalıştırdık 
        },
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Provider.of<IsVisible>(context).isCheck // bool değişkeni alır 
              ? ImageNameEnum.doga.imagePath
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}

// flutter pub add provider

/*
/// Bu kadar basit temiz bir şekilde ekranda görebilirsin ///

enum ismi.enum içinde ki değerin ismi.extensions ile gelen widget
ImageNameEnum.doga.imagePath
*/
