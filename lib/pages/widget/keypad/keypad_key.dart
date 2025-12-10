// 키패드 타입
enum KeypadKeyType {
  digit, // 숫자 1~9
  doubleZero, // 00
  backspace, // 지우기
}

// 키패드 모델
class KeypadKey {
  final KeypadKeyType type;
  final String? label;

  const KeypadKey({
    required this.type,
    this.label,
  });
}

// 키패드 배열
// 1 2 3
// 4 5 6
// 7 8 9
// 00 0 ⌫
const List<KeypadKey> bankKeypadKeys = [
  KeypadKey(type: KeypadKeyType.digit, label: '1'),
  KeypadKey(type: KeypadKeyType.digit, label: '2'),
  KeypadKey(type: KeypadKeyType.digit, label: '3'),
  KeypadKey(type: KeypadKeyType.digit, label: '4'),
  KeypadKey(type: KeypadKeyType.digit, label: '5'),
  KeypadKey(type: KeypadKeyType.digit, label: '6'),
  KeypadKey(type: KeypadKeyType.digit, label: '7'),
  KeypadKey(type: KeypadKeyType.digit, label: '8'),
  KeypadKey(type: KeypadKeyType.digit, label: '9'),
  KeypadKey(type: KeypadKeyType.doubleZero, label: '00'),
  KeypadKey(type: KeypadKeyType.digit, label: '0'),
  KeypadKey(type: KeypadKeyType.backspace),
];
