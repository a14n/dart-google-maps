LIBS="adsense drawing geometry panoramio places visualization weather"

pub run build_runner build -c steps-1
mv lib/src/google_maps_src.g{,g}.dart
sed -i 's/\.g\.dart/.gg.dart/' lib/src/google_maps_src.dart

pub run build_runner build -c steps-2
for lib in $LIBS ;
do
  mv lib/src/google_maps_src_${lib}.g{,g}.dart
  sed -i 's/\.g\.dart/.gg.dart/' lib/src/google_maps_src_${lib}.dart
done

pub run build_runner build -c steps-3

mv lib/src/google_maps_src.g{g,}.dart
sed -i 's/\.gg\.dart/.g.dart/' lib/src/google_maps_src.dart
for lib in $LIBS ;
do
  mv lib/src/google_maps_src_${lib}.g{g,}.dart
  sed -i 's/\.gg\.dart/.g.dart/' lib/src/google_maps_src_${lib}.dart
done