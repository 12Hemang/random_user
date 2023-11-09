import 'package:logger/logger.dart';

class Log {
  static final Logger _instance = Logger(
    filter: null,
    printer: PrettyPrinter(),
    output: null,
  );

  static void setLevel(Level level) {
    Logger.level = level;
  }

  static void verbose(
    String tag,
    String message, [
    Object? error,
    StackTrace? stackTrace,
  ]) async {
    _instance.v('$tag: $message', error, stackTrace);
  }

  static void info(
    String tag,
    String message, [
    Object? error,
    StackTrace? stackTrace,
  ]) async {
    _instance.i('$tag: $message', error, stackTrace);
  }

  static void warning(
    String tag,
    String message, [
    Object? error,
    StackTrace? stackTrace,
  ]) async {
    _instance.w('$tag: $message', error, stackTrace);
  }

  static void debug(
    String tag,
    String message, [
    Object? error,
    StackTrace? stackTrace,
  ]) async {
    _instance.d('$tag: $message', error, stackTrace);
  }

  static void error(
    String tag,
    String message, [
    Object? error,
    StackTrace? stackTrace,
  ]) async {
    _instance.e('$tag: $message', error, stackTrace);
  }
}
