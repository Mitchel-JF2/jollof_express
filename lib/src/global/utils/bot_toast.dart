import 'package:bot_toast/bot_toast.dart';

/// shows a toast with [text]
void showToast(String text) {
  BotToast.showText(text: text);
}
/// show a loading animation
void showLoading() {
  BotToast.showLoading();
}

/// closes the loading animation
void closeLoading() {
  BotToast.closeAllLoading();
}
