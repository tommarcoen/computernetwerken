@default_files = ('main-book.tex', 'main-presentation.tex');
#@default_files = ('a4.tex', 'a5.tex', 'main-presentation.tex');

# Output directly to PDF (5 = XeLaTeX)
$pdf_mode = 1;
$emulate_aux = 1;
$aux_dir = 'aux/';
$ENV{'TEXINPUTS'}='./tex//:' . $ENV{'TEXINPUTS'};

add_cus_dep( 'acn', 'acr', 0, 'makeglossaries' );
add_cus_dep( 'glo', 'gls', 0, 'makeglossaries' );
$clean_ext .= " acr acn alg glo gls glg";

sub makeglossaries {
   my ($base_name, $path) = fileparse( $_[0] );
   my @args = ( "-q", "-d", $path, $base_name );
   if ($silent) { unshift @args, "-q"; }
   return system "makeglossaries", "-d", $path, $base_name; 
}
