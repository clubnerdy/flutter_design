import 'package:flutter_riverpod/flutter_riverpod.dart';

// 1. 창고 데이터 타입

// 2. 창고
class KBankVM extends Notifier<String> {
  static const int balance = 276854;

  @override
  String build() {
    print('창고 초기화됨');
    return '';
  }

  void inputKey(String key) {
    if (key == 'back') {
      _backspace();
    } else {
      _expend(key);
    }
  }

  void _expend(String value) {
    var text = state;

    if (state == '0') {
      text = '';
    }

    text += value;

    final next = int.tryParse(text) ?? 0;

    if (next > balance) {
      state = balance.toString();
      return;
    }
    state = text;
  }

  void _backspace() {
    if (state.isEmpty) return;
    if (state.length == 1) {
      state = '';
    } else {
      state = state.substring(0, state.length - 1);
    }
  }

  void clear() {
    state = '';
  }

  void addQuick(int value) {
    final current = int.tryParse(state.isEmpty ? '0' : state) ?? 0;
    final next = current + value;

    if (next > balance) {
      state = balance.toString();
      return;
    }

    state = next.toString();
  }
}

// 3. 창고 관리자
final amouuntProvider = NotifierProvider<KBankVM, String>(KBankVM.new);
