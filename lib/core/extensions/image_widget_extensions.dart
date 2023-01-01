// extension ImageExtension on String {

// }
//! on kısmının sağına tipini yazarsın  ve biz bu projede bir sınıfa güç katacağımızdan ismini yazacağız.

import 'package:flutter/cupertino.dart';

import '../enum/image_items_enum.dart';

extension ImageExtension on ImageNameEnum {
  //ImageItems classını güçlendirdik bu sayede
  Widget get imagePath => Image.asset("lib/images/$name.png"); // $name enum içinde ki değerler oluyor 
  // get ile çağrılır çağrılmaz bu döndürülür

}
