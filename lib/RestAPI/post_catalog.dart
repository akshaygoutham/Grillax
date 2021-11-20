// // To parse this JSON data, do
// //
// //     final catalog = catalogFromJson(jsonString);
// import 'package:json_annotation/json_annotation.dart';
//
// import 'package:meta/meta.dart';
// import 'dart:convert';
//
// // To parse this JSON data, do
// //
// //     final grillax = grillaxFromJson(jsonString);
//
// Grillax grillaxFromJson(String str) => Grillax.fromJson(json.decode(str));
//
// String grillaxToJson(Grillax data) => json.encode(data.toJson());
//
// class Grillax {
//   Grillax({
//     @required this.success,
//     @required this.message,
//     @required this.data,
//   });
//
//   bool success;
//   String message;
//   List<Datum> data;
//
//   factory Grillax.fromJson(Map<String, dynamic> json) => Grillax(
//     success: json["success"],
//     message: json["message"],
//     data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "success": success,
//     "message": message,
//     "data": List<dynamic>.from(data.map((x) => x.toJson())),
//   };
// }
//
// class Datum {
//   Datum({
//      this.id,
//      this.catalogCategoryName,
//      this.catalogCategoryDescription,
//      this.catalogCategorySlug,
//      this.catalogCategoryImage,
//      this.imageUrl,
//      this.multipleImages,
//      this.children,
//   });
//
//   int id;
//   String catalogCategoryName;
//   String catalogCategoryDescription;
//   String catalogCategorySlug;
//   String catalogCategoryImage;
//   String imageUrl;
//   List<dynamic> multipleImages;
//   List<dynamic> children;
//
//   factory Datum.fromJson(Map<String, dynamic> json) => Datum(
//     id: json["_id"] ,
//     catalogCategoryName: json["catalog_category_name"],
//     catalogCategoryDescription: json["catalog_category_description"],
//     catalogCategorySlug: json["catalog_category_slug"],
//     catalogCategoryImage: json["catalog_category_image"],
//     imageUrl: json["image_url"],
//     multipleImages: List<dynamic>.from(json["multiple_images"].map((x) => x)),
//     children: List<dynamic>.from(json["children"].map((x) => x)),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "_id": id ,
//     "catalog_category_name": catalogCategoryName,
//     "catalog_category_description": catalogCategoryDescription,
//     "catalog_category_slug": catalogCategorySlug,
//     "catalog_category_image": catalogCategoryImage,
//     "image_url": imageUrl,
//     "multiple_images": List<dynamic>.from(multipleImages.map((x) => x)),
//     "children": List<dynamic>.from(children.map((x) => x)),
//   };
// }