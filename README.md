# Khmer Date

គឺជា Plugin ដែលបង្កើតសម្រាប់ប្ដូរកាលបរិច្ឆេទទៅជាទម្រង់ខ្មែរ និង លេខជាភាសាខ្មែរ

Khmer Date is plugin help you to convert date time and number to Khmer date time format and number to Khmer number

## ចំណាំ Note

ទម្រង់កាលបរិច្ឆេទ ឧទាហរណ៍ៈ "2021-06-29T15:16:43" ទាញចេញពី API 
ប្រសិនបើ កាលបរិច្ឆេទទម្រង់ផ្សេង សូមប្តូរ apiFormat តាមទម្រង់របស់លោកអ្នក
apiFormat: សម្រាប់កំណត់លើទម្រង់កាលបរិច្ឆេទពី API ដែលខុសពីទម្រង់កាលបរិច្ឆេទខាងលើ "yyyy-MM-ddThh:mm:ss" លោកអ្នកត្រូវប្ដូរតាមទម្រង់កាលរិច្ឆេទលោកអ្នកវិញ ឧៈ "2021/06/29 13:15:36" ដូចនេះ apiFormat: "yyyy/MM/dd hh:mm:ss" កាលបរិច្ឆេទខុសទម្រង់ វានឹងធ្វើឲ្យតម្លៃ ពេលវេលាចេញលទ្ធផលខុស

ក្នុង plugin នេះមានប្រើ plugin ជំនួសគឺ intl: ^0.17.0 បើលោកអ្នកបានដំឡើង plugin នេះរួចហើយ
សូមធ្វើឲ្យប្រាដកថា plugin intl លោកអ្នកនៅក្នុង version ដូចគ្នា ឬ លោកអាចលុប intl plugin នៅក្នុង pubspec.yaml របស់លោកអ្នក
ដើម្បីជៀសវាងការជាន់គ្នា

លោកអ្នកក៏អាចប្រើ version ចាស់បានដែរ(khmer_date: ^0.0.3) តែ version នេះគ្មាន apiFormat សម្រាប់លោកអ្នកប្ដូរកាលបរិច្ឆេទទម្រង់ផ្សេងទេ

## របៀបប្រើប្រាស់ Usage
~~~dart
void main() {
    String _date = "2021-06-29T15:16:43";
    print(KhmerDate.date(_date,format: "dd-mm-yy"));
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
~~~

## អ្នកបង្កើត
<img src="https://raw.githubusercontent.com/RathaIct/KhmerDateDart/main/ratha.jpeg" width="150" />
<hr />
លោក ហ៊ិន រដ្ឋា
<br />
ជំនាញ បង្កើតកម្មវិធីទូរស័ព្ទ
<br />
បទពិសោធន៍ Flutter, ReactNative
<br />
ទូរស័ព្ទ 096 659 2250 <a href="tel:0966592250">📞</a>

### គេហទំព័រ
<a href="https://rathadev.site"  target="_blank">Ratha Dev</a>