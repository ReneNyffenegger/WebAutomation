use warnings;
use strict;

use WWW::Mechanize::Firefox;

my $mech = new WWW::Mechanize::Firefox(
  create    => 1,   # Create new tab...
  activate  => 1,   # ... and activate it.
  autoclose => 0,   # Keep tab open after perl script end.
# --------------------------------------------------------
# Name of the program if unable to connect on first try:
  launch   =>'C:\Program Files\Mozilla Firefox\firefox.exe',
);


$mech->get('http://localhost/WebAutomation/index.html');

