$pdflatex = 'xelatex --shell-escape %O %S';

$aux_dir = 'build';
$out_dir = 'build';

add_cus_dep( 'acn', 'acr', 0, 'makeglossaries' );
sub makeglossaries {
  my ($base_name, $path) = fileparse( $_[0] );
  return system "makeglossaries -d '$path' '$base_name'";
}