//
// O nome da classe, tem que ser o mesmo nome do prg
//
#include {% MercuryInclude( 'lib/mercury' ) %}

CLASS Produtos

   METHOD New( oController )        CONSTRUCTOR
   METHOD ConsBarra( oController )

ENDCLASS

METHOD New( oController ) CLASS Produtos

RETURN Self

METHOD ConsBarra( oController ) CLASS Produtos

   local oProduto  := ProdutoModel():New()
   local hResponse := { => }
   local cBarra    := oController:oRequest:Get('codbarra')

   hResponse := oProduto:DetalheProd( cBarra )
   oController:oResponse:SendJson( hResponse )

RETURN NIL

{% LoadFile( "/src/model/produtomodel.prg" ) %}