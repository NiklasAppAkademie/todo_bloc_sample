class LocalDataSource {
  Future<List<Map>> getHiveData() async {
    await Future.delayed(const Duration(seconds: 5));
    return [
      {"todoName": "Aufräumen"},
      {"todoName": "Rasen mähen"},
      {"todoName": "Kochen"},
      {"todoName": "Saugen"},
    ];
  }
}
