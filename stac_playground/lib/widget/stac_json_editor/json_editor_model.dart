import 'dart:convert';

import 'package:stac_playground/utils/log.dart';
import 'package:stac_playground/widget/stac_json_editor/analyzer/analyzer.dart';
import 'package:stac_playground/widget/stac_json_editor/utils/num_util.dart';

import 'analyzer/lexer/lexer.dart';
import 'analyzer/lexer/token.dart';

const jsonFormatIndent = '    ';

class JsonElement {
  JsonElement({this.key, this.value, this.valueType, this.comment});

  factory JsonElement.fromString(String jsonString) {
    var tokens = Lexer().scan(jsonString);
    var eleStack = <JsonElement>[];
    late JsonElement result;
    while (!tokens.isEof) {
      String? key;
      String? comment;
      if (tokens.type == TokenType.STRING && tokens.next?.lexeme == ':') {
        if (eleStack.isEmpty) {
          throw 'Illegal json string';
        }
        key = tokens.lexeme.substring(1, tokens.lexeme.length - 1);
        comment = tokens.precedingComments?.toString();
        tokens = tokens.next!.next!;
      } else {
        comment = tokens.precedingComments?.toString();
      }
      dynamic value;
      JsonElementValueType? valueType;
      if (tokens.type == TokenType.STRING) {
        value = tokens.lexeme.substring(1, tokens.lexeme.length - 1);
        valueType = JsonElementValueType.string;
      } else if (tokens.type == TokenType.INT) {
        value = int.parse(tokens.lexeme);
        valueType = JsonElementValueType.numeric;
      } else if (tokens.type == TokenType.DOUBLE) {
        value = double.parse(tokens.lexeme);
        valueType = JsonElementValueType.numeric;
      } else if (tokens.type == TokenType.IDENTIFIER &&
          (tokens.lexeme == 'true' || tokens.lexeme == 'false')) {
        value = tokens.lexeme == 'true';
        valueType = JsonElementValueType.bool;
      } else if (tokens.lexeme == '{') {
        value = [];
        valueType = JsonElementValueType.map;
      } else if (tokens.lexeme == '[') {
        value = [];
        valueType = JsonElementValueType.array;
      } else if (tokens.lexeme == '}' || tokens.lexeme == ']') {
        result = eleStack.removeLast();
      }
      if (value != null) {
        var ele = JsonElement(
            key: key,
            value: value,
            valueType: valueType,
            comment: comment?.substring(2));
        if (eleStack.isNotEmpty) {
          var prevEleValue = eleStack.last.value;
          if (prevEleValue is List) {
            prevEleValue.add(ele);
          }
        }

        if (valueType == JsonElementValueType.map ||
            valueType == JsonElementValueType.array) {
          eleStack.add(ele);
        }
      }

      tokens = tokens.next!;
    }
    return result;
  }

  factory JsonElement.fromObject(Object value) {
    assert(value is Map || value is List);
    var jsonString = jsonEncode(value);
    return JsonElement.fromString(jsonString);
  }

  factory JsonElement.fromJson(Map<String, dynamic> json) {
    var valueTypeStr = json['valueType'];
    var value = json['value'];
    var elementValue = value;
    JsonElementValueType? valueType;
    if (valueTypeStr == JsonElementValueType.string.toString()) {
      valueType = JsonElementValueType.string;
    } else if (valueTypeStr == JsonElementValueType.numeric.toString()) {
      valueType = JsonElementValueType.numeric;
    } else if (valueTypeStr == JsonElementValueType.bool.toString()) {
      valueType = JsonElementValueType.bool;
    } else if (valueTypeStr == JsonElementValueType.map.toString()) {
      valueType = JsonElementValueType.map;
      elementValue =
          (value as List).map((e) => JsonElement.fromJson(e)).toList();
    } else if (valueTypeStr == JsonElementValueType.array.toString()) {
      valueType = JsonElementValueType.array;
      elementValue =
          (value as List).map((e) => JsonElement.fromJson(e)).toList();
    }
    return JsonElement(
        key: json['key'],
        value: elementValue,
        valueType: valueType,
        comment: json['comment']);
  }

  final String? key;
  final dynamic value;
  final String? comment;
  final JsonElementValueType? valueType;

  Map<String, dynamic> toJson() {
    dynamic jsonValue = value;
    var result = <String, dynamic>{};
    if (value is List) {
      jsonValue = (value as List).map((e) {
        if (e is JsonElement) {
          return e.toJson();
        } else {
          return e;
        }
      }).toList();
    }
    if (key != null) {
      result['key'] = key;
    }
    if (jsonValue != null) {
      result['value'] = jsonValue;
    }
    if (comment != null) {
      result['comment'] = comment;
    }
    if (valueType != null) {
      result['valueType'] = valueType!.toString();
    }
    return result;
  }

  Object toObject() {
    dynamic obj;
    if (valueType == JsonElementValueType.map) {
      obj = {};
    } else if (valueType == JsonElementValueType.array) {
      obj = [];
    }
    if (value != null && value is List) {
      for (var ele in value) {
        ele = ele as JsonElement;
        dynamic eleValue;
        if (ele.valueType == JsonElementValueType.map ||
            ele.valueType == JsonElementValueType.array) {
          eleValue = ele.toObject();
        } else {
          eleValue = ele.value;
        }
        if (valueType == JsonElementValueType.map) {
          obj[ele.key!] = eleValue;
        } else if (valueType == JsonElementValueType.array) {
          obj.add(eleValue);
        }
      }
    }
    return obj;
  }

  @override
  String toString() {
    var jsonString = '';
    if (comment?.isNotEmpty == true) {
      jsonString += '\n//$comment\n';
    }
    if (key?.isNotEmpty == true) {
      jsonString += '"$key":';
    }
    if (value is List) {
      if (valueType == JsonElementValueType.map) {
        jsonString += '{';
      } else {
        jsonString += '[';
      }
      for (var i = 0; i < value.length; i++) {
        var ele = value[i] as JsonElement;
        jsonString += ele.toString();
        if (i < value.length - 1) {
          jsonString += ',';
        }
      }
      if (valueType == JsonElementValueType.map) {
        jsonString += '}';
      } else {
        jsonString += ']';
      }
    } else if (valueType == JsonElementValueType.string) {
      jsonString += '"${value.toString()}"';
    } else if (valueType == JsonElementValueType.numeric) {
      jsonString += (value as num).format();
    } else if (value != null) {
      jsonString += value.toString();
    }
    return jsonString;
  }

  String toPrettyString() {
    var s = toString();
    return format(s);
  }

  static String format(String s, {JsonAnalyzer? analyzer}) {
    analyzer ??= JsonAnalyzer();
    var result = s;
    var err = analyzer.analyze(s);
    if (err == null) {
      var tokens = Lexer().scan(s);
      var reformatText = '';
      var lastLineIndentNumber = 0;
      while (!tokens.isEof) {
        if (tokens.precedingComments != null) {
          var commentText =
              '${tokens.precedingComments!.toString()}\n${_createIndentSpace(lastLineIndentNumber)}';
          var nextComment = tokens.precedingComments?.next;
          while (nextComment is CommentToken) {
            commentText +=
                '${nextComment.toString()}\n${_createIndentSpace(lastLineIndentNumber)}';
            nextComment = nextComment.next;
          }
          reformatText += commentText;
        }
        reformatText += tokens.lexeme;
        if (tokens.lexeme == '{' || tokens.lexeme == '[') {
          lastLineIndentNumber++;
          reformatText += '\n${_createIndentSpace(lastLineIndentNumber)}';
        } else if (tokens.lexeme == ':') {
          reformatText += '  ';
        }
        if (tokens.next?.lexeme == '}' ||
            tokens.next?.lexeme == ']' ||
            tokens.next?.isEof == true) {
          lastLineIndentNumber =
              lastLineIndentNumber > 0 ? --lastLineIndentNumber : 0;
          reformatText += '\n${_createIndentSpace(lastLineIndentNumber)}';
        } else if (tokens.lexeme == ',') {
          reformatText += '\n${_createIndentSpace(lastLineIndentNumber)}';
        }

        tokens = tokens.next!;
      }
      result = reformatText;
    } else {
      Log.error(tag: 'JsonElement', message: 'format error', err: err);
    }
    return result;
  }

  static String _createIndentSpace(int number) {
    var indent = '';
    for (var i = 0; i < number; i++) {
      indent += jsonFormatIndent;
    }
    return indent;
  }
}

enum JsonElementValueType { numeric, string, bool, array, map }
