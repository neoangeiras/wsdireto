//	------------------------------------------------------------------------------
//	Titulo.....: WSDIRETO
//	Descrição..: Criacao de webservice sem usar autenticação
//	Date.......: 13/03/2022
//	Last Upd...: 13/03/2022
//	------------------------------------------------------------------------------
//	{% MH_LoadHRB( '/lib/mercury/mercury.hrb' ) %}	//	Loading system MVC Mercury
//	------------------------------------------------------------------------------

#include {% MercuryInclude( 'lib/mercury' ) %}

FUNCTION Main()
***************
	local oApp
	
	DEFINE APP oApp TITLE 'Webservice Sem Autenticacao'

    DEFINE ROUTE 'root'    URL '/'          VIEW       'ola.view'                METHOD 'GET'  OF oApp
    DEFINE ROUTE 'wsbarra' URL 'wsbarra'    CONTROLLER 'consbarra@produtos.prg'  METHOD 'GET'  OF oApp

    INIT APP oApp
RETURN NIL

FUNCTION APPPATHDATA()
RETURN AP_GetEnv("DOCUMENT_ROOT") + AP_GetEnv("PATH_DATA")
