import 'package:flutter/material.dart';
import 'package:hall_management_ui/pages/search_result_screen.dart';

final List<Room> roomData = [
  Room(
    name: 'Room 507',
    extension: 'YKSG - Ext 1',
    direction: 'West',
    price: 3000,
  ),
  Room(
    name: 'Room 206',
    extension: 'YKSG - Ext 1',
    direction: 'West',
    price: 3000,
  ),
  Room(name: 'Room 302', extension: 'YKSG - Ext 2', direction: '', price: 2500),
  Room(
    name: 'Room 210',
    extension: 'YKSG - Ext 3',
    direction: 'East',
    price: 3000,
  ),
];

class SearchRoomProvider extends ChangeNotifier {
  String _search = '';
  String _filter = 'all';

  final List<Room> _rooms = roomData;

  void setSearch(String value) {
    _search = value;
    notifyListeners();
  }

  void setFilter(String value) {
    _filter = value;
    notifyListeners();
  }

  List<Room> get filteredRooms {
    return _rooms.where((room) {
      final matchsSearch = room.name.toLowerCase().contains(
        _search.toLowerCase(),
      );

      final matchesFilter = _filter == 'all';

      return matchsSearch && matchesFilter;
    }).toList();
  }
}
