//
// O nome da classe tem que ser o mesmo do PRG
//

CLASS ProdutoModel

	DATA cAlias	

	METHOD New()             		CONSTRUCTOR
	METHOD DetalheProd( cBarra )
	
ENDCLASS

//----------------------------------------------------------------------------//

METHOD New() CLASS ProdutoModel

	USE ( AppPathData() + "produtos.dbf" ) SHARED NEW VIA 'DBFCDX'
	SET INDEX TO (AppPathData() + "produtos.cdx")
	
	::cAlias := Alias()	

RETU SELF

//	-----------------------------------------------

METHOD DetalheProd( cBarra ) CLASS ProdutoModel

	local hRet := {=>}
	
	DEFAULT cBarra TO  ''
	
   if empty( cBarra )
      hRet['sucesso'] := .F.
      hRet['erro']    := "Codigo de barra precisa ser informado"
   else
   	(::cAlias)->(dbSetOrder( 1 ))
   	(::cAlias)->(dbSeek( cBarra ))
      if !(::cAlias)->(dbSeek( cBarra ))
         hRet['sucesso'] := .F.
         hRet['erro']    := "Codigo de barra nao encontrado"
      else
         hRet['sucesso'] := .T.
         hRet['erro']    := "OK"
         hRet['descpro'] := alltrim((::cAlias)->descricao)
      endif
   endif
RETURN hRet
