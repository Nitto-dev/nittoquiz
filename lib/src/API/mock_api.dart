import 'dart:async';

import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:frideos_core/frideos_core.dart';
import 'package:nittoquiz/src/API/utils_convete.dart';

import '../models/category.dart';
import '../models/question.dart';

import 'api_interface.dart';

class MockAPI implements QuestionsAPI {
  @override
  Future<bool> getCategories(StreamedList<Category> categories) async {
    categories.value = [];

    categories.addElement(
      Category(id: 1, name: 'Category demo'),
    );
    return true;
  }

  @override
  Future<bool> getQuestions(
      {StreamedList<Question> questions,
      int number,
      Category category,
      QuestionDifficulty difficulty,
      QuestionType type}) async {
    
    parseJsonFromAssets('assets/questions.json').then((value) {
      final result = (value['results'] as List)
          .map((question) => QuestionModel.fromJson(question));

      questions.value =
          result.map((question) => Question.fromQuestionModel(question)).toList();
      return true;
    });

    }
}
