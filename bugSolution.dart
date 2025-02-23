```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Safely access jsonData['key'] using null-aware and null coalescing operators.
      final keyValue = jsonData['key'] ?? 'default value'; //Use default if key is missing
      print(keyValue);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```