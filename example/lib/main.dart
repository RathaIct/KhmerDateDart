import 'package:khmer_date/khmer_date.dart';

void main() {
  String _date = "2024-05-23 09:27:05";
  print(KhmerDate.isToday(_date));
  // result: true or false base on current date
  print(KhmerDate.today(format: "dddd-MMMM-yyyy"));
  // result: ព្រហស្បតិ៍-ឧសភា-២០២៤ (current date)
  print(KhmerDate.date(_date,
      format: "dd-MM-yy", apiFormat: "yyyy-MM-dd hh:mm:ss"));
  // result: ២៣-០៣-២៦
  print(KhmerDate.date(_date, format: "ddd/MMM/yyyy"));
  // result: ព្រហ/ឧសភា/២០២៤
  print(KhmerDate.date(_date, format: "ថ្ងៃdddd"));
  // result: ថ្ងៃព្រហស្បតិ៍
  print(KhmerDate.date(_date, format: "ថ្ងៃdddd ទីdd ខែMMM ឆ្នាំyyyy ម៉ោង hr"));
  // result: ថ្ងៃព្រហស្បតិ៍ ទី២៣ ខែឧសភា ឆ្នាំ២០២៤ ម៉ោង ០៩:២៧ ព្រឹក
  print(KhmerDate.date(_date, format: "ម៉ោង Hr"));
  // result: ម៉ោង ០៩:២៧
  print(KhmerDate.khmerNumber("1234567890 Work..."));
  // result: ១២៣៤៥៦៧៨៩០ Work...
}
