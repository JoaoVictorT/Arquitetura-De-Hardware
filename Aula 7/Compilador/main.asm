; TP-06:
;Usando o template em assembly, declare a todas as portas como saida, e faça cada uma delas alternarem de estado dentro de um loop infinito;






;  /===============================================================================\
; | Projeto:  TÍTULO																|	
; |																					|
; | Autor: João Victor Teixeira													    |
; | Idioma: Inglês, AVRASM2.exe			                                            |
; | Solução: NOME DA SUA SOLUÇÃO ATMEL STUDIO 7 (Template neste exemplo)			|
; |																					|
; | Projetos: AssemblerTargetTeamplate												|
; |																					|
; |                                                                                 |
; |																					|
; | Para compilar este código, deverá ter o compilador AVRASM2.exe (windows)        |
; | no prompt de comando (MS-DOS):													|
; |																					|
; |      avrasm2.exe -fI -o "Teamplate.hex"											|
; |						 -m "Teamplate.map"											|
; | 					 -l "Teamplate.lss"											|	
; |						 -e "Teamplate.eep"											|  
; |						 -S "Teamplate.tmp"											|	  
; |						 -W+ie  -d "Debug\Teamplate.obj"							|
; |						 main.asm													|
; |																					|
; | Software: Notepad++			                                                    |
; |																					|
; | Versão do SO: Windows 10				                                        |
; |																					|
; | Plataforma: Windows Power Shell											        |
; |																					|
; | Instrutor: Sergio Schina									                	|
; |																					|
; | Data de vencimento: DATA E HORA EM QUE ESTE PROGRAMA É / DEVIA SER				|
; | SUBMETIDO																		|
; |																					|
; + --------------------------------------------------------------------------------+
; |																					|
; | Descrição: DESCREVA O PROBLEMA DE QUE ESTE PROGRAMA FOI ESCRITO RESOLVER.		|
; |																					|
; | Entrada: DESCREVA A ENTRADA QUE O PROGRAMA EXIGE.								|
; |																					|
; | Saída: DESCREVA A SAÍDA QUE O PROGRAMA PRODUZ.									|
; |																					|
; | Algoritmo: ESBOÇO DA ABORDAGEM USADA PELO PROGRAMA PARA RESOLVER O PROBLEMA.	|
; |																					|
; | Recursos necessários não incluídos: DESCREVA AQUI QUALQUER REQUISITO DE			|
; | A tarefa que o programa não tenta resolver.										|
; |																					|
; | Erros conhecidos: SE O PROGRAMA NÃO FUNCIONAR CORRETAMENTE EM ALGUNS			|
; |					  SITUAÇÕES, DESCREVA AS SITUAÇÕES E PROBLEMAS AQUI.			|
; |																					|
;  \===============================================================================/


.INCLUDE "atmega328p.inc"  ; seu arquivo principal de mapeamento das variáveis   
.device		atmega328P
.nolist
.list

;============
;Declarações:



.ORG 0x0000              ; instrução inicial, é onde se inicia a memória de programa
    rjmp INICIO           ; O vetor de reinício: pula para “main”
      ;***coloque suas variáveis e declarações aqui***   
	;Exemplo: 
	.def	temp	= r16
    .def  temp2 = r17
INICIO:
      ldi temp, 0xFF
      ldi temp2, 0x00
      out DDRB, temp
      out DDRC, temp
      out DDRD, temp
LOOP:
      ; rotinas de repetição 
      out portb, temp
      out portc, temp
      out portd, temp
      rjmp LOOP2
LOOP2:
      out portb, temp2
      out portc, temp2
      out portd, temp2
      rjmp LOOP
	  
.EXIT 