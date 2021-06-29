# Khmer Date

គឺជា Plugin ដែលបង្កើតសម្រាប់ប្ដូរកាលបរិច្ឆេទទៅជាទម្រង់ខ្មែរ និង លេខជាភាសាខ្មែរ

Khmer Date is plugin help you to convert date time and number to Khmer date time format and number to Khmer number

## ចំណាំ Note

ទម្រង់កាលបរិច្ឆេទ ឧទាហរណ៍ៈ "2021-06-29T15:16:43" ទាញចេញពី API

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
លោក ហ៊ិន រដ្ឋា
ជំនាញ បង្កើតកម្មវិធីទូរស័ព្ទ
បទពិសោធន៍ Flutter, ReactNative
ទូរស័ព្ទ 096 659 2250