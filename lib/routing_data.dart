class RoutingData {
  final String route;
  final Map<String, String> _queryParameter;

  RoutingData({this.route, Map<String, String> queryParameter})
      : _queryParameter = queryParameter;

  operator [](String key) => _queryParameter[key];
}
