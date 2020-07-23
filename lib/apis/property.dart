// import 'package:habitat/utils/config.dart';
import 'package:retrofit/retrofit.dart';
// import 'package:dio/dio.dart' hide Headers;

import 'package:habitat/models/property.dart';

// part 'property.g.dart';

// @RestApi(baseUrl: HabitatConfig.BASE_URL)
abstract class PropertyApi {
  static const String propertyPath = '/properties';
  // factory PropertyApi(Dio dio, {String baseUrl}) = _PropertyApi;

  @GET(propertyPath)
  Future<List<PropertyModel>> getProperties();

  @GET("$propertyPath/{id}")
  Future<PropertyModel> getProperty(@Path() String id);

  @POST(propertyPath)
  Future<PropertyModel> addProperty(@Body() PropertyModel task);
}
