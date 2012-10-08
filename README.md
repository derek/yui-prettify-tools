yui-prettify-tools
==================

This is a collection of scripts that will help out with building/upgrading a customized version of Prettify for use in YUI tools.

build.sh
----
Executing `build.sh` in this repository's directory will download the latest version of Prettify and wrap it with YUI customizations.

update.sh
----
Executing `update.sh` in any directory will find any Prettify JS/CSS files in sub-directories beneath it, and replace them with a new version from the build directory.