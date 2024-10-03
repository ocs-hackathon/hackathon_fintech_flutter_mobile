import 'package:hackathon_fintech_flutter_mobile/core/services/api/api_client.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/constants/enums/data_enums.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/helpers/functions.dart';

class LoanRepository {
  final ApiClient apiClient;

  LoanRepository({required this.apiClient});

  Future<bool> takeLoan({required String loanOfferId}) async {
    try {
      await apiClient.request(
        requestType: RequestType.put,
        path: 'loan/takeLoan/$loanOfferId',
      );
      return true;
    } catch (e) {
      outlog({e.toString()});
      return false;
    }
  }

  Future<bool> payBackLoan() async {
    try {
      await apiClient.request(
        requestType: RequestType.put,
        path: 'loan/payBack',
      );
      return true;
    } catch (e) {
      outlog({e.toString()});
      return false;
    }
  }
}
