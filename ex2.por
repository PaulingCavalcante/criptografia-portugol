programa
{
	inclua biblioteca Tipos --> tps
	inclua biblioteca Texto --> txt
	
	funcao inicio()
	{
	     cadeia texto, cod
		inteiro chave = 0
		
		escreva("Olá! Seja bem vindo algoritmo codificaCesar!\n\n")

		enquanto(verdadeiro){
			escreva("Digite a chave de criptografia (número de 1 a 25): ")
			leia(chave)
			
			se(chave < 1 ou chave > 25) escreva("Número inválido!\nA chave deve ser entre 1 e 25\n\n")
			senao pare
		}
		
		escreva("Digite a palavra/frase que deseja codificar: ")
		leia(texto)

		cod = codificaCesar(texto, chave, falso)
		escreva("Codificação: ", cod, "\nDecodificação: ", decodificaCesar(cod, chave), "\n")
	}

	funcao cadeia codificaCesar(cadeia string, inteiro key, logico teste){
	  cadeia cod = "", a
	  caracter alfa[26] = { 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'}
	  caracter ALFA[26] = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'}
	  inteiro numero, indice = 0

		se(teste) key = -key
		numero = txt.numero_caracteres(string)
		para(inteiro i = 0, j = 0; i < numero; j++) {
			se(j > 25) j = 0
			se(txt.obter_caracter(string, i) == alfa[j]){
				indice = j + key
				se(indice > 25) indice = indice - 26
				senao se(indice < 0) indice = indice + 26
				cod += alfa[indice]
				i++
				j = -1
			}
	  	senao se(txt.obter_caracter(string, i) == ALFA[j]){
	  			indice = j + key
				se(indice > 25) indice = indice - 26
				senao se(indice < 0) indice = indice + 26
				cod += ALFA[indice]
				i++
				j = -1
			}
	  	senao se(j == 25){
				cod += txt.obter_caracter(string, i)
				i++
			}
		}
		retorne cod
	}

	funcao cadeia decodificaCesar(cadeia string, inteiro chave){
		retorne codificaCesar(string, chave, verdadeiro)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 177; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */