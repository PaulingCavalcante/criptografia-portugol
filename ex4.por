programa
{
	inclua biblioteca Tipos --> tps
	inclua biblioteca Texto --> txt	
	
	funcao inicio()
	{
		cadeia string
		caracter teste

		escreva("Olá! Seja bem vindo  algoritmo das pontas de criptografia!\n\n")

		escreva("Digite a palavra que deseja codificar: ")
		leia(string)

		string = codificaPontas(string)
		escreva("Codificado: ", string, "\n\n")

		enquanto(verdadeiro){

			escreva("Dejesa descodificar? s/n -> ")
			leia(teste)

			se(teste == 's' ou teste == 'S'){
				escreva("Decodificação: ", decodificaPontas(string), "\n\n")
				pare
			}
				senao se(teste == 'n' ou teste == 'N') pare
		}
		enquanto(verdadeiro){
			escreva("Dejesa codificar outra palavra? s/n -> ")
			leia(teste)

			se(teste == 's' ou teste == 'S'){
				limpa()
				inicio()
			}
			senao se(teste == 'n' ou teste == 'N') pare
		}
	}

	funcao cadeia codificaPontas(cadeia string){
		cadeia codificado = ""
		caracter primeiro, ultimo
		inteiro nmrCaracter

		nmrCaracter = txt.numero_caracteres(string)

		para(inteiro i = 0; i < nmrCaracter / 2; i++)
		{
			primeiro = txt.obter_caracter(string, i)
			ultimo = txt.obter_caracter(string, nmrCaracter - i - 1)
			codificado += (primeiro + "" + ultimo)
		}

		se(nmrCaracter % 2 != 0)
		codificado += txt.obter_caracter(string, nmrCaracter / 2)

        retorne codificado
	}

	funcao cadeia decodificaPontas(cadeia string){
	   cadeia original = ""
        inteiro nmrCaracterCodificado = txt.numero_caracteres(string)

        cadeia primeiraMetade = ""
        cadeia segundaMetade = ""

		para(inteiro i = 0; i < nmrCaracterCodificado / 2; i++)
		{
			primeiraMetade += txt.obter_caracter(string, 2 * i)
			segundaMetade = txt.obter_caracter(string, 2 * i + 1) + segundaMetade
		}

		se(nmrCaracterCodificado % 2 != 0){
			primeiraMetade += txt.obter_caracter(string, nmrCaracterCodificado - 1)
		}

		original = primeiraMetade + segundaMetade

        retorne original
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 69; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */