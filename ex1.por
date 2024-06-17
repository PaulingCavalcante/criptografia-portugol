programa
{
	inclua biblioteca Tipos-->tps
	inclua biblioteca Texto-->txt
	
	funcao inicio()
	{
	  cadeia texto = "abCde"
	  caracter alfa[26] = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'}
	  caracter ALFA[26] = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'}
	  inteiro numero

	  numero = txt.numero_caracteres(texto)
	  
	  escreva(numero, txt.obter_caracter(texto, numero-1))

	  para(inteiro i = 0; i < 26; i++){
	  	}

	  
	}

	funcao cadeia codificaRot13(cadeia string){
		retorne string
	}

	funcao decodificaRot13 (cadeia string){
		codificaRot13(string)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 488; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */