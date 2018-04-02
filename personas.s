/*
	Universidad del Valle de Guatemala
	Autor: Marcos Gutierrez  	17909
	Programa: numeros.s
	Se tomo como referencia el siguiente codigo: http://mis-algoritmos.com/multiplicacion-en-ensamblador
	Programa que multiplica 2 numero.
*/

.text
.global main
main:
  str fp, [sp, #-4]!
  add fp, sp, #0
  sub sp, sp, #12
  mov r3, #5
  str r3, [fp, #-8]
  mov r3, #6
  str r3, [fp, #-12]
  ldr r3, [fp, #-8]
  ldr r2, [fp, #-12]
  mul r3, r2, r3
  str r3, [fp, #-8]
  mov r3, #0
  mov r0, r3
  add sp, fp, #0
  ldmfd sp!, {fp}
  bx lr