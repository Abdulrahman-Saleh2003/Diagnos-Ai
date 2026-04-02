

import 'package:diagnos_ai/core/class/status_request.dart';

handingDataController(response) {
  if (response is StatusRequest) {
    print("handlingDataController");
    print(response);
    return response;
  } else {
    return StatusRequest
    .success;
  }
}





