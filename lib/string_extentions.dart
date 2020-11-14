import 'package:myap/routing_data.dart';

extension StringExtentions on String {
  RoutingData get getRoutingData {
    var uriData = Uri.parse(this);
    return RoutingData(
      queryParameter: uriData.queryParameters,
      route: uriData.path,
    );
  }
}
