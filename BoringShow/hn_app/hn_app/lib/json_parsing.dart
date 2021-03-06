import 'dart:convert' as json;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'serializers.dart';

// flutter packages pub run build_runner build
part 'json_parsing.g.dart';

abstract class Article implements Built<Article, ArticleBuilder> {
  static Serializer<Article> get serializer => _$articleSerializer;

  int get id;

  @nullable
  bool get deleted;

  String get type;

  String get by;

  int get time;

  @nullable
  String get text;

  @nullable
  bool get dead;

  @nullable
  int get parent;

  @nullable
  String get poll;

  BuiltList<Object> get kids;

  @nullable
  String get url;

  @nullable
  int get score;

  @nullable
  String get title;

  BuiltList<Object> get parts;

  @nullable
  int get descendants;

  Article._();

  factory Article([void Function(ArticleBuilder) updates]) = _$Article;
}

List<int> parseTopStories(String jsonStr) {
  return [];
//  final parsed = json.jsonDecode(jsonStr);
//  final listOfIds = List<int>.from(parsed);
//  return listOfIds;
}

Article parseArticle(String jsonStr) {
  final parsed = json.jsonDecode(jsonStr);
  Article article = standardSerializers.deserializeWith(Article.serializer, parsed);
  return article;
}
