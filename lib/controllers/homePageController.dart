import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  // Anasayfa görsel ve text içeriği
  List<String> homePageImageContent = [
    "assets/animation/quiz.json",
    "assets/animation/noteCards.json",
    "assets/animation/book.json",
    "assets/animation/notes.json",
    "assets/animation/wordsCard.json",
  ];
  List<String> homePageTextContent = [
    "Quiz",
    "Words Cards",
    "Books",
    "Notebook",
    "Summaries",
  ];
}
