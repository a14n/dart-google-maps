// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-12-17T21:08:05.153Z

part of google_maps.src.adsense;

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _AdUnit
// **************************************************************************

@JsName('google.maps.adsense.AdUnit')
class AdUnit extends MVCObject implements _AdUnit {
  AdUnit.created(JsObject o) : super.created(o);
  AdUnit(Node container, AdUnitOptions opts) : this.created(new JsObject(
          context['google']['maps']['adsense']['AdUnit'], [
        container,
        __codec486.encode(opts)
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
      __codec487.decode(asJsObject(this).callMethod('getFormat'));
  GMap get map => _getMap();
  GMap _getMap() => __codec488.decode(asJsObject(this).callMethod('getMap'));
  ControlPosition get position => _getPosition();
  ControlPosition _getPosition() =>
      __codec489.decode(asJsObject(this).callMethod('getPosition'));
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
    asJsObject(this).callMethod('setFormat', [__codec487.encode(format)]);
  }
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec488.encode(map)]);
  }
  void set position(ControlPosition position) => _setPosition(position);
  void _setPosition(ControlPosition position) {
    asJsObject(this).callMethod('setPosition', [__codec489.encode(position)]);
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
/// codec for google_maps.src.adsense.AdUnitOptions
final __codec486 =
    new JsInterfaceCodec<AdUnitOptions>((o) => new AdUnitOptions.created(o));

/// codec for google_maps.src.adsense.AdFormat
final __codec487 = new BiMapCodec<AdFormat, dynamic>(
    new Map<AdFormat, dynamic>.fromIterable(AdFormat.values, value: asJs));

/// codec for google_maps.src.GMap
final __codec488 = new JsInterfaceCodec<GMap>((o) => new GMap.created(o));

/// codec for google_maps.src.ControlPosition
final __codec489 = new BiMapCodec<ControlPosition, dynamic>(
    new Map<ControlPosition, dynamic>.fromIterable(ControlPosition.values,
        value: asJs));

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
    asJsObject(this)['format'] = __codec487.encode(_format);
  }
  AdFormat get format => __codec487.decode(asJsObject(this)['format']);
  void set map(GMap _map) {
    asJsObject(this)['map'] = __codec488.encode(_map);
  }
  GMap get map => __codec488.decode(asJsObject(this)['map']);
  void set position(ControlPosition _position) {
    asJsObject(this)['position'] = __codec489.encode(_position);
  }
  ControlPosition get position =>
      __codec489.decode(asJsObject(this)['position']);
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

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: class _AdFormat
// **************************************************************************

class AdFormat extends JsEnum {
  static final values = <AdFormat>[
    BANNER,
    BUTTON,
    HALF_BANNER,
    LARGE_HORIZONTAL_LINK_UNIT,
    LARGE_RECTANGLE,
    LARGE_VERTICAL_LINK_UNIT,
    LEADERBOARD,
    MEDIUM_RECTANGLE,
    MEDIUM_VERTICAL_LINK_UNIT,
    SKYSCRAPER,
    SMALL_HORIZONTAL_LINK_UNIT,
    SMALL_RECTANGLE,
    SMALL_SQUARE,
    SMALL_VERTICAL_LINK_UNIT,
    SQUARE,
    VERTICAL_BANNER,
    WIDE_SKYSCRAPER,
    X_LARGE_VERTICAL_LINK_UNIT
  ];
  static final BANNER = new AdFormat._(
      'BANNER', context['google']['maps']['adsense']['AdFormat']['BANNER']);
  static final BUTTON = new AdFormat._(
      'BUTTON', context['google']['maps']['adsense']['AdFormat']['BUTTON']);
  static final HALF_BANNER = new AdFormat._('HALF_BANNER',
      context['google']['maps']['adsense']['AdFormat']['HALF_BANNER']);
  static final LARGE_HORIZONTAL_LINK_UNIT = new AdFormat._(
      'LARGE_HORIZONTAL_LINK_UNIT', context['google']['maps']['adsense'][
      'AdFormat']['LARGE_HORIZONTAL_LINK_UNIT']);
  static final LARGE_RECTANGLE = new AdFormat._('LARGE_RECTANGLE',
      context['google']['maps']['adsense']['AdFormat']['LARGE_RECTANGLE']);
  static final LARGE_VERTICAL_LINK_UNIT = new AdFormat._(
      'LARGE_VERTICAL_LINK_UNIT', context['google']['maps']['adsense'][
      'AdFormat']['LARGE_VERTICAL_LINK_UNIT']);
  static final LEADERBOARD = new AdFormat._('LEADERBOARD',
      context['google']['maps']['adsense']['AdFormat']['LEADERBOARD']);
  static final MEDIUM_RECTANGLE = new AdFormat._('MEDIUM_RECTANGLE',
      context['google']['maps']['adsense']['AdFormat']['MEDIUM_RECTANGLE']);
  static final MEDIUM_VERTICAL_LINK_UNIT = new AdFormat._(
      'MEDIUM_VERTICAL_LINK_UNIT', context['google']['maps']['adsense'][
      'AdFormat']['MEDIUM_VERTICAL_LINK_UNIT']);
  static final SKYSCRAPER = new AdFormat._('SKYSCRAPER',
      context['google']['maps']['adsense']['AdFormat']['SKYSCRAPER']);
  static final SMALL_HORIZONTAL_LINK_UNIT = new AdFormat._(
      'SMALL_HORIZONTAL_LINK_UNIT', context['google']['maps']['adsense'][
      'AdFormat']['SMALL_HORIZONTAL_LINK_UNIT']);
  static final SMALL_RECTANGLE = new AdFormat._('SMALL_RECTANGLE',
      context['google']['maps']['adsense']['AdFormat']['SMALL_RECTANGLE']);
  static final SMALL_SQUARE = new AdFormat._('SMALL_SQUARE',
      context['google']['maps']['adsense']['AdFormat']['SMALL_SQUARE']);
  static final SMALL_VERTICAL_LINK_UNIT = new AdFormat._(
      'SMALL_VERTICAL_LINK_UNIT', context['google']['maps']['adsense'][
      'AdFormat']['SMALL_VERTICAL_LINK_UNIT']);
  static final SQUARE = new AdFormat._(
      'SQUARE', context['google']['maps']['adsense']['AdFormat']['SQUARE']);
  static final VERTICAL_BANNER = new AdFormat._('VERTICAL_BANNER',
      context['google']['maps']['adsense']['AdFormat']['VERTICAL_BANNER']);
  static final WIDE_SKYSCRAPER = new AdFormat._('WIDE_SKYSCRAPER',
      context['google']['maps']['adsense']['AdFormat']['WIDE_SKYSCRAPER']);
  static final X_LARGE_VERTICAL_LINK_UNIT = new AdFormat._(
      'X_LARGE_VERTICAL_LINK_UNIT', context['google']['maps']['adsense'][
      'AdFormat']['X_LARGE_VERTICAL_LINK_UNIT']);

  final String _name;
  AdFormat._(this._name, o) : super.created(o);

  String toString() => 'AdFormat.$_name';

  // dumb code to remove analyzer hint for unused _AdFormat
  _AdFormat _dumbMethod1() => _dumbMethod2();
  _AdFormat _dumbMethod2() => _dumbMethod1();
}
