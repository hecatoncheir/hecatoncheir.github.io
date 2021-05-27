import 'package:json_annotation/json_annotation.dart';

part 'pages.g.dart';

@JsonSerializable(anyMap: true, checked: false, explicitToJson: true)
class Pages {
  Page about;

  Pages({
    required this.about,
  });

  factory Pages.fromJson(Map<String, dynamic> json) => _$PagesFromJson(json);

  Map<String, dynamic> toJson() => _$PagesToJson(this);
}

@JsonSerializable(anyMap: true, checked: false, explicitToJson: true)
class Page {
  PageTitle title;
  String path;

  Page({
    required this.title,
    required this.path,
  });

  factory Page.fromJson(Map<String, dynamic> json) => _$PageFromJson(json);

  Map<String, dynamic> toJson() => _$PageToJson(this);
}

@JsonSerializable(anyMap: true, checked: false, explicitToJson: true)
class PageTitle {
  String en;
  String ru;

  PageTitle({
    required this.en,
    required this.ru,
  });

  factory PageTitle.fromJson(Map<String, dynamic> json) =>
      _$PageTitleFromJson(json);

  Map<String, dynamic> toJson() => _$PageTitleToJson(this);
}
