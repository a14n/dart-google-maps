// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-04-20T20:55:07.255Z

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
        ((e) => e == null ? null : asJsObject(e))(opts)
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
  AdFormat _getFormat() => ((e) {
    if (e == null) return null;
    final path = getPath('google.maps.adsense.AdFormat');
    if (e == path['BANNER']) return AdFormat.BANNER;
    if (e == path['BUTTON']) return AdFormat.BUTTON;
    if (e == path['HALF_BANNER']) return AdFormat.HALF_BANNER;
    if (e ==
        path[
        'LARGE_HORIZONTAL_LINK_UNIT']) return AdFormat.LARGE_HORIZONTAL_LINK_UNIT;
    if (e == path['LARGE_RECTANGLE']) return AdFormat.LARGE_RECTANGLE;
    if (e ==
        path[
        'LARGE_VERTICAL_LINK_UNIT']) return AdFormat.LARGE_VERTICAL_LINK_UNIT;
    if (e == path['LEADERBOARD']) return AdFormat.LEADERBOARD;
    if (e == path['MEDIUM_RECTANGLE']) return AdFormat.MEDIUM_RECTANGLE;
    if (e ==
        path[
        'MEDIUM_VERTICAL_LINK_UNIT']) return AdFormat.MEDIUM_VERTICAL_LINK_UNIT;
    if (e == path['SKYSCRAPER']) return AdFormat.SKYSCRAPER;
    if (e ==
        path[
        'SMALL_HORIZONTAL_LINK_UNIT']) return AdFormat.SMALL_HORIZONTAL_LINK_UNIT;
    if (e == path['SMALL_RECTANGLE']) return AdFormat.SMALL_RECTANGLE;
    if (e == path['SMALL_SQUARE']) return AdFormat.SMALL_SQUARE;
    if (e ==
        path[
        'SMALL_VERTICAL_LINK_UNIT']) return AdFormat.SMALL_VERTICAL_LINK_UNIT;
    if (e == path['SQUARE']) return AdFormat.SQUARE;
    if (e == path['VERTICAL_BANNER']) return AdFormat.VERTICAL_BANNER;
    if (e == path['WIDE_SKYSCRAPER']) return AdFormat.WIDE_SKYSCRAPER;
    if (e ==
        path[
        'X_LARGE_VERTICAL_LINK_UNIT']) return AdFormat.X_LARGE_VERTICAL_LINK_UNIT;
  })(asJsObject(this).callMethod('getFormat'));
  GMap get map => _getMap();
  GMap _getMap() => ((e) => e == null ? null : new GMap.created(e))(
      asJsObject(this).callMethod('getMap'));
  ControlPosition get position => _getPosition();
  ControlPosition _getPosition() => ((e) {
    if (e == null) return null;
    final path = getPath('google.maps.ControlPosition');
    if (e == path['BOTTOM_CENTER']) return ControlPosition.BOTTOM_CENTER;
    if (e == path['BOTTOM_LEFT']) return ControlPosition.BOTTOM_LEFT;
    if (e == path['BOTTOM_RIGHT']) return ControlPosition.BOTTOM_RIGHT;
    if (e == path['LEFT_BOTTOM']) return ControlPosition.LEFT_BOTTOM;
    if (e == path['LEFT_CENTER']) return ControlPosition.LEFT_CENTER;
    if (e == path['LEFT_TOP']) return ControlPosition.LEFT_TOP;
    if (e == path['RIGHT_BOTTOM']) return ControlPosition.RIGHT_BOTTOM;
    if (e == path['RIGHT_CENTER']) return ControlPosition.RIGHT_CENTER;
    if (e == path['RIGHT_TOP']) return ControlPosition.RIGHT_TOP;
    if (e == path['TOP_CENTER']) return ControlPosition.TOP_CENTER;
    if (e == path['TOP_LEFT']) return ControlPosition.TOP_LEFT;
    if (e == path['TOP_RIGHT']) return ControlPosition.TOP_RIGHT;
  })(asJsObject(this).callMethod('getPosition'));
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
    asJsObject(this).callMethod('setFormat', [
      ((e) {
        if (e == null) return null;
        final path = getPath('google.maps.adsense.AdFormat');
        if (e == AdFormat.BANNER) return path['BANNER'];
        if (e == AdFormat.BUTTON) return path['BUTTON'];
        if (e == AdFormat.HALF_BANNER) return path['HALF_BANNER'];
        if (e == AdFormat.LARGE_HORIZONTAL_LINK_UNIT) return path[
            'LARGE_HORIZONTAL_LINK_UNIT'];
        if (e == AdFormat.LARGE_RECTANGLE) return path['LARGE_RECTANGLE'];
        if (e == AdFormat.LARGE_VERTICAL_LINK_UNIT) return path[
            'LARGE_VERTICAL_LINK_UNIT'];
        if (e == AdFormat.LEADERBOARD) return path['LEADERBOARD'];
        if (e == AdFormat.MEDIUM_RECTANGLE) return path['MEDIUM_RECTANGLE'];
        if (e == AdFormat.MEDIUM_VERTICAL_LINK_UNIT) return path[
            'MEDIUM_VERTICAL_LINK_UNIT'];
        if (e == AdFormat.SKYSCRAPER) return path['SKYSCRAPER'];
        if (e == AdFormat.SMALL_HORIZONTAL_LINK_UNIT) return path[
            'SMALL_HORIZONTAL_LINK_UNIT'];
        if (e == AdFormat.SMALL_RECTANGLE) return path['SMALL_RECTANGLE'];
        if (e == AdFormat.SMALL_SQUARE) return path['SMALL_SQUARE'];
        if (e == AdFormat.SMALL_VERTICAL_LINK_UNIT) return path[
            'SMALL_VERTICAL_LINK_UNIT'];
        if (e == AdFormat.SQUARE) return path['SQUARE'];
        if (e == AdFormat.VERTICAL_BANNER) return path['VERTICAL_BANNER'];
        if (e == AdFormat.WIDE_SKYSCRAPER) return path['WIDE_SKYSCRAPER'];
        if (e == AdFormat.X_LARGE_VERTICAL_LINK_UNIT) return path[
            'X_LARGE_VERTICAL_LINK_UNIT'];
      })(format)
    ]);
  }
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod(
        'setMap', [((e) => e == null ? null : asJsObject(e))(map)]);
  }
  void set position(ControlPosition position) => _setPosition(position);
  void _setPosition(ControlPosition position) {
    asJsObject(this).callMethod('setPosition', [
      ((e) {
        if (e == null) return null;
        final path = getPath('google.maps.ControlPosition');
        if (e == ControlPosition.BOTTOM_CENTER) return path['BOTTOM_CENTER'];
        if (e == ControlPosition.BOTTOM_LEFT) return path['BOTTOM_LEFT'];
        if (e == ControlPosition.BOTTOM_RIGHT) return path['BOTTOM_RIGHT'];
        if (e == ControlPosition.LEFT_BOTTOM) return path['LEFT_BOTTOM'];
        if (e == ControlPosition.LEFT_CENTER) return path['LEFT_CENTER'];
        if (e == ControlPosition.LEFT_TOP) return path['LEFT_TOP'];
        if (e == ControlPosition.RIGHT_BOTTOM) return path['RIGHT_BOTTOM'];
        if (e == ControlPosition.RIGHT_CENTER) return path['RIGHT_CENTER'];
        if (e == ControlPosition.RIGHT_TOP) return path['RIGHT_TOP'];
        if (e == ControlPosition.TOP_CENTER) return path['TOP_CENTER'];
        if (e == ControlPosition.TOP_LEFT) return path['TOP_LEFT'];
        if (e == ControlPosition.TOP_RIGHT) return path['TOP_RIGHT'];
      })(position)
    ]);
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
    asJsObject(this)['format'] = ((e) {
      if (e == null) return null;
      final path = getPath('google.maps.adsense.AdFormat');
      if (e == AdFormat.BANNER) return path['BANNER'];
      if (e == AdFormat.BUTTON) return path['BUTTON'];
      if (e == AdFormat.HALF_BANNER) return path['HALF_BANNER'];
      if (e == AdFormat.LARGE_HORIZONTAL_LINK_UNIT) return path[
          'LARGE_HORIZONTAL_LINK_UNIT'];
      if (e == AdFormat.LARGE_RECTANGLE) return path['LARGE_RECTANGLE'];
      if (e == AdFormat.LARGE_VERTICAL_LINK_UNIT) return path[
          'LARGE_VERTICAL_LINK_UNIT'];
      if (e == AdFormat.LEADERBOARD) return path['LEADERBOARD'];
      if (e == AdFormat.MEDIUM_RECTANGLE) return path['MEDIUM_RECTANGLE'];
      if (e == AdFormat.MEDIUM_VERTICAL_LINK_UNIT) return path[
          'MEDIUM_VERTICAL_LINK_UNIT'];
      if (e == AdFormat.SKYSCRAPER) return path['SKYSCRAPER'];
      if (e == AdFormat.SMALL_HORIZONTAL_LINK_UNIT) return path[
          'SMALL_HORIZONTAL_LINK_UNIT'];
      if (e == AdFormat.SMALL_RECTANGLE) return path['SMALL_RECTANGLE'];
      if (e == AdFormat.SMALL_SQUARE) return path['SMALL_SQUARE'];
      if (e == AdFormat.SMALL_VERTICAL_LINK_UNIT) return path[
          'SMALL_VERTICAL_LINK_UNIT'];
      if (e == AdFormat.SQUARE) return path['SQUARE'];
      if (e == AdFormat.VERTICAL_BANNER) return path['VERTICAL_BANNER'];
      if (e == AdFormat.WIDE_SKYSCRAPER) return path['WIDE_SKYSCRAPER'];
      if (e == AdFormat.X_LARGE_VERTICAL_LINK_UNIT) return path[
          'X_LARGE_VERTICAL_LINK_UNIT'];
    })(_format);
  }
  AdFormat get format => ((e) {
    if (e == null) return null;
    final path = getPath('google.maps.adsense.AdFormat');
    if (e == path['BANNER']) return AdFormat.BANNER;
    if (e == path['BUTTON']) return AdFormat.BUTTON;
    if (e == path['HALF_BANNER']) return AdFormat.HALF_BANNER;
    if (e ==
        path[
        'LARGE_HORIZONTAL_LINK_UNIT']) return AdFormat.LARGE_HORIZONTAL_LINK_UNIT;
    if (e == path['LARGE_RECTANGLE']) return AdFormat.LARGE_RECTANGLE;
    if (e ==
        path[
        'LARGE_VERTICAL_LINK_UNIT']) return AdFormat.LARGE_VERTICAL_LINK_UNIT;
    if (e == path['LEADERBOARD']) return AdFormat.LEADERBOARD;
    if (e == path['MEDIUM_RECTANGLE']) return AdFormat.MEDIUM_RECTANGLE;
    if (e ==
        path[
        'MEDIUM_VERTICAL_LINK_UNIT']) return AdFormat.MEDIUM_VERTICAL_LINK_UNIT;
    if (e == path['SKYSCRAPER']) return AdFormat.SKYSCRAPER;
    if (e ==
        path[
        'SMALL_HORIZONTAL_LINK_UNIT']) return AdFormat.SMALL_HORIZONTAL_LINK_UNIT;
    if (e == path['SMALL_RECTANGLE']) return AdFormat.SMALL_RECTANGLE;
    if (e == path['SMALL_SQUARE']) return AdFormat.SMALL_SQUARE;
    if (e ==
        path[
        'SMALL_VERTICAL_LINK_UNIT']) return AdFormat.SMALL_VERTICAL_LINK_UNIT;
    if (e == path['SQUARE']) return AdFormat.SQUARE;
    if (e == path['VERTICAL_BANNER']) return AdFormat.VERTICAL_BANNER;
    if (e == path['WIDE_SKYSCRAPER']) return AdFormat.WIDE_SKYSCRAPER;
    if (e ==
        path[
        'X_LARGE_VERTICAL_LINK_UNIT']) return AdFormat.X_LARGE_VERTICAL_LINK_UNIT;
  })(asJsObject(this)['format']);
  void set map(GMap _map) {
    asJsObject(this)['map'] = ((e) => e == null ? null : asJsObject(e))(_map);
  }
  GMap get map =>
      ((e) => e == null ? null : new GMap.created(e))(asJsObject(this)['map']);
  void set position(ControlPosition _position) {
    asJsObject(this)['position'] = ((e) {
      if (e == null) return null;
      final path = getPath('google.maps.ControlPosition');
      if (e == ControlPosition.BOTTOM_CENTER) return path['BOTTOM_CENTER'];
      if (e == ControlPosition.BOTTOM_LEFT) return path['BOTTOM_LEFT'];
      if (e == ControlPosition.BOTTOM_RIGHT) return path['BOTTOM_RIGHT'];
      if (e == ControlPosition.LEFT_BOTTOM) return path['LEFT_BOTTOM'];
      if (e == ControlPosition.LEFT_CENTER) return path['LEFT_CENTER'];
      if (e == ControlPosition.LEFT_TOP) return path['LEFT_TOP'];
      if (e == ControlPosition.RIGHT_BOTTOM) return path['RIGHT_BOTTOM'];
      if (e == ControlPosition.RIGHT_CENTER) return path['RIGHT_CENTER'];
      if (e == ControlPosition.RIGHT_TOP) return path['RIGHT_TOP'];
      if (e == ControlPosition.TOP_CENTER) return path['TOP_CENTER'];
      if (e == ControlPosition.TOP_LEFT) return path['TOP_LEFT'];
      if (e == ControlPosition.TOP_RIGHT) return path['TOP_RIGHT'];
    })(_position);
  }
  ControlPosition get position => ((e) {
    if (e == null) return null;
    final path = getPath('google.maps.ControlPosition');
    if (e == path['BOTTOM_CENTER']) return ControlPosition.BOTTOM_CENTER;
    if (e == path['BOTTOM_LEFT']) return ControlPosition.BOTTOM_LEFT;
    if (e == path['BOTTOM_RIGHT']) return ControlPosition.BOTTOM_RIGHT;
    if (e == path['LEFT_BOTTOM']) return ControlPosition.LEFT_BOTTOM;
    if (e == path['LEFT_CENTER']) return ControlPosition.LEFT_CENTER;
    if (e == path['LEFT_TOP']) return ControlPosition.LEFT_TOP;
    if (e == path['RIGHT_BOTTOM']) return ControlPosition.RIGHT_BOTTOM;
    if (e == path['RIGHT_CENTER']) return ControlPosition.RIGHT_CENTER;
    if (e == path['RIGHT_TOP']) return ControlPosition.RIGHT_TOP;
    if (e == path['TOP_CENTER']) return ControlPosition.TOP_CENTER;
    if (e == path['TOP_LEFT']) return ControlPosition.TOP_LEFT;
    if (e == path['TOP_RIGHT']) return ControlPosition.TOP_RIGHT;
  })(asJsObject(this)['position']);
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
