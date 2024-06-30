programa
{
	inclua biblioteca Tipos --> tps
	inclua biblioteca Texto --> txt
	
	funcao inicio()
	{
		cadeia stringOriginal
		inteiro n = 0
		inteiro nmrCaracter

		escreva("Olá! Seja bem vindo algoritmo codificaFatias!\n\n")

		escreva("Digite a frase/palavra que deseja codificar: ")
		leia(stringOriginal)

		nmrCaracter = txt.numero_caracteres(stringOriginal)
		enquanto(verdadeiro){
			escreva("Digite o tamanho da fatia de criptografia (deve ser até ", txt.numero_caracteres(stringOriginal)/2,"): ")
			leia(n)
			
			se(n < 1 ou n > txt.numero_caracteres(stringOriginal)/2) escreva("Número inválido!\nO tamanho da fatia deve ser bem menor que o tamanho da String\n\n")
			senao pare
		}

		cadeia stringCodificada = codificaFatias(stringOriginal, n)
		escreva("\nString Codificada: ", stringCodificada, "\n")
		cadeia stringDecodificada = decodificaFatias(stringCodificada, n)
		escreva("String Decodificada: ", stringDecodificada, "\n")
	}

	funcao cadeia codificaFatias(cadeia string, inteiro n)
	{
		inteiro nmrCaracter = txt.numero_caracteres(string)
		cadeia cod[50]

		para (inteiro k = 0; k < 50; k++) {
			cod[k] = ""
		}

		enquanto (txt.numero_caracteres(string) % n != 0) {
			string += " "
			nmrCaracter = txt.numero_caracteres(string)
		}

		para(inteiro j = 0; j < nmrCaracter; j++){
			inteiro i = j % n
			cod[i] += txt.obter_caracter(string, j)
		}

		cadeia resultado = ""
		para (inteiro k = 0; k < n; k++) {
			resultado += cod[k]
		}

		retorne resultado
	}

	funcao cadeia decodificaFatias(cadeia string, inteiro n)
	{
		inteiro nmrCaracter = txt.numero_caracteres(string)
		inteiro m = nmrCaracter / n
		cadeia cod[50]

		para (inteiro k = 0; k < 50; k++) {
			cod[k] = ""
		}

		para(inteiro j = 0; j < nmrCaracter; j++){
			inteiro i = j % m
			cod[i] += txt.obter_caracter(string, j)
		}

		cadeia resultado = ""
		para (inteiro k = 0; k < m; k++) {
			resultado += cod[k]
		}

		retorne resultado
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1909; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */