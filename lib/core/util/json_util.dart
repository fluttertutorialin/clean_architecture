import 'dart:convert';

/// Converts [value] to a JSON string.
String jsonEncode(Object? value, {Object? Function(dynamic object)? toEncodable}) =>
    json.encode(value, toEncodable: toEncodable);

/// Parses the string and returns the resulting Json object.
dynamic jsonDecode(String source,
    {Object? Function(Object? key, Object? value)? reviver}) =>
    json.decode(source, reviver: reviver);