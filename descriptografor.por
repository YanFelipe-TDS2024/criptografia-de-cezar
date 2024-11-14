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

		limpa()		

		para(inteiro i = 1; i <= 25; i++){
			cadeia TextoDesCriptografado = ""
			
			para(inteiro j = 0; j < Texto.numero_caracteres(TextoDoUsuario); j++){
				cadeia Caracter = Texto.extrair_subtexto(TextoCaixaBaixa, j, j + 1)
				inteiro Localizacao = 0
	
				se(Caracter == " "){
					TextoDesCriptografado += Caracter
				}senao{
					para(inteiro k = 0; k < 26; k++){
						se(Caracter == Alfabeto[k]){
							Localizacao = k
							pare
						}
					}
					inteiro NovaLocalizacao = Localizacao + i
	
					se(NovaLocalizacao > 25){
						NovaLocalizacao = NovaLocalizacao % 26
					}
					
					TextoDesCriptografado += Alfabeto[NovaLocalizacao]
				}	
			}
			
			escreva("CHAVE " + i + " " , TextoDesCriptografado, "\n")
		}
		

		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1129; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */