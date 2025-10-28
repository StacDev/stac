import 'package:flutter_test/flutter_test.dart';
import 'package:stac_core/stac_core.dart';

void main() {
  group('StacNetworkWidget', () {
    test('should create from JSON with loadingWidget and errorWidget', () {
      // Arrange
      const json = {
        'type': 'networkWidget',
        'request': {
          'actionType': 'networkRequest',
          'url': 'https://example.com/data',
          'method': 'get'
        },
        'loadingWidget': {
          'type': 'text',
          'data': 'Loading...'
        },
        'errorWidget': {
          'type': 'text',
          'data': 'Error occurred'
        }
      };

      // Act
      final widget = StacNetworkWidget.fromJson(json);

      // Assert
      expect(widget.request.url, equals('https://example.com/data'));
      expect(widget.loadingWidget, isNotNull);
      expect(widget.errorWidget, isNotNull);
    });

    test('should create from JSON without optional widgets', () {
      // Arrange
      const json = {
        'type': 'networkWidget',
        'request': {
          'actionType': 'networkRequest',
          'url': 'https://example.com/data',
          'method': 'get'
        }
      };

      // Act
      final widget = StacNetworkWidget.fromJson(json);

      // Assert
      expect(widget.request.url, equals('https://example.com/data'));
      expect(widget.loadingWidget, isNull);
      expect(widget.errorWidget, isNull);
    });

    test('should serialize to JSON with loadingWidget and errorWidget', () {
      // Arrange
      final widget = StacNetworkWidget(
        request: StacNetworkRequest(
          url: 'https://example.com/data',
          method: 'get',
        ),
        loadingWidget: StacWidget.fromJson({'type': 'text', 'data': 'Loading...'}),
        errorWidget: StacWidget.fromJson({'type': 'text', 'data': 'Error'}),
      );

      // Act
      final json = widget.toJson();

      // Assert
      expect(json['request'], isNotNull);
      expect(json['loadingWidget'], isNotNull);
      expect(json['errorWidget'], isNotNull);
      expect(json['loadingWidget']['data'], equals('Loading...'));
      expect(json['errorWidget']['data'], equals('Error'));
    });

    test('should serialize to JSON without optional widgets', () {
      // Arrange
      final widget = StacNetworkWidget(
        request: StacNetworkRequest(
          url: 'https://example.com/data',
          method: 'get',
        ),
      );

      // Act
      final json = widget.toJson();

      // Assert
      expect(json['request'], isNotNull);
      expect(json['loadingWidget'], isNull);
      expect(json['errorWidget'], isNull);
    });
  });
}

