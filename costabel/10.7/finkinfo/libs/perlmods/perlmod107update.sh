#!/bin/sh -ev
sed -E -i "" -e 's|(Type: perl.* 5.10.0)\)$|\1 5.12.3)|g
                s|(Distribution:.*\(\%type_pkg\[perl\] = 5100\) 10.6)$|\1, (%type_pkg[perl] = 5123) 10.7|g' *.info 
