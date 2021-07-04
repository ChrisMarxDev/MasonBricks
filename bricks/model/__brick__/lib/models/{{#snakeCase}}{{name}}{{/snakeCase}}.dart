{{#serializable}}

import 'package:json_annotation/json_annotation.dart';

part '{{#snakeCase}}{{name}}{{/snakeCase}}.g.dart';

@JsonSerializable()
{{/serializable}}
class {{#pascalCase}}{{name}}{{/pascalCase}} {
  final String name;

{{#pascalCase}}{{name}}{{/pascalCase}}({required this.name});

  factory {{#pascalCase}}{{name}}{{/pascalCase}}.fromJson(Map<String, dynamic> json) => _${{#pascalCase}}{{name}}{{/pascalCase}}FromJson(json);

  Map<String, dynamic> toJson() => _${{#pascalCase}}{{name}}{{/pascalCase}}ToJson(this);
}