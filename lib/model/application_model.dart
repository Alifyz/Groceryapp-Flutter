import 'package:flutter/foundation.dart';
import 'package:groceryapp/domain/grocery_item.dart';

class AppModel with ChangeNotifier {
  List<GroceryItem> _items = [];
  List<int> _selectedItems = [];

  void addItem(GroceryItem newItem) {
    if (!_items.contains(newItem)) {
      _items.add(newItem);
      _selectedItems.add(newItem.id);
    } else {
      _items.remove(newItem);
      _selectedItems.remove(newItem.id);
    }
    notifyListeners();
  }

  List<GroceryItem> getCurrentGroceries() {
    return _items;
  }

  List<int> getSelectedItems() {
    return _selectedItems;
  }

  void clearList() {
    _items.clear();
    _selectedItems.clear();
  }

}
