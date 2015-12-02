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

$mech->click({xpath => '/html/body/p[1]/a'});

sleep 1;

$mech -> form_number(1);

$mech -> field('foo'       , 'Foo Value');
$mech -> field('bar'       , 'Bar Value');
$mech -> field('chosenFile',  $0);

$mech -> submit();
