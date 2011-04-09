COMMUNITY DIRECTORY INSTALLATION PROFILE
========================================

The community directory installation profile is designed to present a directory
of communities, local centers, and national or regional facilities and schools.
Initial design and construction were completed by David Hunt (http://dnotes.net)
for the national directory of the Bahá'í Community of the United States
(http://find.bahai.us).


INSTALLATION
============

Follow the directions for installation profiles (http://drupal.org/node/306267).
Required and recommended modules are listed below.

NOTE: In order to use visitors' IP addresses to show nearby communities, you
will need to use version 3.1 of the location module, patched as indicated below,
and properly install and update MaxMind's GeoLiteCity.dat database.


MODULES AND LIBRARIES
=====================

The following modules and libraries are REQUIRED.  If you use drush, they will
be downloaded automatically; otherwise, they must be downloaded manually and
placed in the sites/all/modules folder as per the instructions in the general
documentation on installation profiles (http://drupal.org/node/306267).

NOTE: Drush is not yet capable of downloading the GeoLiteCity.dat database from
MaxMind, so that must still be downloaded manually.

- cck (http://drupal.org/project/cck)
- link (http://drupal.org/project/link)
- ctools (http://drupal.org/project/ctools)
- date (http://drupal.org/project/date)
- features (http://drupal.org/project/features)
- diff (http://drupal.org/project/diff)
- gmap 1.1 (http://drupal.org/project/gmap)
- location 3.1 (http://drupal.org/project/location) (patch with
  http://drupal.org/files/issues/820116-location-3.1-geoip-views.patch)
- geoip 1.3 (http://drupal.org/project/geoip)
- advanced_help (http://drupal.org/project/advanced_help)
- boost (http://drupal.org/project/boost)
- adminrole (http://drupal.org/project/adminrole)
- admin_menu (http://drupal.org/project/admin_menu)
- pathauto (http://drupal.org/project/pathauto)
- strongarm (http://drupal.org/project/strongarm)
- token (http://drupal.org/project/token)
- path_redirect (http://drupal.org/project/path_redirect)
- views 2.x (http://drupal.org/project/views)
- imageapi (http://drupal.org/project/imageapi)
- imagecache (http://drupal.org/project/imagecache)
- filefield (http://drupal.org/project/filefield)
- imagefield (http://drupal.org/project/imagefield)
- link_options (http://git.drupal.org/sandbox/dnotes/1106642.git)
- bcd_localities (http://github.com/dnotes/bcd_localities)
- bcd_centers (http://github.com/dnotes/bcd_centers)
- bcd_states (http://github.com/dnotes/bcd_states)

- Clusterer2.js (http://acme.com/javascript/Clusterer2.js)
  Place this file into the modules/gmap/thirdparty/Clusterer2.js folder

- GeoLiteCity.dat
  (http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz)
  Unzip this file and move it to sites/all/libraries/geoip/GeoLiteCity.dat

- zoom (http://github.com/dnotes/gmap_zoom)
  Place this folder at modules/gmap/markers/zoom


The following modules and libraries are OPTIONAL or recommended.  They are all
included in the drush make file, but are not necessary for the installation
profile to function.

- google_analytics (http://drupal.org/project/google_analytics) - adds google
  analytics integration to the site.
- vertical_tabs (http://drupal.org/project/vertical_tabs) - cleans up node
  entry pages and makes the administrative experience much nicer.
- random_splash (http://features.dnotes.net/fserver) - adds a node type with
  images and text to fill community pages without much information.
- bcd_facilities (http://github.com/dnotes/bcd_facilities) - adds a content type
  for national or regional level facilities, as well as taxonomy for type of
  facility.
- bcd_seasonal (http://github.com/dnotes/bcd_seasonal) - adds a content type for
  seasonal schools at the national or regional level, as well as a taxonomy for
  season.
- bcd_temple (http://github.com/dnotes/bcd_temple) - adds a content type for a
  Bahá'í House of Worship.
- Special gmap marker for bcd_temple: (http://github.com/dnotes/gmap_bahai)
  Place in modules/gmap/markers/bahai
- node_import (http://drupal.org/project/node_import) - for importing a list of
  communities from a csv file.
- job_scheduler (http://drupal.org/project/job_scheduler) - required for feeds
- feeds (http://drupal.org/project/feeds) - for importing lists of communities
  from an external source, such as an rss feed.
- context (http://drupal.org/project/context) - this is not used yet, but could
  be used in the future for positioning blocks on pages among other things.



