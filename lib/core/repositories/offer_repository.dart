import 'package:hackathon_fintech_flutter_mobile/core/models/freezed_models.dart';
import 'package:hackathon_fintech_flutter_mobile/core/services/api/api_client.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/constants/enums/data_enums.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/helpers/functions.dart';

class OfferRepository {
  final ApiClient apiClient;

  OfferRepository({required this.apiClient});

  Future<List<OfferModel>?> getAllLoanOffers() async {
    try {
      var response = await apiClient.request(
        requestType: RequestType.get,
        path: 'offer/getAllActiveOffers',
      );
      var offers = <OfferModel>[];
      outlog("response found ${response.runtimeType}");
      for (var data in (response as List<dynamic>)) {
        offers.add(OfferModel.fromJson(data));
      }
      outlog("found return ${offers.length}");
      return offers;
    } catch (e) {
      outlog({e.toString()});
      return null;
    }
  }
}
