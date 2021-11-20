// To parse this JSON data, do
//
//     final prod = prodFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Prod prodFromJson(String str) => Prod.fromJson(json.decode(str));

String prodToJson(Prod data) => json.encode(data.toJson());

class Prod {
  Prod({
    @required this.success,
    @required this.message,
    @required this.data,
  });

  bool success;
  String message;
  Data data;

  factory Prod.fromJson(Map<String, dynamic> json) => Prod(
    success: json["success"],
    message: json["message"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "message": message,
    "data": data.toJson(),
  };
}

class Data {
  Data({
    @required this.data,
    @required this.total,
    @required this.perPage,
  });

  List<Datum> data;
  int total;
  String perPage;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    total: json["total"],
    perPage: json["per_page"],
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "total": total,
    "per_page": perPage,
  };
}

class Datum {
  Datum({
     this.id,
     this.productName,
     this.catalogCategoryIds,
     this.productDescription,
     this.productManufacturerId,
     this.productMrp,
     this.productAvailability,
     this.productUnit,
     this.productUnitType,
     this.productSortOrder,
     this.productTax,
     this.productPreperationTime,
     this.productType,
     this.productCode,
     this.productIsenable,
     this.inclusiveTax,
     this.productFeaturedImage,
     this.productImages,
     this.variants,
     this.vendors,
     this.productAvailableOn,
     this.stock,
     this.productCountIncase,
     this.bulkPrices,
     this.productImageBaseUrl,
     this.offers,
     this.parent,
     this.tax,
     this.categoryName,
     this.units,
     this.reviews,
     this.imageUrl,
     this.strikePrice,
     this.productOgPrice,
     this.productPrice,
  });

  int id;
  String productName;
  int catalogCategoryIds;
  String productDescription;
  int productManufacturerId;
  int productMrp;
  int productAvailability;
  String productUnit;
  int productUnitType;
  int productSortOrder;
  dynamic productTax;
  int productPreperationTime;
  String productType;
  String productCode;
  int productIsenable;
  dynamic inclusiveTax;
  String productFeaturedImage;
  List<ProductImage> productImages;
  List<Variant> variants;
  List<Vendor> vendors;
  List<ProductAvailableOn> productAvailableOn;
  int stock;
  int productCountIncase;
  List<dynamic> bulkPrices;
  String productImageBaseUrl;
  List<dynamic> offers;
  List<Parent> parent;
  Tax tax;
  String categoryName;
  Units units;
  Reviews reviews;
  String imageUrl;
  int strikePrice;
  int productOgPrice;
  int productPrice;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["_id"],
    productName: json["product_name"],
    catalogCategoryIds: json["catalog_category_ids"],
    productDescription: json["product_description"],
    productManufacturerId: json["product_manufacturer_id"],
    productMrp: json["product_mrp"],
    productAvailability: json["product_availability"],
    productUnit: json["product_unit"],
    productUnitType: json["product_unit_type"],
    productSortOrder: json["product_sort_order"],
    productTax: json["product_tax"],
    productPreperationTime: json["product_preperation_time"],
    productType: json["product_type"],
    productCode: json["product_code"],
    productIsenable: json["product_isenable"],
    inclusiveTax: json["inclusive_tax"],
    productFeaturedImage: json["product_featured_image"],
    productImages: List<ProductImage>.from(json["product_images"].map((x) => ProductImage.fromJson(x))),
    variants: List<Variant>.from(json["variants"].map((x) => Variant.fromJson(x))),
    vendors: List<Vendor>.from(json["vendors"].map((x) => Vendor.fromJson(x))),
    productAvailableOn: json["product_available_on"] == null ? null : List<ProductAvailableOn>.from(json["product_available_on"].map((x) => ProductAvailableOn.fromJson(x))),
    stock: json["stock"] == null ? null : json["stock"],
    productCountIncase: json["product_count_incase"] == null ? null : json["product_count_incase"],
    bulkPrices: List<dynamic>.from(json["bulk_prices"].map((x) => x)),
    productImageBaseUrl: json["product_image_base_url"],
    offers: List<dynamic>.from(json["offers"].map((x) => x)),
    parent: List<Parent>.from(json["parent"].map((x) => Parent.fromJson(x))),
    tax: json["tax"] == null ? null : Tax.fromJson(json["tax"]),
    categoryName: json["category_name"],
    units: Units.fromJson(json["units"]),
    reviews: json["reviews"] == null ? null : Reviews.fromJson(json["reviews"]),
    imageUrl: json["image_url"],
    strikePrice: json["strike_price"],
    productOgPrice: json["product_og_price"],
    productPrice: json["product_price"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "product_name": productName,
    "catalog_category_ids": catalogCategoryIds,
    "product_description": productDescription,
    "product_manufacturer_id": productManufacturerId,
    "product_mrp": productMrp,
    "product_availability": productAvailability,
    "product_unit": productUnit,
    "product_unit_type": productUnitType,
    "product_sort_order": productSortOrder,
    "product_tax": productTax,
    "product_preperation_time": productPreperationTime,
    "product_type": productType,
    "product_code": productCode,
    "product_isenable": productIsenable,
    "inclusive_tax": inclusiveTax,
    "product_featured_image": productFeaturedImage,
    "product_images": List<dynamic>.from(productImages.map((x) => x.toJson())),
    "variants": List<dynamic>.from(variants.map((x) => x.toJson())),
    "vendors": List<dynamic>.from(vendors.map((x) => x.toJson())),
    "product_available_on": productAvailableOn == null ? null : List<dynamic>.from(productAvailableOn.map((x) => x.toJson())),
    "stock": stock == null ? null : stock,
    "product_count_incase": productCountIncase == null ? null : productCountIncase,
    "bulk_prices": List<dynamic>.from(bulkPrices.map((x) => x)),
    "product_image_base_url": productImageBaseUrl,
    "offers": List<dynamic>.from(offers.map((x) => x)),
    "parent": List<dynamic>.from(parent.map((x) => x.toJson())),
    "tax": tax == null ? null : tax.toJson(),
    "category_name": categoryName,
    "units": units.toJson(),
    "reviews": reviews == null ? null : reviews.toJson(),
    "image_url": imageUrl,
    "strike_price": strikePrice,
    "product_og_price": productOgPrice,
    "product_price": productPrice,
  };
}

class Parent {
  Parent({
    @required this.id,
    @required this.catalogCategoryName,
    @required this.catalogCategorySlug,
    @required this.depth,
  });

  int id;
  String catalogCategoryName;
  String catalogCategorySlug;
  int depth;

  factory Parent.fromJson(Map<String, dynamic> json) => Parent(
    id: json["_id"],
    catalogCategoryName: json["catalog_category_name"],
    catalogCategorySlug: json["catalog_category_slug"],
    depth: json["depth"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "catalog_category_name": catalogCategoryName,
    "catalog_category_slug": catalogCategorySlug,
    "depth": depth,
  };
}

class ProductAvailableOn {
  ProductAvailableOn({
    @required this.availableDayType,
    @required this.availableDay,
    @required this.availableFromTime,
    @required this.availableToTime,
    @required this.id,
  });

  String availableDayType;
  List<String> availableDay;
  String availableFromTime;
  String availableToTime;
  int id;

  factory ProductAvailableOn.fromJson(Map<String, dynamic> json) => ProductAvailableOn(
    availableDayType: json["available_day_type"],
    availableDay: json["available_day"] == null ? null : List<String>.from(json["available_day"].map((x) => x)),
    availableFromTime: json["available_from_time"],
    availableToTime: json["available_to_time"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "available_day_type": availableDayType,
    "available_day": availableDay == null ? null : List<dynamic>.from(availableDay.map((x) => x)),
    "available_from_time": availableFromTime,
    "available_to_time": availableToTime,
    "id": id,
  };
}

class ProductImage {
  ProductImage({
    @required this.title,
    @required this.variantValues,
    @required this.path,
    @required this.id,
    @required this.productImagePath,
  });

  Title title;
  List<dynamic> variantValues;
  String path;
  int id;
  String productImagePath;

  factory ProductImage.fromJson(Map<String, dynamic> json) => ProductImage(
    title: titleValues.map[json["title"]],
    variantValues: List<dynamic>.from(json["variant_values"].map((x) => x)),
    path: json["path"],
    id: json["id"],
    productImagePath: json["product_image_path"],
  );

  Map<String, dynamic> toJson() => {
    "title": titleValues.reverse[title],
    "variant_values": List<dynamic>.from(variantValues.map((x) => x)),
    "path": path,
    "id": id,
    "product_image_path": productImagePath,
  };
}

enum Title { EMPTY, TEST }

final titleValues = EnumValues({
  "": Title.EMPTY,
  "test": Title.TEST
});

class Reviews {
  Reviews({
    @required this.id,
    @required this.avgStar,
    @required this.count,
  });

  int id;
  double avgStar;
  int count;

  factory Reviews.fromJson(Map<String, dynamic> json) => Reviews(
    id: json["_id"],
    avgStar: json["avg_star"] == null ? null : json["avg_star"].toDouble(),
    count: json["count"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "avg_star": avgStar == null ? null : avgStar,
    "count": count,
  };
}

class Tax {
  Tax({
    @required this.id,
    @required this.active,
    @required this.taxName,
    @required this.taxDescription,
    @required this.taxRates,
    @required this.updatedAt,
    @required this.createdAt,
  });

  int id;
  int active;
  String taxName;
  Title taxDescription;
  List<TaxRate> taxRates;
  AtedAt updatedAt;
  AtedAt createdAt;

  factory Tax.fromJson(Map<String, dynamic> json) => Tax(
    id: json["_id"],
    active: json["active"],
    taxName: json["tax_name"],
    taxDescription: titleValues.map[json["tax_description"]],
    taxRates: List<TaxRate>.from(json["tax_rates"].map((x) => TaxRate.fromJson(x))),
    updatedAt: AtedAt.fromJson(json["updated_at"]),
    createdAt: AtedAt.fromJson(json["created_at"]),
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "active": active,
    "tax_name": taxName,
    "tax_description": titleValues.reverse[taxDescription],
    "tax_rates": List<dynamic>.from(taxRates.map((x) => x.toJson())),
    "updated_at": updatedAt.toJson(),
    "created_at": createdAt.toJson(),
  };
}

class AtedAt {
  AtedAt({
    @required this.date,
  });

  Date date;

  factory AtedAt.fromJson(Map<String, dynamic> json) => AtedAt(
    date: Date.fromJson(json["\u0024date"]),
  );

  Map<String, dynamic> toJson() => {
    "\u0024date": date.toJson(),
  };
}

class Date {
  Date({
    @required this.numberLong,
  });

  String numberLong;

  factory Date.fromJson(Map<String, dynamic> json) => Date(
    numberLong: json["\u0024numberLong"],
  );

  Map<String, dynamic> toJson() => {
    "\u0024numberLong": numberLong,
  };
}

class TaxRate {
  TaxRate({
    @required this.taxRateName,
    @required this.taxRatePriority,
    @required this.taxType,
    @required this.taxRateRate,
  });

  String taxRateName;
  String taxRatePriority;
  String taxType;
  double taxRateRate;

  factory TaxRate.fromJson(Map<String, dynamic> json) => TaxRate(
    taxRateName: json["tax_rate_name"],
    taxRatePriority: json["tax_rate_priority"],
    taxType: json["tax_type"],
    taxRateRate: json["tax_rate_rate"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "tax_rate_name": taxRateName,
    "tax_rate_priority": taxRatePriority,
    "tax_type": taxType,
    "tax_rate_rate": taxRateRate,
  };
}

class Units {
  Units();

  factory Units.fromJson(Map<String, dynamic> json) => Units(
  );

  Map<String, dynamic> toJson() => {
  };
}

class Variant {
  Variant({
    @required this.catalogVariantName,
    @required this.catalogVariantType,
    @required this.variantDetails,
    @required this.catalogVarientAvailablity,
    @required this.id,
  });

  String catalogVariantName;
  String catalogVariantType;
  List<VariantDetail> variantDetails;
  int catalogVarientAvailablity;
  int id;

  factory Variant.fromJson(Map<String, dynamic> json) => Variant(
    catalogVariantName: json["catalog_variant_name"],
    catalogVariantType: json["catalog_variant_type"],
    variantDetails: List<VariantDetail>.from(json["variant_details"].map((x) => VariantDetail.fromJson(x))),
    catalogVarientAvailablity: json["catalog_varient_availablity"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "catalog_variant_name": catalogVariantName,
    "catalog_variant_type": catalogVariantType,
    "variant_details": List<dynamic>.from(variantDetails.map((x) => x.toJson())),
    "catalog_varient_availablity": catalogVarientAvailablity,
    "id": id,
  };
}

class VariantDetail {
  VariantDetail({
    @required this.catalogVariantValueName,
    @required this.catalogVariantSortOrder,
    @required this.catalogVariantValueType,
    @required this.catalogVariantPrice,
    @required this.catalogVariantAvailablity,
    @required this.id,
  });

  String catalogVariantValueName;
  int catalogVariantSortOrder;
  EType catalogVariantValueType;
  dynamic catalogVariantPrice;
  int catalogVariantAvailablity;
  int id;

  factory VariantDetail.fromJson(Map<String, dynamic> json) => VariantDetail(
    catalogVariantValueName: json["catalog_variant_value_name"],
    catalogVariantSortOrder: json["catalog_variant_sort_order"],
    catalogVariantValueType: eTypeValues.map[json["catalog_variant_value_type"]],
    catalogVariantPrice: json["catalog_variant_price"],
    catalogVariantAvailablity: json["catalog_variant_availablity"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "catalog_variant_value_name": catalogVariantValueName,
    "catalog_variant_sort_order": catalogVariantSortOrder,
    "catalog_variant_value_type": eTypeValues.reverse[catalogVariantValueType],
    "catalog_variant_price": catalogVariantPrice,
    "catalog_variant_availablity": catalogVariantAvailablity,
    "id": id,
  };
}

enum EType { EMPTY, E_TYPE }

final eTypeValues = EnumValues({
  "+": EType.EMPTY,
  "-": EType.E_TYPE
});

class Vendor {
  Vendor({
    @required this.vendorId,
    @required this.vendorPrice,
    @required this.vendorAvailablity,
    @required this.stock,
    @required this.vendorVariantDetails,
    @required this.id,
  });

  int vendorId;
  dynamic vendorPrice;
  String vendorAvailablity;
  int stock;
  List<VendorVariantDetail> vendorVariantDetails;
  int id;

  factory Vendor.fromJson(Map<String, dynamic> json) => Vendor(
    vendorId: json["vendor_id"],
    vendorPrice: json["vendor_price"],
    vendorAvailablity: json["vendor_availablity"],
    stock: json["stock"] == null ? null : json["stock"],
    vendorVariantDetails: List<VendorVariantDetail>.from(json["vendor_variant_details"].map((x) => VendorVariantDetail.fromJson(x))),
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "vendor_id": vendorId,
    "vendor_price": vendorPrice,
    "vendor_availablity": vendorAvailablity,
    "stock": stock == null ? null : stock,
    "vendor_variant_details": List<dynamic>.from(vendorVariantDetails.map((x) => x.toJson())),
    "id": id,
  };
}

class VendorVariantDetail {
  VendorVariantDetail({
    @required this.variantId,
    @required this.variantValues,
  });

  int variantId;
  List<VariantValue> variantValues;

  factory VendorVariantDetail.fromJson(Map<String, dynamic> json) => VendorVariantDetail(
    variantId: json["variant_id"],
    variantValues: List<VariantValue>.from(json["variant_values"].map((x) => VariantValue.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "variant_id": variantId,
    "variant_values": List<dynamic>.from(variantValues.map((x) => x.toJson())),
  };
}

class VariantValue {
  VariantValue({
    @required this.variantValuePrice,
    @required this.variantValueId,
    @required this.variantPriceType,
    @required this.variantValueIsenable,
  });

  dynamic variantValuePrice;
  int variantValueId;
  EType variantPriceType;
  int variantValueIsenable;

  factory VariantValue.fromJson(Map<String, dynamic> json) => VariantValue(
    variantValuePrice: json["variant_value_price"],
    variantValueId: json["variant_value_id"],
    variantPriceType: eTypeValues.map[json["variant_price_type"]],
    variantValueIsenable: json["variant_value_isenable"],
  );

  Map<String, dynamic> toJson() => {
    "variant_value_price": variantValuePrice,
    "variant_value_id": variantValueId,
    "variant_price_type": eTypeValues.reverse[variantPriceType],
    "variant_value_isenable": variantValueIsenable,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
