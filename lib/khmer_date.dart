library khmer_date;
import 'package:intl/intl.dart';
/// អ្នកបង្កើត លោក ហ៊ិន រដ្ឋា ទូរស័ព្ទ 096 659 2250
/// បង្កើតកម្មវិធីទូរស័ព្ទ បទពិសោធន៍ Flutter, ReactNative
/// 
/// ទម្រង់កាលបរិច្ឆេទ ឧៈ "2021-06-29T13:15:36" បើខុសពីទម្រង់នេះសូមប្ដូរ apiFormat
///
///apiFormat: សម្រាប់កំណត់លើទម្រង់កាលបរិច្ឆេទពី API ដែលខុសពីទម្រង់កាលបរិច្ឆេទខាងលើ "yyyy-MM-ddThh:mm:ss" លោកអ្នកត្រូវប្ដូរតាមទម្រង់កាលរិច្ឆេទលោកអ្នកវិញ ឧៈ "2021/06/29 13:15:36"
///
///ដូចនេះ apiFormat: "yyyy/MM/dd hh:mm:ss" កាលបរិច្ឆេទខុសទម្រង់ វានឹងធ្វើឲ្យតម្លៃ ពេលវេលាចេញលទ្ធផលខុស
///
/// format: "ថ្ងៃdddd ទីdd ខែmmm ឆ្នាំyyyy ម៉ោង hr" លទ្ធផល (ថ្ងៃអង្គារ៍ ទី២៩ ខែមិថុនា ឆ្នាំ២០២១ ម៉ោង ០១:១៥ ល្ងាច)
///
/// format: "hr" 12 hour, "Hr" 24 hour
/// 
class KhmerDate {
  /// ទម្រង់កាលបរិច្ឆេទ ឧៈ "2021-06-29T13:15:36"
  /// ប្រសិនបើកាលបរិច្ឆេទថ្ងៃនេះនឹង return trun ក្រៅពីនេះនឹង return false
  static bool isToday(String date) {
    final DateTime _date = DateTime.parse(date);
    final today = DateTime.now().difference(_date).inDays;
    return today == 0;
  }

  /// ទម្រង់កាលបរិច្ឆេទ ឧៈ "2021-06-29T13:15:36" បើខុសពីទម្រង់នេះសូមប្ដូរ apiFormat
  ///
  ///apiFormat: សម្រាប់កំណត់លើទម្រង់កាលបរិច្ឆេទពី API ដែលខុសពីទម្រង់កាលបរិច្ឆេទខាងលើ "yyyy-MM-ddThh:mm:ss" លោកអ្នកត្រូវប្ដូរតាមទម្រង់កាលរិច្ឆេទលោកអ្នកវិញ ឧៈ "2021/06/29 13:15:36"
  ///
  ///ដូចនេះ apiFormat: "yyyy/MM/dd hh:mm:ss" កាលបរិច្ឆេទខុសទម្រង់ វានឹងធ្វើឲ្យតម្លៃ ពេលវេលាចេញលទ្ធផលខុស
  ///
  /// format: "ថ្ងៃdddd ទីdd ខែmmm ឆ្នាំyyyy ម៉ោង hr" លទ្ធផល (ថ្ងៃអង្គារ៍ ទី២៩ ខែមិថុនា ឆ្នាំ២០២១ ម៉ោង ០១:១៥ ល្ងាច)
  ///
  /// format: "hr" 12 hour, "Hr" 24 hour
  static String date(
    String date, {
    String format = "dd-mm-yyyy",
    String? apiFormat,
  }) {
    DateTime _date = DateTime.parse(date);
    if (apiFormat != null) {
      final f = DateFormat(apiFormat);
      _date = f.parse(date);
    }
    if (format.contains("dddd")) {
      format = format.replaceAll("dddd", _convertKhmerWeekDay(_date));
    }
    if (format.contains("ddd")) {
      format =
          format.replaceAll("ddd", _convertKhmerWeekDay(_date, isShort: true));
    }
    if (format.contains("dd")) {
      format = format.replaceAll("dd", khmerNumber(_date.day.toString()));
    }
    if (format.contains("mmmm")) {
      format = format.replaceAll("mmmm", _convertKhmerMonth(_date));
    }
    if (format.contains("mmm")) {
      format = format.replaceAll("mmm", _convertKhmerMonth(_date));
    }
    if (format.contains("mm")) {
      String month = (_date.month).toString();
      if (month.length == 1) {
        month = "០" + month;
      }
      format = format.replaceAll("mm", khmerNumber(month));
    }
    if (format.contains("yyyy")) {
      format = format.replaceAll("yyyy", khmerNumber(_date.year.toString()));
    }
    if (format.contains("yyy")) {
      format = format.replaceAll("yyy", khmerNumber(_date.year.toString()));
    }
    if (format.contains("yy")) {
      format = format.replaceAll(
          "yy", khmerNumber(_date.year.toString().substring(2)));
    }
    if (format.contains("hr")) {
      int hours = _date.hour;
      int minutes = _date.minute;
      String ampm = hours >= 12 ? 'ល្ងាច' : 'ព្រឹក';
      hours = hours % 12;
      hours = hours != 0 ? hours : 12; // the hour '0' should be '12'
      String strHour = hours < 10 ? "0" + hours.toString() : hours.toString();
      String strMinutes =
          minutes < 10 ? '0' + minutes.toString() : minutes.toString();
      String strTime = strHour + ':' + strMinutes + ' ' + ampm;
      format = format.replaceAll("hr", khmerNumber(strTime));
    }
    if (format.contains("Hr")) {
      int hours = _date.hour;
      int minutes = _date.minute;
      String strHour = hours < 10 ? "0" + hours.toString() : hours.toString();
      String strMinutes =
          minutes < 10 ? '0' + minutes.toString() : minutes.toString();

      String strTime = "$strHour:$strMinutes";
      format = format.replaceAll("Hr", khmerNumber(strTime));
    }
    return format;
  }

  /// ឧៈ12345 => ១២៣៤៥
  static String khmerNumber(String number) {
    String khNumber = "";
    for (int i = 0; i < number.length; i++) {
      khNumber += _convertKhmerNumber(number[i]);
    }
    return khNumber;
  }

  static String _convertKhmerMonth(DateTime date) {
    switch (date.month - 1) {
      case 0:
        return "មករា";
      case 1:
        return "កុម្ភៈ";
      case 2:
        return "មីនា";
      case 3:
        return "មេសា";
      case 4:
        return "ឧសភា";
      case 5:
        return "មិថុនា";
      case 6:
        return "កក្ដដា";
      case 7:
        return "សីហា";
      case 8:
        return "កញ្ញា";
      case 9:
        return "តុលា";
      case 10:
        return "វិច្ឆិកា";
      case 11:
        return "ធ្នូ";
      default:
        return "invalid weekday";
    }
  }

  static String _convertKhmerWeekDay(DateTime date, {isShort = false}) {
    switch (date.weekday) {
      case 1:
        return isShort ? "ចន្ទ" : "ចន្ទ";
      case 2:
        return isShort ? "អង្គ" : "អង្គារ៍";
      case 3:
        return isShort ? "ពុធ" : "ពុធ";
      case 4:
        return isShort ? "ព្រហ" : "ព្រហស្បតិ៍";
      case 5:
        return isShort ? "សុក្រ" : "សុក្រ";
      case 6:
        return isShort ? "សៅរ៍" : "សៅរ៍";
      case 7:
        return isShort ? "អាទិ" : "អាទិត្យ";
      default:
        return "invalid weekday";
    }
  }

  static String _convertKhmerNumber(String number) {
    switch (number) {
      case "0":
        return "០";
      case "1":
        return "១";
      case "2":
        return "២";
      case "3":
        return "៣";
      case "4":
        return "៤";
      case "5":
        return "៥";
      case "6":
        return "៦";
      case "7":
        return "៧";
      case "8":
        return "៨";
      case "9":
        return "៩";
      default:
        return number;
    }
  }
}
