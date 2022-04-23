/*                           - Exercício 1 - 
Crie uma instrução SQL que retorna a média de idade, número de filhos 
e grau de instrução dos funcionários cujo salário_hora estiver
acima da média de todos os funcionários.

Retorne os dados somente de funcionários da capital e estado civil casado,
com ordem decrescente da média de idade */

select round(avg(idade)), numero_filhos, grau_instrucao
from cap16."TB_FUNC"
where reg_procedencia = 'capital'
	and estado_civil = 'casado'
	and salario_hora > (select avg(salario_hora) from cap16."TB_FUNC")
group by numero_filho, grau_instrucao
order by round(avg(idade)) desc
