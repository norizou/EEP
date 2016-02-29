# EEP.awk
# Easy En-route to Portal
# $Id$
# this script could be helpful to enrout to your destination portal.
# input file should be created by IITC plug in "IDM Export"

# 1 column is the name of portal, 2nd column is raw GPS location info


BEGIN { FS=',' }
{
    print "=hyperlink(\"https://maps.google.com/maps?
        ll="$2","$3"&&
        q="$2","$3"\""","$1")" ;
}


