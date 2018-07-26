// GENERATED CODE - DO NOT MODIFY BY HAND

part of google_maps.src.adsense;

// **************************************************************************
// JsWrappingGenerator
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
  static final BANNER = AdFormat._(
      'BANNER', context['google']['maps']['adsense']['AdFormat']['BANNER']);
  static final BUTTON = AdFormat._(
      'BUTTON', context['google']['maps']['adsense']['AdFormat']['BUTTON']);
  static final HALF_BANNER = AdFormat._('HALF_BANNER',
      context['google']['maps']['adsense']['AdFormat']['HALF_BANNER']);
  static final LARGE_HORIZONTAL_LINK_UNIT = AdFormat._(
      'LARGE_HORIZONTAL_LINK_UNIT',
      context['google']['maps']['adsense']['AdFormat']
          ['LARGE_HORIZONTAL_LINK_UNIT']);
  static final LARGE_RECTANGLE = AdFormat._('LARGE_RECTANGLE',
      context['google']['maps']['adsense']['AdFormat']['LARGE_RECTANGLE']);
  static final LARGE_VERTICAL_LINK_UNIT = AdFormat._(
      'LARGE_VERTICAL_LINK_UNIT',
      context['google']['maps']['adsense']['AdFormat']
          ['LARGE_VERTICAL_LINK_UNIT']);
  static final LEADERBOARD = AdFormat._('LEADERBOARD',
      context['google']['maps']['adsense']['AdFormat']['LEADERBOARD']);
  static final MEDIUM_RECTANGLE = AdFormat._('MEDIUM_RECTANGLE',
      context['google']['maps']['adsense']['AdFormat']['MEDIUM_RECTANGLE']);
  static final MEDIUM_VERTICAL_LINK_UNIT = AdFormat._(
      'MEDIUM_VERTICAL_LINK_UNIT',
      context['google']['maps']['adsense']['AdFormat']
          ['MEDIUM_VERTICAL_LINK_UNIT']);
  static final SKYSCRAPER = AdFormat._('SKYSCRAPER',
      context['google']['maps']['adsense']['AdFormat']['SKYSCRAPER']);
  static final SMALL_HORIZONTAL_LINK_UNIT = AdFormat._(
      'SMALL_HORIZONTAL_LINK_UNIT',
      context['google']['maps']['adsense']['AdFormat']
          ['SMALL_HORIZONTAL_LINK_UNIT']);
  static final SMALL_RECTANGLE = AdFormat._('SMALL_RECTANGLE',
      context['google']['maps']['adsense']['AdFormat']['SMALL_RECTANGLE']);
  static final SMALL_SQUARE = AdFormat._('SMALL_SQUARE',
      context['google']['maps']['adsense']['AdFormat']['SMALL_SQUARE']);
  static final SMALL_VERTICAL_LINK_UNIT = AdFormat._(
      'SMALL_VERTICAL_LINK_UNIT',
      context['google']['maps']['adsense']['AdFormat']
          ['SMALL_VERTICAL_LINK_UNIT']);
  static final SQUARE = AdFormat._(
      'SQUARE', context['google']['maps']['adsense']['AdFormat']['SQUARE']);
  static final VERTICAL_BANNER = AdFormat._('VERTICAL_BANNER',
      context['google']['maps']['adsense']['AdFormat']['VERTICAL_BANNER']);
  static final WIDE_SKYSCRAPER = AdFormat._('WIDE_SKYSCRAPER',
      context['google']['maps']['adsense']['AdFormat']['WIDE_SKYSCRAPER']);
  static final X_LARGE_VERTICAL_LINK_UNIT = AdFormat._(
      'X_LARGE_VERTICAL_LINK_UNIT',
      context['google']['maps']['adsense']['AdFormat']
          ['X_LARGE_VERTICAL_LINK_UNIT']);
  final String _name;
  AdFormat._(this._name, o) : super.created(o);

  @override
  String toString() => 'AdFormat.$_name';

  // dumb code to remove analyzer hint for unused _AdFormat
  _AdFormat _dumbMethod1() => _dumbMethod2();
  _AdFormat _dumbMethod2() => _dumbMethod1();
}

@GeneratedFrom(_AdUnit)
@JsName('google.maps.adsense.AdUnit')
class AdUnit extends MVCObject {
  AdUnit(Node container, AdUnitOptions opts)
      : this.created(JsObject(context['google']['maps']['adsense']['AdUnit'],
            [container, __codec0.encode(opts)]));
  AdUnit.created(JsObject o) : super.created(o);

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
      __codec1.decode(asJsObject(this).callMethod('getFormat'));
  GMap get map => _getMap();
  GMap _getMap() => __codec2.decode(asJsObject(this).callMethod('getMap'));
  ControlPosition get position => _getPosition();
  ControlPosition _getPosition() =>
      __codec3.decode(asJsObject(this).callMethod('getPosition'));
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
    asJsObject(this).callMethod('setFormat', [__codec1.encode(format)]);
  }

  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec2.encode(map)]);
  }

  void set position(ControlPosition position) => _setPosition(position);
  void _setPosition(ControlPosition position) {
    asJsObject(this).callMethod('setPosition', [__codec3.encode(position)]);
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

@GeneratedFrom(_AdUnitOptions)
@anonymous
class AdUnitOptions extends JsInterface {
  AdUnitOptions() : this.created(JsObject(context['Object']));
  AdUnitOptions.created(JsObject o) : super.created(o);

  set backgroundColor(String _backgroundColor) {
    asJsObject(this)['backgroundColor'] = _backgroundColor;
  }

  String get backgroundColor => asJsObject(this)['backgroundColor'];
  set borderColor(String _borderColor) {
    asJsObject(this)['borderColor'] = _borderColor;
  }

  String get borderColor => asJsObject(this)['borderColor'];
  set channelNumber(String _channelNumber) {
    asJsObject(this)['channelNumber'] = _channelNumber;
  }

  String get channelNumber => asJsObject(this)['channelNumber'];
  set format(AdFormat _format) {
    asJsObject(this)['format'] = __codec1.encode(_format);
  }

  AdFormat get format => __codec1.decode(asJsObject(this)['format']);
  set map(GMap _map) {
    asJsObject(this)['map'] = __codec2.encode(_map);
  }

  GMap get map => __codec2.decode(asJsObject(this)['map']);
  set position(ControlPosition _position) {
    asJsObject(this)['position'] = __codec3.encode(_position);
  }

  ControlPosition get position => __codec3.decode(asJsObject(this)['position']);
  set publisherId(String _publisherId) {
    asJsObject(this)['publisherId'] = _publisherId;
  }

  String get publisherId => asJsObject(this)['publisherId'];
  set textColor(String _textColor) {
    asJsObject(this)['textColor'] = _textColor;
  }

  String get textColor => asJsObject(this)['textColor'];
  set titleColor(String _titleColor) {
    asJsObject(this)['titleColor'] = _titleColor;
  }

  String get titleColor => asJsObject(this)['titleColor'];
  set urlColor(String _urlColor) {
    asJsObject(this)['urlColor'] = _urlColor;
  }

  String get urlColor => asJsObject(this)['urlColor'];
}

/// codec for google_maps.src.adsense.AdUnitOptions
final __codec0 =
    JsInterfaceCodec<AdUnitOptions>((o) => AdUnitOptions.created(o));

/// codec for google_maps.src.adsense.AdFormat
final __codec1 = BiMapCodec<AdFormat, dynamic>(
    Map<AdFormat, dynamic>.fromIterable(AdFormat.values, value: asJs));

/// codec for google_maps.src.GMap
final __codec2 = JsInterfaceCodec<GMap>((o) => GMap.created(o));

/// codec for google_maps.src.ControlPosition
final __codec3 = BiMapCodec<ControlPosition, dynamic>(
    Map<ControlPosition, dynamic>.fromIterable(ControlPosition.values,
        value: asJs));
