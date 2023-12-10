// Dart imports:
import 'dart:io';

// Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:sovchilar/core/di/service_locator.dart';
import 'package:sovchilar/core/network/api_service.dart';
import 'package:sovchilar/core/network/network_constants.dart';
import 'package:sovchilar/features/data/model/contact/contact_response_dto.dart';
import 'package:sovchilar/features/data/model/contact/request/contact_request_model.dart';
import 'package:sovchilar/features/data/model/contact/response/contact_response_model.dart';

abstract class ContactsApi {
  //
  Future<ContactResponseDto> fetchList([int page]);

  Future<ContactResponseModel> add({
    required ContactRequestModel contact,
    //
    File? file,
  });

  Future<ContactResponseModel> update({
    required int id,
    required ContactRequestModel contact,
    //
    File? file,
  });

  Future<void> delete(int id);
}

@LazySingleton(as: ContactsApi)
class ContactsApiImpl implements ContactsApi {
  //
  final api = getIt<AppApi>();

  @override
  Future<ContactResponseDto> fetchList([int page = 1]) async {
    try {
      final res = await api
          .get(NetworkConstants.contact, queryParameters: {'page': page});
      return ContactResponseDto.fromJson(res);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<ContactResponseModel> add({
    required ContactRequestModel contact,
    //
    File? file,
  }) async {
    try {
      var image = file == null
          ? null
          : await MultipartFile.fromFile(file.path,
              filename: file.path.split('/').last);
      var formData = FormData.fromMap({
        'name': contact.firstName,
        'last_name': contact.lastName,
        'phone_number': contact.phoneNumber,
        'is_emergency': contact.isEmergency,
        'image': image,
      });
      return api.post(NetworkConstants.contact, data: formData).then((data) {
        return ContactResponseModel.fromJson(data);
      });
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<ContactResponseModel> update({
    required int id,
    required ContactRequestModel contact,
    //
    File? file,
  }) async {
    try {
      var image = file == null
          ? null
          : await MultipartFile.fromFile(file.path,
              filename: file.path.split('/').last);
      var formData = FormData.fromMap({
        'name': contact.firstName,
        'last_name': contact.lastName,
        'phone_number': contact.phoneNumber,
        'is_emergency': contact.isEmergency,
        'image': image,
      });
      return api
          .put(NetworkConstants.editContact(id), data: formData)
          .then((data) {
        return ContactResponseModel.fromJson(data);
      });
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> delete(int id) async {
    try {
      return api.delete(NetworkConstants.editContact(id));
    } catch (e) {
      rethrow;
    }
  }
}
