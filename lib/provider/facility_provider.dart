import 'package:flutter/material.dart';

class FacilityProvider extends ChangeNotifier {
  final Set<String> _selectedFacilites = {};
  bool isSelected(String facility) => _selectedFacilites.contains(facility);
  void toggleFacility(String facility) {
    if (_selectedFacilites.contains(facility)) {
      _selectedFacilites.remove(facility);
    } else {
      _selectedFacilites.add(facility);
    }
    notifyListeners();
  }

  Set<String> get selectedFacilities => _selectedFacilites;
}
