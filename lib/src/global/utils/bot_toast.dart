import 'package:bot_toast/bot_toast.dart';

void showToast(String text) {
  BotToast.showText(text: text);
}

void showLoading() {
  BotToast.showLoading();
}

void closeLoading() {
  BotToast.closeAllLoading();
}
