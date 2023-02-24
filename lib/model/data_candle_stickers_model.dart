class DataCandleStickersModel {
  final double? maxValue;
  final double? minValue;
  final double? openValue;
  final double? closeValue;

  DataCandleStickersModel({
    this.maxValue,
    this.minValue,
    this.openValue,
    this.closeValue,
  });

  List<DataCandleStickersModel> get listCandleModel => [
        DataCandleStickersModel(
          maxValue: 10,
          minValue: 9.10,
          openValue: 9.50,
          closeValue: 9.80,
        ),
        DataCandleStickersModel(
          maxValue: 10,
          minValue: 9.10,
          openValue: 9.50,
          closeValue: 10,
        ),
        DataCandleStickersModel(
          maxValue: 10,
          minValue: 9.10,
          openValue: 9.80,
          closeValue: 9.70,
        ),
        DataCandleStickersModel(
          maxValue: 10,
          minValue: 9.10,
          openValue: 9.80,
          closeValue: 9.10,
        )
      ];
}
