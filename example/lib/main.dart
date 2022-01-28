import 'package:khmer_date/khmer_date.dart';

void main() {
    String _date = "2021-06-29 15:16:43";
    print(KhmerDate.date(_date,format: "dd-mm-yy",apiFormat: "yyyy-MM-dd hh:mm:ss"));
    // result: ២៩-០៦-២១
    print(KhmerDate.date(_date,format: "ddd/mmm/yyyy"));
    // result: អង្គ/មិថុនា/២០២១
    print(KhmerDate.date(_date,format: "ថ្ងៃdddd"));
    // result: ថ្ងៃអង្គារ៍
    print(KhmerDate.date(_date,format: "ថ្ងៃdddd ទីdd ខែmmm ឆ្នាំyyyy ម៉ោង hr"));
    // result: ថ្ងៃអង្គារ៍ ទី២៩ ខែមិថុនា ឆ្នាំ២០២១ ម៉ោង ០៣:១៦ ល្ងាច
    print(KhmerDate.date(_date,format: "ម៉ោង Hr"));
    // result: ម៉ោង ១៥:១៦
    print(KhmerDate.khmerNumber("1234567890 Work..."));
    // result: ១២៣៤៥៦៧៨៩០ Work...
}
