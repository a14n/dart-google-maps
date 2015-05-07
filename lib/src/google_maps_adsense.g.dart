// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-05-07T16:00:35.946Z

part of google_maps.adsense;

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _AdUnit
// **************************************************************************

@JsName('google.maps.adsense.AdUnit')
class AdUnit extends MVCObject implements _AdUnit {
  AdUnit.created(JsObject o) : super.created(o);
  AdUnit(Node container, AdUnitOptions opts) : this.created(new JsObject(
          getPath('google.maps.adsense.AdUnit'), [
        container,
        __codec157.encode(opts)
      ]));

  String get backgroundColor => _getBackgroundColor();
  String _getBackgroundColor() =>
      asJsObject(this).callMethod('getBackgroundColor');
  String get borderColor => _getBorderColor();
  String _getBorderColor() => asJsObject(this).callMethod('getBorderColor');
  String get channelNumber => _getChannelNumber();
  String _getChannelNumber() => asJsObject(this).callMethod('getChannelNumber');
  Node get container => _getContainer();
  Node _getContainer() => asJsObject(this).callMethod('getContainer');
  AdFormat get format => _getFormat();
  AdFormat _getFormat() =>
      __codec158.decode(asJsObject(this).callMethod('getFormat'));
  GMap get map => _getMap();
  GMap _getMap() => __codec159.decode(asJsObject(this).callMethod('getMap'));
  ControlPosition get position => _getPosition();
  ControlPosition _getPosition() =>
      __codec160.decode(asJsObject(this).callMethod('getPosition'));
  String get publisherId => _getPublisherId();
  String _getPublisherId() => asJsObject(this).callMethod('getPublisherId');
  String get textColor => _getTextColor();
  String _getTextColor() => asJsObject(this).callMethod('getTextColor');
  String get titleColor => _getTitleColor();
  String _getTitleColor() => asJsObject(this).callMethod('getTitleColor');
  String get urlColor => _getUrlColor();
  String _getUrlColor() => asJsObject(this).callMethod('getUrlColor');
  void set backgroundColor(String backgroundColor) =>
      _setBackgroundColor(backgroundColor);
  void _setBackgroundColor(String backgroundColor) {
    asJsObject(this).callMethod('setBackgroundColor', [backgroundColor]);
  }
  void set borderColor(String borderColor) => _setBorderColor(borderColor);
  void _setBorderColor(String borderColor) {
    asJsObject(this).callMethod('setBorderColor', [borderColor]);
  }
  void set channelNumber(String channelNumber) =>
      _setChannelNumber(channelNumber);
  void _setChannelNumber(String channelNumber) {
    asJsObject(this).callMethod('setChannelNumber', [channelNumber]);
  }
  void set format(AdFormat format) => _setFormat(format);
  void _setFormat(AdFormat format) {
    asJsObject(this).callMethod('setFormat', [__codec158.encode(format)]);
  }
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec159.encode(map)]);
  }
  void set position(ControlPosition position) => _setPosition(position);
  void _setPosition(ControlPosition position) {
    asJsObject(this).callMethod('setPosition', [__codec160.encode(position)]);
  }
  void set textColor(String textColor) => _setTextColor(textColor);
  void _setTextColor(String textColor) {
    asJsObject(this).callMethod('setTextColor', [textColor]);
  }
  void set titleColor(String titleColor) => _setTitleColor(titleColor);
  void _setTitleColor(String titleColor) {
    asJsObject(this).callMethod('setTitleColor', [titleColor]);
  }
  void set urlColor(String urlColor) => _setUrlColor(urlColor);
  void _setUrlColor(String urlColor) {
    asJsObject(this).callMethod('setUrlColor', [urlColor]);
  }
}
/// codec for AdUnitOptions
final __codec157 =
    new JsInterfaceCodec<AdUnitOptions>((o) => new AdUnitOptions.created(o));

/// codec for AdFormat
final __codec158 = new BiMapCodec<AdFormat, dynamic>({
  AdFormat.BANNER: getPath('google.maps.adsense.AdFormat')['BANNER'],
  AdFormat.BUTTON: getPath('google.maps.adsense.AdFormat')['BUTTON'],
  AdFormat.HALF_BANNER: getPath('google.maps.adsense.AdFormat')['HALF_BANNER'],
  AdFormat.LARGE_HORIZONTAL_LINK_UNIT:
      getPath('google.maps.adsense.AdFormat')['LARGE_HORIZONTAL_LINK_UNIT'],
  AdFormat.LARGE_RECTANGLE:
      getPath('google.maps.adsense.AdFormat')['LARGE_RECTANGLE'],
  AdFormat.LARGE_VERTICAL_LINK_UNIT:
      getPath('google.maps.adsense.AdFormat')['LARGE_VERTICAL_LINK_UNIT'],
  AdFormat.LEADERBOARD: getPath('google.maps.adsense.AdFormat')['LEADERBOARD'],
  AdFormat.MEDIUM_RECTANGLE:
      getPath('google.maps.adsense.AdFormat')['MEDIUM_RECTANGLE'],
  AdFormat.MEDIUM_VERTICAL_LINK_UNIT:
      getPath('google.maps.adsense.AdFormat')['MEDIUM_VERTICAL_LINK_UNIT'],
  AdFormat.SKYSCRAPER: getPath('google.maps.adsense.AdFormat')['SKYSCRAPER'],
  AdFormat.SMALL_HORIZONTAL_LINK_UNIT:
      getPath('google.maps.adsense.AdFormat')['SMALL_HORIZONTAL_LINK_UNIT'],
  AdFormat.SMALL_RECTANGLE:
      getPath('google.maps.adsense.AdFormat')['SMALL_RECTANGLE'],
  AdFormat.SMALL_SQUARE:
      getPath('google.maps.adsense.AdFormat')['SMALL_SQUARE'],
  AdFormat.SMALL_VERTICAL_LINK_UNIT:
      getPath('google.maps.adsense.AdFormat')['SMALL_VERTICAL_LINK_UNIT'],
  AdFormat.SQUARE: getPath('google.maps.adsense.AdFormat')['SQUARE'],
  AdFormat.VERTICAL_BANNER:
      getPath('google.maps.adsense.AdFormat')['VERTICAL_BANNER'],
  AdFormat.WIDE_SKYSCRAPER:
      getPath('google.maps.adsense.AdFormat')['WIDE_SKYSCRAPER'],
  AdFormat.X_LARGE_VERTICAL_LINK_UNIT:
      getPath('google.maps.adsense.AdFormat')['X_LARGE_VERTICAL_LINK_UNIT']
});

/// codec for GMap
final __codec159 = new JsInterfaceCodec<GMap>((o) => new GMap.created(o));

/// codec for ControlPosition
final __codec160 = new BiMapCodec<ControlPosition, dynamic>({
  ControlPosition.BOTTOM_CENTER:
      getPath('google.maps.ControlPosition')['BOTTOM_CENTER'],
  ControlPosition.BOTTOM_LEFT:
      getPath('google.maps.ControlPosition')['BOTTOM_LEFT'],
  ControlPosition.BOTTOM_RIGHT:
      getPath('google.maps.ControlPosition')['BOTTOM_RIGHT'],
  ControlPosition.LEFT_BOTTOM:
      getPath('google.maps.ControlPosition')['LEFT_BOTTOM'],
  ControlPosition.LEFT_CENTER:
      getPath('google.maps.ControlPosition')['LEFT_CENTER'],
  ControlPosition.LEFT_TOP: getPath('google.maps.ControlPosition')['LEFT_TOP'],
  ControlPosition.RIGHT_BOTTOM:
      getPath('google.maps.ControlPosition')['RIGHT_BOTTOM'],
  ControlPosition.RIGHT_CENTER:
      getPath('google.maps.ControlPosition')['RIGHT_CENTER'],
  ControlPosition.RIGHT_TOP:
      getPath('google.maps.ControlPosition')['RIGHT_TOP'],
  ControlPosition.TOP_CENTER:
      getPath('google.maps.ControlPosition')['TOP_CENTER'],
  ControlPosition.TOP_LEFT: getPath('google.maps.ControlPosition')['TOP_LEFT'],
  ControlPosition.TOP_RIGHT: getPath('google.maps.ControlPosition')['TOP_RIGHT']
});

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _AdUnitOptions
// **************************************************************************

@anonymous
class AdUnitOptions extends JsInterface implements _AdUnitOptions {
  AdUnitOptions.created(JsObject o) : super.created(o);
  AdUnitOptions() : this.created(new JsObject(context['Object']));

  void set backgroundColor(String _backgroundColor) {
    asJsObject(this)['backgroundColor'] = _backgroundColor;
  }
  String get backgroundColor => asJsObject(this)['backgroundColor'];
  void set borderColor(String _borderColor) {
    asJsObject(this)['borderColor'] = _borderColor;
  }
  String get borderColor => asJsObject(this)['borderColor'];
  void set channelNumber(String _channelNumber) {
    asJsObject(this)['channelNumber'] = _channelNumber;
  }
  String get channelNumber => asJsObject(this)['channelNumber'];
  void set format(AdFormat _format) {
    asJsObject(this)['format'] = __codec158.encode(_format);
  }
  AdFormat get format => __codec158.decode(asJsObject(this)['format']);
  void set map(GMap _map) {
    asJsObject(this)['map'] = __codec159.encode(_map);
  }
  GMap get map => __codec159.decode(asJsObject(this)['map']);
  void set position(ControlPosition _position) {
    asJsObject(this)['position'] = __codec160.encode(_position);
  }
  ControlPosition get position =>
      __codec160.decode(asJsObject(this)['position']);
  void set publisherId(String _publisherId) {
    asJsObject(this)['publisherId'] = _publisherId;
  }
  String get publisherId => asJsObject(this)['publisherId'];
  void set textColor(String _textColor) {
    asJsObject(this)['textColor'] = _textColor;
  }
  String get textColor => asJsObject(this)['textColor'];
  void set titleColor(String _titleColor) {
    asJsObject(this)['titleColor'] = _titleColor;
  }
  String get titleColor => asJsObject(this)['titleColor'];
  void set urlColor(String _urlColor) {
    asJsObject(this)['urlColor'] = _urlColor;
  }
  String get urlColor => asJsObject(this)['urlColor'];
}
