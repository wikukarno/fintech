import 'dart:convert';

import 'package:fintech/models/portofolio_model.dart';
import 'package:http/http.dart' as http;

class PortofolioService {
  String baseUrl = 'https://api-wikukarno.wikukarno.id/api';

  Future<List<PortofolioModel>> getPortofolios() async {
    var url = Uri.parse('$baseUrl/portofolios');
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(url, headers: headers);

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data'];
      List<PortofolioModel> portofolios = [];

      for (var item in data) {
        portofolios.add(PortofolioModel.fromJson(item));
      }
      return portofolios;
    } else {
      throw Exception('Gagal mengambil data!');
    }
  }
}
