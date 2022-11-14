// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names, prefer_typing_uninitialized_variables
import 'package:equatable/equatable.dart';

class ClothingModel extends Equatable {
  final String name;
  final String price;
  final List<ImageClothing> listImage;
  const ClothingModel({
    required this.name,
    required this.price,
    required this.listImage,
  });

  @override
  List<Object?> get props => [name, price, listImage];
}

class ImageClothing extends Equatable {
  final String image_url;

  const ImageClothing({required this.image_url});
  @override
  List<Object?> get props => [image_url];
}
