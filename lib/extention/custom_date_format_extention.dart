extension DateFormat on String {
  String get dateFormat {
    String date = split('-')[2];
    String month = split('-')[1];

    List<String> months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Des'
    ];

    String dateFormat = '';

    for (var i = 1; i <= 12; i++) {
      if (month == '0$i' || month == '12') {
        dateFormat = '${months[i - 1]} $date';
      } 
    }

    return dateFormat;
  }
}
