

import '../response/base.response.dart';
import 'base_connect.api.dart';

class ServiceApi extends BaseConnect {

  Future<BaseResponse?> getServices() async {
    return await getResponse('/service-type/all');
  }

  Future<BaseResponse?> getSlots({required int staffId}) async {
    return await getResponse('/workSlot/$staffId/staffId');
  }

  Future<BaseResponse?> createWorkSlot(Map<String, dynamic> map) async {
    return await postRequest('/workSlot/create', query: map);
  }

  Future<BaseResponse?> getDistrictByCity({required int cityId}) async {
    return await getResponse('/district/$cityId');
  }


}

