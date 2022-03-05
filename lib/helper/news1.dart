import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:kishaan/models/article_model.dart';

class News {
  List<ArticleModel> news = [];

  Future<void> getNews() async {
    String url =
        "https://newsapi.org/v2/everything?q=agri&from=2022-02-05&sortBy=publishedAt&apiKey=6cf20b5dc53d4e9fb938e42d02633db6";
    var response =
        await http.get(Uri.parse(url)); //store the response which we get
    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      //status is in api
      jsonData["articles"].forEach((element) {
        //now elements are there in articles in api,and we fetch elements  one by one by indexing

        if (element["urlToImage"] != null && element["description"] != null) {
          //fetching from api and checking image is there or not

          ArticleModel articleModel = ArticleModel(
              // saving the data of each property in api in variables
              title: element['title'],
              author: element["author"],
              description: element["description"],
              url: element["url"],
              urlToImage: element["urlToImage"],
              content: element["context"]);

          news.add(articleModel);
        }
      });
    }
  }
}
