programa
{
	inclua biblioteca Matematica-->mat
	
	funcao inicio()
	{
		/*PARA - EXERCÍCIO 1
		1- A prefeitura de uma cidade fez uma pesquisa entre 20 de seus habitantes,
		coletando dados sobre o salário e número de filhos. A prefeitura deseja saber:  
			a) média do salário da população;
			b) média do número de filhos;
			c) maior salário;
			d) percentual de pessoas com salário até R$100,00.*/

		inteiro filhos, x, salario100=0
		real salario, somaSalario=0.0, mediaSalario, somaFilhos=0.0, mediaFilhos, percentualSalario, maiorSalario=0.0
		
		para(x=1;x<=20;x++){
			escreva("\n~ Pesquisa sobre o cidadão "+x+" ~\n")
			escreva("\nDigite o salário: R$ ")
			leia(salario)
			escreva("Digite o número de filhos: ")
			leia(filhos)

			//escreva(filhos+"\n"+salario)

			somaSalario = somaSalario + salario
			somaFilhos = somaFilhos + filhos

			se (salario <= 100.00) {
				salario100 = salario100 + 1
			}

			se (salario > maiorSalario) {
				maiorSalario = salario
			}

		}
		escreva("------------------------------")
		mediaSalario = somaSalario / (x-1)
		escreva("\nA média salarial é: R$ "+mat.arredondar(mediaSalario,2))
		mediaFilhos = somaFilhos / (x-1)
		escreva("\nA média do número de filhos é: "+mat.arredondar(mediaFilhos,1))
		escreva("\nO maior salário é: R$ "+maiorSalario)
		percentualSalario = (salario100 / (x-1.0)) * 100
		escreva("\nO percentual de pessoas com salário até R$100 é: "+percentualSalario+"%\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 47; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */