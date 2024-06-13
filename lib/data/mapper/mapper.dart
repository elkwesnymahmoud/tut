import 'package:tut/app/constant.dart';
import 'package:tut/app/extensions.dart';

// to convert the response into a non nullable object (model)

import 'package:tut/data/responses/responses.dart';
import 'package:tut/domain/model/model.dart';

extension CustomerResponseMapper on CustomerResponse? {
  Customer toDomain() {
    return Customer(
        this?.id.orEmpty() ?? Constant.empty,
        this?.name.orEmpty() ?? Constant.empty,
        this?.numOfNotifications.orZero() ?? Constant.zero);
  }
}

extension ContactsResponseMapper on ContactsResponse? {
  Contacts toDomain() {
    return Contacts(
        this?.email.orEmpty() ?? Constant.empty,
        this?.phone.orEmpty() ?? Constant.empty,
        this?.link.orEmpty() ?? Constant.empty);
  }
}

extension AuthenticationResponseMapper on AuthenticationResponse? {
  Authentication toDomain() {
    return Authentication(
        this?.customer?.toDomain(), this?.contacts?.toDomain());
  }
}
