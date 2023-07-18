// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class Recipe {
  List<Meals>? meals;

  Recipe({this.meals});

  // Recipe.fromJson(Map<String, dynamic> json) {
  //   if (json['meals'] != null) {
  //     meals = <Meals>[];
  //     json['meals'].forEach((v) {
  //       meals!.add(new Meals.fromJson(v));
  //     });
  //   }
  // }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   if (this.meals != null) {
  //     data['meals'] = this.meals!.map((v) => v.toJson()).toList();
  //   }
  //   return data;
  // }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'meals': meals!.map((x) => x.toMap()).toList(),
    };
  }

  factory Recipe.fromMap(Map<String, dynamic> map) {
    return Recipe(
      meals: map['meals'] != null
          ? List<Meals>.from(
              (map['meals'] as List<dynamic>).map<Meals?>(
                (x) => Meals.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Recipe.fromJson(String source) =>
      Recipe.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Recipe(meals: $meals)';
}

class Meals {
  String? idMeal;
  String? strMeal;
  String? strDrinkAlternate;
  String? strCategory;
  String? strArea;
  String? strInstructions;
  String? strMealThumb;
  String? strTags;
  String? strYoutube;
  String? strIngredient1;
  String? strIngredient2;
  String? strIngredient3;
  String? strIngredient4;
  String? strIngredient5;
  String? strIngredient6;
  String? strIngredient7;
  String? strIngredient8;
  String? strIngredient9;
  String? strIngredient10;
  String? strIngredient11;
  String? strIngredient12;
  String? strIngredient13;
  String? strIngredient14;
  String? strIngredient15;
  String? strIngredient16;
  String? strIngredient17;
  String? strIngredient18;
  String? strIngredient19;
  String? strIngredient20;
  String? strMeasure1;
  String? strMeasure2;
  String? strMeasure3;
  String? strMeasure4;
  String? strMeasure5;
  String? strMeasure6;
  String? strMeasure7;
  String? strMeasure8;
  String? strMeasure9;
  String? strMeasure10;
  String? strMeasure11;
  String? strMeasure12;
  String? strMeasure13;
  String? strMeasure14;
  String? strMeasure15;
  String? strMeasure16;
  String? strMeasure17;
  String? strMeasure18;
  String? strMeasure19;
  String? strMeasure20;
  String? strSource;
  String? strImageSource;
  String? strCreativeCommonsConfirmed;
  String? dateModified;
  Meals({
    this.idMeal,
    this.strMeal,
    this.strDrinkAlternate,
    this.strCategory,
    this.strArea,
    this.strInstructions,
    this.strMealThumb,
    this.strTags,
    this.strYoutube,
    this.strIngredient1,
    this.strIngredient2,
    this.strIngredient3,
    this.strIngredient4,
    this.strIngredient5,
    this.strIngredient6,
    this.strIngredient7,
    this.strIngredient8,
    this.strIngredient9,
    this.strIngredient10,
    this.strIngredient11,
    this.strIngredient12,
    this.strIngredient13,
    this.strIngredient14,
    this.strIngredient15,
    this.strIngredient16,
    this.strIngredient17,
    this.strIngredient18,
    this.strIngredient19,
    this.strIngredient20,
    this.strMeasure1,
    this.strMeasure2,
    this.strMeasure3,
    this.strMeasure4,
    this.strMeasure5,
    this.strMeasure6,
    this.strMeasure7,
    this.strMeasure8,
    this.strMeasure9,
    this.strMeasure10,
    this.strMeasure11,
    this.strMeasure12,
    this.strMeasure13,
    this.strMeasure14,
    this.strMeasure15,
    this.strMeasure16,
    this.strMeasure17,
    this.strMeasure18,
    this.strMeasure19,
    this.strMeasure20,
    this.strSource,
    this.strImageSource,
    this.strCreativeCommonsConfirmed,
    this.dateModified,
  });

  Meals copyWith({
    String? idMeal,
    String? strMeal,
    String? strDrinkAlternate,
    String? strCategory,
    String? strArea,
    String? strInstructions,
    String? strMealThumb,
    String? strTags,
    String? strYoutube,
    String? strIngredient1,
    String? strIngredient2,
    String? strIngredient3,
    String? strIngredient4,
    String? strIngredient5,
    String? strIngredient6,
    String? strIngredient7,
    String? strIngredient8,
    String? strIngredient9,
    String? strIngredient10,
    String? strIngredient11,
    String? strIngredient12,
    String? strIngredient13,
    String? strIngredient14,
    String? strIngredient15,
    String? strIngredient16,
    String? strIngredient17,
    String? strIngredient18,
    String? strIngredient19,
    String? strIngredient20,
    String? strMeasure1,
    String? strMeasure2,
    String? strMeasure3,
    String? strMeasure4,
    String? strMeasure5,
    String? strMeasure6,
    String? strMeasure7,
    String? strMeasure8,
    String? strMeasure9,
    String? strMeasure10,
    String? strMeasure11,
    String? strMeasure12,
    String? strMeasure13,
    String? strMeasure14,
    String? strMeasure15,
    String? strMeasure16,
    String? strMeasure17,
    String? strMeasure18,
    String? strMeasure19,
    String? strMeasure20,
    String? strSource,
    String? strImageSource,
    String? strCreativeCommonsConfirmed,
    String? dateModified,
  }) {
    return Meals(
      idMeal: idMeal ?? this.idMeal,
      strMeal: strMeal ?? this.strMeal,
      strDrinkAlternate: strDrinkAlternate ?? this.strDrinkAlternate,
      strCategory: strCategory ?? this.strCategory,
      strArea: strArea ?? this.strArea,
      strInstructions: strInstructions ?? this.strInstructions,
      strMealThumb: strMealThumb ?? this.strMealThumb,
      strTags: strTags ?? this.strTags,
      strYoutube: strYoutube ?? this.strYoutube,
      strIngredient1: strIngredient1 ?? this.strIngredient1,
      strIngredient2: strIngredient2 ?? this.strIngredient2,
      strIngredient3: strIngredient3 ?? this.strIngredient3,
      strIngredient4: strIngredient4 ?? this.strIngredient4,
      strIngredient5: strIngredient5 ?? this.strIngredient5,
      strIngredient6: strIngredient6 ?? this.strIngredient6,
      strIngredient7: strIngredient7 ?? this.strIngredient7,
      strIngredient8: strIngredient8 ?? this.strIngredient8,
      strIngredient9: strIngredient9 ?? this.strIngredient9,
      strIngredient10: strIngredient10 ?? this.strIngredient10,
      strIngredient11: strIngredient11 ?? this.strIngredient11,
      strIngredient12: strIngredient12 ?? this.strIngredient12,
      strIngredient13: strIngredient13 ?? this.strIngredient13,
      strIngredient14: strIngredient14 ?? this.strIngredient14,
      strIngredient15: strIngredient15 ?? this.strIngredient15,
      strIngredient16: strIngredient16 ?? this.strIngredient16,
      strIngredient17: strIngredient17 ?? this.strIngredient17,
      strIngredient18: strIngredient18 ?? this.strIngredient18,
      strIngredient19: strIngredient19 ?? this.strIngredient19,
      strIngredient20: strIngredient20 ?? this.strIngredient20,
      strMeasure1: strMeasure1 ?? this.strMeasure1,
      strMeasure2: strMeasure2 ?? this.strMeasure2,
      strMeasure3: strMeasure3 ?? this.strMeasure3,
      strMeasure4: strMeasure4 ?? this.strMeasure4,
      strMeasure5: strMeasure5 ?? this.strMeasure5,
      strMeasure6: strMeasure6 ?? this.strMeasure6,
      strMeasure7: strMeasure7 ?? this.strMeasure7,
      strMeasure8: strMeasure8 ?? this.strMeasure8,
      strMeasure9: strMeasure9 ?? this.strMeasure9,
      strMeasure10: strMeasure10 ?? this.strMeasure10,
      strMeasure11: strMeasure11 ?? this.strMeasure11,
      strMeasure12: strMeasure12 ?? this.strMeasure12,
      strMeasure13: strMeasure13 ?? this.strMeasure13,
      strMeasure14: strMeasure14 ?? this.strMeasure14,
      strMeasure15: strMeasure15 ?? this.strMeasure15,
      strMeasure16: strMeasure16 ?? this.strMeasure16,
      strMeasure17: strMeasure17 ?? this.strMeasure17,
      strMeasure18: strMeasure18 ?? this.strMeasure18,
      strMeasure19: strMeasure19 ?? this.strMeasure19,
      strMeasure20: strMeasure20 ?? this.strMeasure20,
      strSource: strSource ?? this.strSource,
      strImageSource: strImageSource ?? this.strImageSource,
      strCreativeCommonsConfirmed:
          strCreativeCommonsConfirmed ?? this.strCreativeCommonsConfirmed,
      dateModified: dateModified ?? this.dateModified,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idMeal': idMeal,
      'strMeal': strMeal,
      'strDrinkAlternate': strDrinkAlternate,
      'strCategory': strCategory,
      'strArea': strArea,
      'strInstructions': strInstructions,
      'strMealThumb': strMealThumb,
      'strTags': strTags,
      'strYoutube': strYoutube,
      'strIngredient1': strIngredient1,
      'strIngredient2': strIngredient2,
      'strIngredient3': strIngredient3,
      'strIngredient4': strIngredient4,
      'strIngredient5': strIngredient5,
      'strIngredient6': strIngredient6,
      'strIngredient7': strIngredient7,
      'strIngredient8': strIngredient8,
      'strIngredient9': strIngredient9,
      'strIngredient10': strIngredient10,
      'strIngredient11': strIngredient11,
      'strIngredient12': strIngredient12,
      'strIngredient13': strIngredient13,
      'strIngredient14': strIngredient14,
      'strIngredient15': strIngredient15,
      'strIngredient16': strIngredient16,
      'strIngredient17': strIngredient17,
      'strIngredient18': strIngredient18,
      'strIngredient19': strIngredient19,
      'strIngredient20': strIngredient20,
      'strMeasure1': strMeasure1,
      'strMeasure2': strMeasure2,
      'strMeasure3': strMeasure3,
      'strMeasure4': strMeasure4,
      'strMeasure5': strMeasure5,
      'strMeasure6': strMeasure6,
      'strMeasure7': strMeasure7,
      'strMeasure8': strMeasure8,
      'strMeasure9': strMeasure9,
      'strMeasure10': strMeasure10,
      'strMeasure11': strMeasure11,
      'strMeasure12': strMeasure12,
      'strMeasure13': strMeasure13,
      'strMeasure14': strMeasure14,
      'strMeasure15': strMeasure15,
      'strMeasure16': strMeasure16,
      'strMeasure17': strMeasure17,
      'strMeasure18': strMeasure18,
      'strMeasure19': strMeasure19,
      'strMeasure20': strMeasure20,
      'strSource': strSource,
      'strImageSource': strImageSource,
      'strCreativeCommonsConfirmed': strCreativeCommonsConfirmed,
      'dateModified': dateModified,
    };
  }

  factory Meals.fromMap(Map<String, dynamic> map) {
    return Meals(
      idMeal: map['idMeal'] != null ? map['idMeal'] as String : null,
      strMeal: map['strMeal'] != null ? map['strMeal'] as String : null,
      strDrinkAlternate: map['strDrinkAlternate'] != null
          ? map['strDrinkAlternate'] as String
          : null,
      strCategory:
          map['strCategory'] != null ? map['strCategory'] as String : null,
      strArea: map['strArea'] != null ? map['strArea'] as String : null,
      strInstructions: map['strInstructions'] != null
          ? map['strInstructions'] as String
          : null,
      strMealThumb:
          map['strMealThumb'] != null ? map['strMealThumb'] as String : null,
      strTags: map['strTags'] != null ? map['strTags'] as String : null,
      strYoutube:
          map['strYoutube'] != null ? map['strYoutube'] as String : null,
      strIngredient1: map['strIngredient1'] != null
          ? map['strIngredient1'] as String
          : null,
      strIngredient2: map['strIngredient2'] != null
          ? map['strIngredient2'] as String
          : null,
      strIngredient3: map['strIngredient3'] != null
          ? map['strIngredient3'] as String
          : null,
      strIngredient4: map['strIngredient4'] != null
          ? map['strIngredient4'] as String
          : null,
      strIngredient5: map['strIngredient5'] != null
          ? map['strIngredient5'] as String
          : null,
      strIngredient6: map['strIngredient6'] != null
          ? map['strIngredient6'] as String
          : null,
      strIngredient7: map['strIngredient7'] != null
          ? map['strIngredient7'] as String
          : null,
      strIngredient8: map['strIngredient8'] != null
          ? map['strIngredient8'] as String
          : null,
      strIngredient9: map['strIngredient9'] != null
          ? map['strIngredient9'] as String
          : null,
      strIngredient10: map['strIngredient10'] != null
          ? map['strIngredient10'] as String
          : null,
      strIngredient11: map['strIngredient11'] != null
          ? map['strIngredient11'] as String
          : null,
      strIngredient12: map['strIngredient12'] != null
          ? map['strIngredient12'] as String
          : null,
      strIngredient13: map['strIngredient13'] != null
          ? map['strIngredient13'] as String
          : null,
      strIngredient14: map['strIngredient14'] != null
          ? map['strIngredient14'] as String
          : null,
      strIngredient15: map['strIngredient15'] != null
          ? map['strIngredient15'] as String
          : null,
      strIngredient16: map['strIngredient16'] != null
          ? map['strIngredient16'] as String
          : null,
      strIngredient17: map['strIngredient17'] != null
          ? map['strIngredient17'] as String
          : null,
      strIngredient18: map['strIngredient18'] != null
          ? map['strIngredient18'] as String
          : null,
      strIngredient19: map['strIngredient19'] != null
          ? map['strIngredient19'] as String
          : null,
      strIngredient20: map['strIngredient20'] != null
          ? map['strIngredient20'] as String
          : null,
      strMeasure1:
          map['strMeasure1'] != null ? map['strMeasure1'] as String : null,
      strMeasure2:
          map['strMeasure2'] != null ? map['strMeasure2'] as String : null,
      strMeasure3:
          map['strMeasure3'] != null ? map['strMeasure3'] as String : null,
      strMeasure4:
          map['strMeasure4'] != null ? map['strMeasure4'] as String : null,
      strMeasure5:
          map['strMeasure5'] != null ? map['strMeasure5'] as String : null,
      strMeasure6:
          map['strMeasure6'] != null ? map['strMeasure6'] as String : null,
      strMeasure7:
          map['strMeasure7'] != null ? map['strMeasure7'] as String : null,
      strMeasure8:
          map['strMeasure8'] != null ? map['strMeasure8'] as String : null,
      strMeasure9:
          map['strMeasure9'] != null ? map['strMeasure9'] as String : null,
      strMeasure10:
          map['strMeasure10'] != null ? map['strMeasure10'] as String : null,
      strMeasure11:
          map['strMeasure11'] != null ? map['strMeasure11'] as String : null,
      strMeasure12:
          map['strMeasure12'] != null ? map['strMeasure12'] as String : null,
      strMeasure13:
          map['strMeasure13'] != null ? map['strMeasure13'] as String : null,
      strMeasure14:
          map['strMeasure14'] != null ? map['strMeasure14'] as String : null,
      strMeasure15:
          map['strMeasure15'] != null ? map['strMeasure15'] as String : null,
      strMeasure16:
          map['strMeasure16'] != null ? map['strMeasure16'] as String : null,
      strMeasure17:
          map['strMeasure17'] != null ? map['strMeasure17'] as String : null,
      strMeasure18:
          map['strMeasure18'] != null ? map['strMeasure18'] as String : null,
      strMeasure19:
          map['strMeasure19'] != null ? map['strMeasure19'] as String : null,
      strMeasure20:
          map['strMeasure20'] != null ? map['strMeasure20'] as String : null,
      strSource: map['strSource'] != null ? map['strSource'] as String : null,
      strImageSource: map['strImageSource'] != null
          ? map['strImageSource'] as String
          : null,
      strCreativeCommonsConfirmed: map['strCreativeCommonsConfirmed'] != null
          ? map['strCreativeCommonsConfirmed'] as String
          : null,
      dateModified:
          map['dateModified'] != null ? map['dateModified'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Meals.fromJson(String source) =>
      Meals.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Meals(idMeal: $idMeal, strMeal: $strMeal, strDrinkAlternate: $strDrinkAlternate, strCategory: $strCategory, strArea: $strArea, strInstructions: $strInstructions, strMealThumb: $strMealThumb, strTags: $strTags, strYoutube: $strYoutube, strIngredient1: $strIngredient1, strIngredient2: $strIngredient2, strIngredient3: $strIngredient3, strIngredient4: $strIngredient4, strIngredient5: $strIngredient5, strIngredient6: $strIngredient6, strIngredient7: $strIngredient7, strIngredient8: $strIngredient8, strIngredient9: $strIngredient9, strIngredient10: $strIngredient10, strIngredient11: $strIngredient11, strIngredient12: $strIngredient12, strIngredient13: $strIngredient13, strIngredient14: $strIngredient14, strIngredient15: $strIngredient15, strIngredient16: $strIngredient16, strIngredient17: $strIngredient17, strIngredient18: $strIngredient18, strIngredient19: $strIngredient19, strIngredient20: $strIngredient20, strMeasure1: $strMeasure1, strMeasure2: $strMeasure2, strMeasure3: $strMeasure3, strMeasure4: $strMeasure4, strMeasure5: $strMeasure5, strMeasure6: $strMeasure6, strMeasure7: $strMeasure7, strMeasure8: $strMeasure8, strMeasure9: $strMeasure9, strMeasure10: $strMeasure10, strMeasure11: $strMeasure11, strMeasure12: $strMeasure12, strMeasure13: $strMeasure13, strMeasure14: $strMeasure14, strMeasure15: $strMeasure15, strMeasure16: $strMeasure16, strMeasure17: $strMeasure17, strMeasure18: $strMeasure18, strMeasure19: $strMeasure19, strMeasure20: $strMeasure20, strSource: $strSource, strImageSource: $strImageSource, strCreativeCommonsConfirmed: $strCreativeCommonsConfirmed, dateModified: $dateModified)';
  }
}
