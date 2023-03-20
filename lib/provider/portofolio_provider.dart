import 'package:flutter/material.dart';
import 'package:fintech/models/portofolio_model.dart';
import 'package:fintech/services/portofolio_service.dart';

class PortofolioProvider with ChangeNotifier {
  List<PortofolioModel> _portofolios = [];

  List<PortofolioModel> get portofolios => _portofolios;

  set portofolio(List<PortofolioModel> portofolio) {
    _portofolios = portofolios;
    notifyListeners();
  }

  Future<void> getPortofolio() async {
    try {
      List<PortofolioModel> portofolios =
          await PortofolioService().getPortofolios();
      _portofolios = portofolios;
    } catch (e) {
      print(e);
    }
  }
}
