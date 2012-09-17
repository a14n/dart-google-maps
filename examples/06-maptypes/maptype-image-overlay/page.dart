#import('dart:html');
#import('dart:math', prefix:'Math');
#import('../../../gmaps.dart', prefix:'gmaps');

void main() {
  final myLatlng = new gmaps.LatLng(0, 0);
  final mapOptions = new gmaps.MapOptions()
    ..zoom = 18
    ..center = new gmaps.LatLng(37.78313383212, -122.4039494991302)
    ..mapTypeId = gmaps.MapTypeId.ROADMAP
    ;

  final map = new gmaps.GMap(query('#map-canvas'), mapOptions);


  final bounds = new Map<int, List<List<int>>>();
  bounds[17] = [[20969, 20970], [50657, 50658]];
  bounds[18] = [[41939, 41940], [101315, 101317]];
  bounds[19] = [[83878, 83881], [202631, 202634]];
  bounds[20] = [[167757, 167763], [405263, 405269]];

  final imageMapType = new gmaps.ImageMapType(new gmaps.ImageMapTypeOptions()
    ..tileSize = new gmaps.Size(256, 256)
    ..$["getTileUrl"] = (List args) {
      final coord = new gmaps.Point.fromJsRef(args[0]);
      final num zoom = args[1];
      if (zoom < 17 || zoom > 20 ||
          bounds[zoom][0][0] > coord.x || coord.x > bounds[zoom][0][1] ||
          bounds[zoom][1][0] > coord.y || coord.y > bounds[zoom][1][1]) {
        return null;
      }

      return 'http://www.gstatic.com/io2010maps/tiles/5/L2_${zoom}_${coord.x}_${coord.y}.png';
    }
  );

  map.overlayMapTypes.push(imageMapType);
}