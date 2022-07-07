extension DateFormat on String {
  String get dateFormat {
    String date = split('-')[2];
    String month = split('-')[1];

    switch (month) {
      case '01':
        return '$date Jan';
      case '02':
        return '$date Feb';
      case '03':
        return '$date Mar';
      case '04':
        return '$date Apr';
      case '05':
        return '$date May';
      case '06':
        return '$date Jun';
      case '07':
        return '$date Jul';
      case '08':
        return '$date Aug';
      case '09':
        return '$date Sep';
      case '10':
        return '$date Oct';
      case '11':
        return '$date Nov';
      case '12':
        return '$date Des';
      default:

      return '';
    }
  }
}
