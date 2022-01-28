import 'package:flutter_unit_tests/models/favourite.dart';
import 'package:test/test.dart';

void main() {
  group('Testing App', () {
    var favorites = Favorites();

    test('A new item should be added', () {
      var number = 35;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
    });
    test('An item should be removed', () {
      var number = 45;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
      favorites.remove(number);
      expect(favorites.items.contains(number), false);
    });
    test("intially list should be empty", () {
      var favorites = Favorites();
      expect(favorites.items.length, 0);
    });
    test("After adding two numbers should give two", () {
      var favorites = Favorites();
      favorites.items.add(12);
      favorites.items.add(15);
      expect(favorites.items.length, 2);
    });
  });
}
