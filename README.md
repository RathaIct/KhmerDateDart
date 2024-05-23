# Khmer Date

គឺជា Plugin ដែលបង្កើតសម្រាប់ប្ដូរកាលបរិច្ឆេទទៅជាទម្រង់ខ្មែរ និង លេខជាភាសាខ្មែរ

Khmer Date is plugin help you to convert date time and number to Khmer date time format and number to Khmer number

<hr />
<p align="center">
  <img src="https://raw.githubusercontent.com/RathaIct/KhmerDateDart/main/thumbnail.png"/>
</p>
<p align="center">
  <a href="https://flutter.io">  
    <img src="https://img.shields.io/badge/Platform-Flutter-yellow.svg"  
      alt="Platform" />  
  </a> 
   <a href="https://pub.dev/packages/khmer_date">  
    <img src="https://img.shields.io/pub/v/khmer_date.svg"  
      alt="Pub Package" />  
  </a>
   <a href="https://opensource.org/licenses/MIT">  
    <img src="https://img.shields.io/badge/License-MIT-red.svg"  
      alt="License: MIT" />  
  </a>
   <a href="https://github.com/RathaIct/KhmerDateDart/issues">  
    <img src="https://img.shields.io/github/issues/RathaIct/KhmerDateDart"  
      alt="Issue" />  
  </a> 
   <a href="https://github.com/RathaIct/KhmerDateDart/network">  
    <img src="https://img.shields.io/github/forks/RathaIct/KhmerDateDart"  
      alt="Forks" />  
  </a> 
   <a href="https://github.com/RathaIct/KhmerDateDart/stargazers">  
    <img src="https://img.shields.io/github/stars/RathaIct/KhmerDateDart"  
      alt="Stars" />  
  </a>
</p>
<br />

## Installing

### 1. Depend on it

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  khmer_date: ^1.0.0
```

### 2. Install it

You can install packages from the command line:

with `pub`:

```bash
$ pub get
```

with `Flutter`:

```bash
$ flutter pub get
```

### 3. Import it

Now in your `Dart` code, you can use:

```dart
import 'package:khmer_date/khmer_date.dart';
```

## ចំណាំ Note

ទម្រង់កាលបរិច្ឆេទ ឧទាហរណ៍ៈ `2021-06-29T15:16:43` ទាញចេញពី API
ប្រសិនបើ កាលបរិច្ឆេទទម្រង់ផ្សេង សូមប្តូរ apiFormat តាមទម្រង់របស់លោកអ្នក
apiFormat: សម្រាប់កំណត់លើទម្រង់កាលបរិច្ឆេទពី API ដែលខុសពីទម្រង់កាលបរិច្ឆេទខាងលើ `yyyy-MM-ddThh:mm:ss` លោកអ្នកត្រូវប្ដូរតាមទម្រង់កាលរិច្ឆេទលោកអ្នកវិញ ឧៈ `2021/06/29 13:15:36` ដូចនេះ apiFormat: `yyyy/MM/dd hh:mm:ss` កាលបរិច្ឆេទខុសទម្រង់ វានឹងធ្វើឲ្យតម្លៃ ពេលវេលាចេញលទ្ធផលខុស

ក្នុង plugin នេះមានប្រើ plugin ជំនួសគឺ `intl: ^0.19.0` បើលោកអ្នកបានដំឡើង plugin នេះរួចហើយ
សូមធ្វើឲ្យប្រាដកថា plugin intl លោកអ្នកនៅក្នុង version ដូចគ្នា ឬ លោកអាចលុប intl plugin នៅក្នុង pubspec.yaml របស់លោកអ្នក
ដើម្បីជៀសវាងការជាន់គ្នា

## របៀបប្រើប្រាស់ Usage

- `KhmerDate.isToday("2024-05-23T09:27:05")` check current date with param date from API and result true if current date equal date from API
  - `apiFormat` format date as your API date.
- `KhmerDate.today()` return current date from your device to Khmer Date option:
  - `format` default `dd-MM-yyyy` return date format
- `KhmerDate.date("2024-05-23T09:27:05")` convert date to Khmer date option:
  - `format` default `dd-MM-yyyy` return date format
  - `apiFormat` format date as your API date.
- `KhmerDate.khmerNumber("1234567890 Work...")` convert number to Khmer number.

### Example code

```dart
void main() {
  String _date = "2024-05-23 09:27:05";
  print(KhmerDate.isToday(_date));
  // result: true or false base on current date
  print(KhmerDate.today(format: "dddd-MMMM-yyyy"));
  // result: ព្រហស្បតិ៍-ឧសភា-២០២៤ (current date)
  print(KhmerDate.date(_date,
      format: "dd-MM-yy", apiFormat: "yyyy-MM-dd hh:MM:ss"));
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
```

## អ្នកបង្កើត

<img src="https://raw.githubusercontent.com/RathaIct/KhmerDateDart/main/ratha.jpeg" width="150" />
<hr />
លោក ហ៊ិន រដ្ឋា
Mr. Hin Ratha
<br />
ជំនាញ បង្កើតកម្មវិធីទូរស័ព្ទ
Mobile Apps Developer
<br />
បទពិសោធន៍ Flutter, ReactNative
<br />
ទូរស័ព្ទ 096 659 2250

### គេហទំព័រ

<a href="https://rathadev.site"  target="_blank">Ratha Dev</a>
