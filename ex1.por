programa
{
	inclua biblioteca Tipos-->tps
	inclua biblioteca Texto-->txt
	
	funcao inicio()
	{
	     cadeia texto, cod
		caracter teste
		
		escreva("Olá! Seja bem vindo  algoritmo codificaRot13!\n\n")

		escreva("Digite a palavra que deseja codificar: ")
		leia(texto)

		cod = codificaRot13(texto)
	  	escreva("Codificação: ", cod, "\nDecodificação: ", decodificaRot13(cod))

	}

	funcao cadeia codificaRot13(cadeia string){
	  cadeia cod = ""
	  caracter alfa[26] = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'}
	  caracter ALFA[26] = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'}
	  inteiro numero, indice

	  numero = txt.numero_caracteres(string)
		para(inteiro i = 0, j = 0; i < numero; j++){
	  	se(j > 25){
	  		cod += txt.obter_caracter(string, i)
	  		j = 0
	  	}
	  	se(txt.obter_caracter(string, i) == alfa[j]){
	  		indice = j + 13
	  		se(indice > 25) indice = indice - 26
	  		cod += alfa[indice]
	  		i++
	  		j=0
	  	}
	  	senao se(txt.obter_caracter(string, i) == ALFA[j]){
	  		indice = j + 13
	  		se(indice > 25) indice = indice - 26
	  		cod += ALFA[indice]
	  		i++
	  		j=0
	  	}
	  }
		retorne cod
	}

	funcao cadeia decodificaRot13 (cadeia string){
		retorne codificaRot13(string)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 927; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */