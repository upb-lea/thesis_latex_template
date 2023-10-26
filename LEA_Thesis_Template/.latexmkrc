$pdf_mode = 5;
$dvi_mode = 0;
$postscript_mode = 0;
add_cus_dep( 'nlo', 'nls', 0, 'nlo2nls' );
sub nlo2nls {system( "makeindex -t \"$_[0].nlg\" -s \"internal/nomencl.ist\"   -o \"$_[0].nls\" \"$_[0].nlo\"" );}

add_cus_dep('glo', 'gls', 0, 'makeglo2gls');
add_cus_dep('acn', 'acr', 0, 'makeglo2gls');
sub makeglo2gls {
        system("makeglossaries $_[0]");
}
