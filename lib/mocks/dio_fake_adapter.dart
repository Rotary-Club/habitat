import 'package:dio/dio.dart';
import 'package:dio/adapter.dart';

class DioFakeAdapter extends HttpClientAdapter {
  DefaultHttpClientAdapter _adapter = DefaultHttpClientAdapter();

  @override
  Future<ResponseBody> fetch(RequestOptions options,
      Stream<List<int>> requestStream, Future cancelFuture) async {
    Uri uri = options.uri;
    switch (uri.host) {
      case 'https://api.rotary.club/property/123':
        return ResponseBody.fromString(
            '{"property": "123", "name": "Jane Jimmy"}', 200);
      case 'https://api.rotary.club/property/155':
        return ResponseBody.fromString(
            '{"property": "155", "name": "Gregor"}', 200);
      default:
        return _adapter.fetch(options, requestStream, cancelFuture);
    }
  }

  @override
  void close({bool force = false}) {
    _adapter.close(force: force);
  }
}
