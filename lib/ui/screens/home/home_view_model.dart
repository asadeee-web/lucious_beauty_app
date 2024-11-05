import 'package:lucious_beauty_app/core/constants/strings.dart';
import 'package:lucious_beauty_app/core/models/services.dart';
import 'package:lucious_beauty_app/core/view_model/base_view_model.dart';

class HomeViewModel extends BaseViewModel {
  List<ServicesModel> listServicesModel = [
    ServicesModel(id: "1", image: nails, title: "Nails"),
    ServicesModel(id: "1", image: hair, title: "Hair"),
    ServicesModel(id: "1", image: facial, title: "Facial"),
    ServicesModel(id: "1", image: massage, title: "Massage"),
    ServicesModel(id: "1", image: waxing, title: "Waxing"),
    ServicesModel(id: "1", image: threading, title: "Threading"),
  ];
}
