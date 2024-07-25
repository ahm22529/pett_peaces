class BookingEneity {
  final String number, statrdate, numberoforder, price, enddate,name;
  final int idd;
  List service;

  BookingEneity(
      {required this.number,
      required this.enddate,
      required this.service,
      required this.statrdate,
      required this.numberoforder,
      required this.price,
      required this.name,

      required this.idd});
}
