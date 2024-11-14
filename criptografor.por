programa
{

	inclua biblioteca Texto
	
	cadeia Alfabeto[] = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"}
	
	
	funcao inicio()
	{
		cadeia TextoDoUsuario
		cadeia TextoCaixaBaixa
		escreva("INFORME UM TEXTO: ")
		leia(TextoDoUsuario)

		TextoCaixaBaixa = Texto.caixa_baixa(TextoDoUsuario)

		inteiro Chave
		escreva("INFORME UMA CHAVE: ")
		leia(Chave)

		cadeia TextoCriptografado = ""
		para(inteiro i = 0; i < Texto.numero_caracteres(TextoDoUsuario); i++){
			cadeia Caracter = Texto.extrair_subtexto(TextoCaixaBaixa, i, i + 1)
			inteiro Localizacao = 0

			se(Caracter == " "){
				TextoCriptografado += Caracter
			}senao{
				para(inteiro j = 0; j < 26; j++){
					se(Caracter == Alfabeto[j]){
						Localizacao = j
						pare
					}
				}
				inteiro NovaLocalizacao = Localizacao + Chave

				se(NovaLocalizacao > 25){
					NovaLocalizacao = NovaLocalizacao % 26
				}
				
				TextoCriptografado += Alfabeto[NovaLocalizacao]
			}

			
		}

		limpa()
		escreva("TEXTO CRIPTOGRAFADO: ", TextoCriptografado)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1111; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */