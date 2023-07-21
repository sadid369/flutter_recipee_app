// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class Categorie {
  List<Categories>? categories;

  Categorie({
    this.categories,
  });

  Categorie copyWith({
    List<Categories>? categories,
  }) {
    return Categorie(
      categories: categories ?? this.categories,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categories': categories!.map((x) => x.toMap()).toList(),
    };
  }

  factory Categorie.fromMap(Map<String, dynamic> map) {
    return Categorie(
      categories: map['categories'] != null
          ? List<Categories>.from(
              (map['categories'] as List<dynamic>).map<Categories?>(
                (x) => Categories.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Categorie.fromJson(String source) =>
      Categorie.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Categorie(categories: $categories)';
}

class Categories {
  String? idCategory;
  String? strCategory;
  String? strCategoryThumb;
  String? strCategoryDescription;

  Categories(
      {this.idCategory,
      this.strCategory,
      this.strCategoryThumb,
      this.strCategoryDescription});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idCategory': idCategory,
      'strCategory': strCategory,
      'strCategoryThumb': strCategoryThumb,
      'strCategoryDescription': strCategoryDescription,
    };
  }

  factory Categories.fromMap(Map<String, dynamic> map) {
    return Categories(
      idCategory:
          map['idCategory'] != null ? map['idCategory'] as String : null,
      strCategory:
          map['strCategory'] != null ? map['strCategory'] as String : null,
      strCategoryThumb: map['strCategoryThumb'] != null
          ? map['strCategoryThumb'] as String
          : null,
      strCategoryDescription: map['strCategoryDescription'] != null
          ? map['strCategoryDescription'] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Categories.fromJson(String source) =>
      Categories.fromMap(json.decode(source) as Map<String, dynamic>);
}
