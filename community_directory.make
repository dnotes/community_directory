api = 2
core = 6.x

projects[] = cck
projects[] = link
projects[] = filefield
projects[] = imagefield

projects[] = ctools

projects[] = date

projects[] = node_import

projects[] = features
projects[] = feeds
projects[] = diff

projects[] = imageapi
projects[] = imagecache

projects[] = gmap
projects[location][version] = "3.1"
projects[location][patch][] = "http://drupal.org/files/issues/820116-location-3.1-geoip-views.patch"

projects[] = advanced_help
projects[] = boost
projects[] = cacheexclude

projects[geoip] = 1.3

projects[] = pathauto
projects[] = strongarm
projects[] = token
projects[] = path_redirect

projects[] = google_analytics

projects[] = vertical_tabs
projects[views] = 2.12

projects[random_splash][location] = "http://features.dnotes.net/fserver"
projects[bcd_localities][download][type] = "git"
projects[bcd_localities][download][url] = "git://dnotes.net/bcd_localities.git"
projects[bcd_centers][download][type] = "git"
projects[bcd_centers][download][url] = "git://dnotes.net/bcd_centers.git"
projects[bcd_states][download][type] = "git"
projects[bcd_states][download][url] = "git://dnotes.net/bcd_states.git"
projects[bcd_facilities][download][type] = "git"
projects[bcd_facilities][download][url] = "git://dnotes.net/bcd_facilities.git"
projects[bcd_seasonal][download][type] = "git"
projects[bcd_seasonal][download][url] = "git://dnotes.net/bcd_seasonal.git"
projects[bcd_temple][download][type] = "git"
projects[bcd_temple][download][url] = "git://dnotes.net/bcd_temple.git"

; Libraries
libraries[Clusterer2.js][download][type] = "raw"
libraries[Clusterer2.js][download][url] = "http://acme.com/javascript/Clusterer2.js"
libraries[Clusterer2.js][destination] = "modules/gmap/thirdparty"

libraries[GeoLiteCity.dat][download][type] = "get"
libraries[GeoLiteCity.dat][download][url] = "http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz"
libraries[GeoLiteCity.dat][destination] = "libraries/geoip"

libraries[zoom][download][type] = "git"
libraries[zoom][download][url] = "http://github.com/dnotes/gmap_zoom"
libraries[zoom][directory_name] = "zoom"
libraries[zoom][destination] = "modules/gmap/markers"

libraries[bahai][download][type] = "git"
libraries[bahai][download][url] = "http://github.com/dnotes/gmap_bahai"
libraries[bahai][directory_name] = "bahai"
libraries[bahai][destination] = "modules/gmap/markers"
