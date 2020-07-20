import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:habitat/mocks/dio_fake_adapter.dart';

void main() {
  group('UserRemoteDataSource', () {
    final Dio dio = Dio();
    DioFakeAdapter dioFakeAdapter;

    setUp(() {
      dioFakeAdapter = DioFakeAdapter();
      dio.httpClientAdapter = dioFakeAdapter;
    });

    group('login', () {
      test(
          'when credentials are valid should return UserLoginResponse with token',
          () async {
        final result = await dio.get('https://api.rotary.club/property/123');
        print({'object': result.data});

        expect('{"property": "123", "name": "Jane Jimmy"}', result.data);
      });
    });
  });
}
