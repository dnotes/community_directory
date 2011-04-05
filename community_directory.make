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
projects[] = context
projects[] = job_scheduler
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
projects[] = adminrole
projects[] = admin_menu

projects[geoip] = 1.3

projects[] = pathauto
projects[] = strongarm
projects[] = token
projects[] = path_redirect

projects[] = google_analytics

projects[] = vertical_tabs
projects[views] = 2.12

projects[random_splash][location] = "http://features.dnotes.net/fserver"
projects[bcd_localities][type] = "module"
projects[bcd_localities][download][type] = "git"
projects[bcd_localities][download][url] = "git://github.com/dnotes/bcd_localities"
projects[bcd_centers][type] = "module"
projects[bcd_centers][download][type] = "git"
projects[bcd_centers][download][url] = "http://github.com/dnotes/bcd_centers"
projects[bcd_states][type] = "module"
projects[bcd_states][download][type] = "git"
projects[bcd_states][download][url] = "http://github.com/dnotes/bcd_states"
projects[bcd_facilities][type] = "module"
projects[bcd_facilities][download][type] = "git"
projects[bcd_facilities][download][url] = "http://github.com/dnotes/bcd_facilities"
projects[bcd_seasonal][type] = "module"
projects[bcd_seasonal][download][type] = "git"
projects[bcd_seasonal][download][url] = "http://github.com/dnotes/bcd_seasonal"
projects[bcd_temple][type] = "module"
projects[bcd_temple][download][type] = "git"
projects[bcd_temple][download][url] = "http://github.com/dnotes/bcd_temple"

projects[link_options][type] = "module"
projects[link_options][download][type] = "git"
projects[link_options][download][url] = "http://git.drupal.org/sandbox/dnotes/1106642.git"
projects[link_options][directory_name] = "link_options"
projects[google_calendar_basic][type] = "module"
projects[google_calendar_basic][download][type] = "git"
projects[google_calendar_basic][download][url] = "http://git.drupal.org/sandbox/dnotes/1107592.git"
projects[google_calendar_basic][directory_name] = "google_calendar_basic"
projects[gmap_legend][type] = "module"
projects[gmap_legend][download][type] = "git"
projects[gmap_legend][download][url] = "http://git.drupal.org/sandbox/dnotes/1116188.git"
projects[gmap_legend][directory_name] = "gmap_legend"


; Libraries
libraries[Clusterer2.js][download][type] = "file"
libraries[Clusterer2.js][download][url] = "http://acme.com/javascript/Clusterer2.js"
libraries[Clusterer2.js][destination] = "modules/gmap/thirdparty"
libraries[Clusterer2.js][filename] = "Clusterer2.js"
libraries[Clusterer2.js][directory_name] = FALSE

libraries[GeoLiteCity.dat][download][type] = "get"
libraries[GeoLiteCity.dat][download][url] = "http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.tar.gz"
libraries[GeoLiteCity.dat][directory_name] = 'geoip';

libraries[zoom][download][type] = "git"
libraries[zoom][download][url] = "http://github.com/dnotes/gmap_zoom"
libraries[zoom][directory_name] = "zoom"
libraries[zoom][destination] = "modules/gmap/markers"

libraries[bahai][download][type] = "git"
libraries[bahai][download][url] = "http://github.com/dnotes/gmap_bahai"
libraries[bahai][directory_name] = "bahai"
libraries[bahai][destination] = "modules/gmap/markers"
