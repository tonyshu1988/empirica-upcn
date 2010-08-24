* * *   Conciliacion Bancaria Ver. 98
on error do err
set bell off
set stat off
set scor off
set echo off
set talk off
set date french
set safe off
set esca off
set proc to bco
set cent on
* * * Variables 
store 0.0 to haber_pr,haber_ant
store date() to fecha_pr
store 0 to fila,pagina_pr,pos,veces,aux,nuevo,i,j,cta
store 0 to numero_pr,n
store "    " to orden_ca
stor  "        " to numero_ca   
store  '                  ' to concepto_pr
store  'CH' to codigo_pr
store  ' ' to nomb
clea
do pla_inicial
defi wind bco1 from 5,20 to 18,53 doub shad colo sche 5
*do psw
do whil .t.
	clea
	do pla_inicial
	acti wind bco1
	@ 0,0 say  "     CONCILIACION BANCARIA"
	@ 2,0 say " Seleccione el n£mero de cuenta "   
	set menu on
	@  4,3  prom "   Cuenta :  16250/06    "
	@  5,3  prom "     C.A.I.  Mutual      "
        @  6,3  prom "   CUENTA :  19581/01    "
	@  7,3  prom "      CAPACITACION       "
	@  8,3 prom "        COLONIA          "
	@ 10,0 say  "  Sale con la tecla  < Esc >"
	menu to cta
	deac wind bco1
	do case
	case cta=0
		exit
	case cta=1
		use 16250
		stor "Cta  16250/06" to nomb
	case cta=2
		use caim
		stor "C.A.I. Mutual" to nomb
	case cta=3
		use caiu
		stor "C.A.I.  UPCN " to nomb
	case cta=4
		use capacitacion 
		stor "Capacitacion." to nomb
	case cta=5
		use colonia
		stor "Cta  Colonia." to nomb
	endc
	go bott
	do whil date()<fecha
		skip -1
	endd
	stor recn() to pos
	do pantalla
	do while .t.
		store inkey() to tecla
		do case
			case tecla=5
				if fila=5
					do pgup
				else
					do arriba
				endif
			case tecla=24
				skip 1
				if  eof() 
					skip -1	
					loop
				endif
				if fila=19
					skip -1
					do pgdown
				else
					skip -1
					do abajo
				endif
			case tecla=18
					do pgup
			case tecla=3
					do pgdown
			case tecla=73 .or.tecla=105	
				if fila#19
					do inserta
				endif
			case tecla=99 .or. tecla=67
				do conci
			case chr(tecla)="o".or.chr(tecla)="O"
				do otras
			case chr(tecla)="b".or.chr(tecla)="B"
				do buscar
			case tecla=69 .or. tecla=101
					do elimina
			case tecla=77 .or. tecla=109
					do modif
			case tecla=84 .or. tecla=116
					do tildar
			case tecla=76 .or.tecla=108
				do imp
			case tecla=83 .or.tecla=115
					do salto
			case tecla=70 .or.tecla=102
					close data
	          			clear
					exit
			otherwise
					loop
		endcase
	enddo
enddo
quit
*----------------------------------------------------------------------------*
proc psw
@ 21,40 say "Programo : Rabin Jose Luis - 042.538820"
acti wind bco1
@ 1,0 say  "     CONCILIACION BANCARIA"
@ 3,0 say "    Ingrese la clave de acceso "   
stor "-" to psw1,psw2,psw3,psw4
rest from psw addi
@ 5,12 get psw1 pict "!"
read
@ 5,12 say "*"
@ 5,14 get psw2 pict "!"
read
@ 5,14 say "*"
@ 5,16 get psw3 pict "!"
read
@ 5,16 say "*"
@ 5,18 get psw4 pict "!"
read
@ 5,18 say "*"
if (psw1+psw2+psw3+psw4#"QAQA").and.(psw#psw1+psw2+psw3+psw4)
	quit
endi
*save to psw all like psw
deac wind bco1
*----------------------------------------------------------------------------*
procedure pgup

	pos=recno() 
	if pos>15
		skip -15
		pos=recno()
		do pantalla
	endif

*----------------------------------------------------------------------------*
procedure arriba

	do renglon
	fila=fila-1
	skip -1
	do renglon2

*----------------------------------------------------------------------------*
procedure pgdown

	pos=recno()
	store  int((pos-1)/15)+1 to pagina_pr
	go (pagina_pr*15)-14
	store recno() to aux
	go bottom
	if recno()-aux<15
		go pos
	else
		store aux+15 to pos
		go pos
		do pantalla
	endif

*----------------------------------------------------------------------------*
procedure abajo

	do renglon
	skip 1
	fila=fila+1
	do renglon2

*----------------------------------------------------------------------------*
procedure inserta

stor 0 to i,conf
stor 0 to or1,or2,or3,or4,or5
stor 0 to nu1,nu2,nu3,nu4,nu5
stor date() to fe1,fe2,fe3,fe4,fe5
stor date() to em1,em2,em3,em4,em5
store '                  ' to co1,co2,co3,co4,co5
store 'CH' to cod1,cod2,cod3,cod4,cod5
store 0 to ha1,ha2,ha3,ha4,ha5
store 0 to de1,de2,de3,de4,de5

store recno() to pos
save screen
@ 22,46 say "ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ"
@ 24,46 say "ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ"
set color to n/w
@ 23,46 say  "Con NUM.=0 finaliza la inserci¢n"
set color to w+/n + 
@ 23,1 say "INSER"
set color to
do renglon
set color to w+/n +
@ 1,1 to 9,78 clear
@ 1,1,9,78 box
@ 3,1 say "ÃÄÄÄÄÄÄÄÄÂÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄ´"
@ 4,2 say  "        ³    ³          ³          ³                 ³  ³         ³"
@ 5,2 say  "        ³    ³          ³          ³                 ³  ³         ³"
@ 6,2 say  "        ³    ³          ³          ³                 ³  ³         ³"
@ 7,2 say  "        ³    ³          ³          ³                 ³  ³         ³"
@ 8,2 say  "        ³    ³          ³          ³                 ³  ³         ³"
@ 9,2 say  "ÄÄÄÄÄÄÄÄÁÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄ"
set color to
@ 2,2  say  " Numero "
@ 2,11 say  "Ord."
@ 2,16 say  "Fecha PD"
@ 2,27 say  "Emision "
@ 2,38 say  "Concepto        "
@ 2,55 say  "Cod"
@ 2,59 say  "Debe     "
@ 2,69 say  "Haber    "
set color to
i=0
do inslin with nu1,or1,fe1,em1,co1,cod1,de1,ha1,i
if i=1
   do inslin with nu2,or2,fe2,em2,co2,cod2,de2,ha2,i
   if i=2
       do inslin with nu3,or3,fe3,em3,co3,cod3,de3,ha3,i
       if i=3
          do inslin with nu4,or4,fe4,em4,co4,cod4,de4,ha4,i
          if i=4
             do inslin with nu5,or5,fe5,em5,co5,cod5,de5,ha5,i
          endif
       endif
    endif
endif
if i>0
*	set color to n/w
	@ 23,46 say  " *  CONFIRMA ?  (S/N)         * "
	set color to
	do while .t.
		store " " to conf
		@ 23,73 get conf
		read
		if upper(conf)="S" .or. upper(conf)="N"
			exit
		endif
	enddo
	if upper(conf)="S"
		do insins with nu1,or1,fe1,em1,co1,cod1,de1,ha1
                if i >= 2
                   do insins with nu2,or2,fe2,em2,co2,cod2,de2,ha2
		   if i >= 3                   
                      do insins with nu3,or3,fe3,em3,co3,cod3,de3,ha3
                      if i >=4
                         do insins with nu4,or4,fe4,em4,co4,cod4,de4,ha4
 			 if i = 5
                            do insins with nu5,or5,fe5,em5,co5,cod5,de5,ha5
                         endif
                      endif
                   endif
                 endif
                 go pos
         	 do pantalla
        else
                 restore screen
        endif
else
    restore screen         
endif


*----------------------------------------------------------------------------*
proc inslin

para nu,or,fe,em,co,cod,de,ha,i

do whil .t.
@ i+4,2  get nu   pict "99999999"
@ i+4,11 get or   pict "9999"
@ i+4,16 get fe   
@ i+4,27 get em
@ i+4,38 get co   pict "!!!!!!!!!!!!!!!!!"
@ i+4,56 GET COD  PICT "!!" 
@ i+4,59 get de   pict "999999.99"
@ i+4,69 get ha   pict "999999.99"
read
if de*ha#0.0
	loop
else
	exit
endi
endd
de =abs(de)
ha =abs(ha)
if nu#0
@ i+4,2  say nu   pict "99999999"
@ i+4,11 say or   pict "9999"
@ i+4,16 say fe   
@ i+4,27 say em
@ i+4,38 say co   pict "!!!!!!!!!!!!!!!!!"
@ i+4,56 say cod  pict "!!" 
@ i+4,59 say de   pict "999999.99"
@ i+4,69 say ha   pict "999999.99"
   i=i+1
endif
*----------------------------------------------------------------------------*
procedure insins

para nu,or,fe,em,co,cod,de,ha

store " " to nu_ca,or_ca

nu=nu+100000000
nu_ca=str(nu)
nu_ca=subs(nu_ca,3,8)

or=or+10000
or_ca=str(or)
or_ca=substr(or_ca,7,4)


go bott
do whil fecha>fe
	skip -1
endd
stor saldo to saldo_ant
inse blan

repl numero   with nu_ca
repl orden    with or_ca
repl codigo   with cod
repl fecha    with fe
repl emision  with em
repl concepto with co 
repl debe     with de
repl haber    with ha
repl saldo    with saldo_ant-haber+debe
stor recn() to pos
stor saldo to saldo_ant
skip
do whil .not. eof()
	repl saldo with saldo_ant-haber+debe
	stor saldo to saldo_ant
	skip
endd
go pos


*----------------------------------------------------------------------------*
proc elimina
save screen
@ 22,46 say "ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ"
@ 24,46 say "ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ"
if recno()=1
	pos=1
*	set color to n/w *
	@ 23,46 say  " ***  REGISTRO   RESERVADO. *** "
	set color to
	save screen to basura
	wait ""
	restore screen from basura
*	@ 24,0 say "È"
        restore screen
        return
endif
*set color to w+/n +
*@ 23,25 say "Elim"
*set color to n/w
@ 23,46 say  " *  CONFIRMA ?  (S/N)         * "
set color to
do while .t.
	store " " to conf
	@ 23,73 get conf
	read
	if upper(conf)="S" .or. upper(conf)="N"
		exit
	endif
enddo
if upper(conf)="N"
	restore screen
        return
endif
set color to w+/n + *
@ 23,46 say  "  ** ELIMINACION EN PROCESO **  "
set color to
stor recn()-1 to pos
store  int((pos-1)/15)+1 to pagina_pr
dele
pack
go pos
stor saldo to saldo_ant
skip
do whil .not. eof()
	repl saldo with saldo_ant-haber+debe
	stor saldo to saldo_ant
	skip
endd
go (pagina_pr*15)-14
do pantalla
do tapa
*@ 23,25 say "Elim"
*set color to w+/n +
*@ 23,25 say "E"
*set color to
@ 0,0 say ""

*----------------------------------------------------------------------------*
procedure modif

*set color to w+/n + 
*@ 23,17 say "MODIF"
*set color to
if recno()=1 
	set colo to w+/b
	@ 22,46 say "ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ"
	@ 24,46 say "ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ"
*	set color to n/w *
	@ 23,46 say  "  **  REGISTRO  RESERVADO.  **  "
	set color to
	save screen to basura
	wait ""
	restore screen from basura
	@ 24,0 say "È"
	do tapa
*	@ 23,17 say "Modif"
*	set color to w+/n + 
*	@ 23,17 say "M"
*	set color to
	@ 0,0 say ""
else
	save scre to modifica
	set color to w+/n +
	@ 1,1 to 9,78 clear
	@ 1,1,9,78 box
	@ 2,2 say  "DATOS ANTERIORES :" 
	@ 3,2 say  "Numero  ³Ord.³Fecha PD  ³Emision   ³Concepto         ³Co³Debe     ³Haber"
	@ 4,2 say  "        ³    ³          ³          ³                 ³  ³         ³"
	@ 5,1 say "ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´"
	@ 6,2 say  "DATOS ACTUALES   :"
	@ 7,2 say  "Numero  ³Ord.³Fecha PD  ³Emision   ³Concepto         ³Co³Debe     ³Haber"
	@ 8,2 say  "        ³    ³          ³          ³                 ³  ³         ³"
	@ 4,2  say numero   pict "99999999"
	@ 4,11 say orden   pict "9999"
	@ 4,16 say fecha  
	@ 4,27 say emision
	@ 4,38 say concepto   pict "!!!!!!!!!!!!!!!!!"
	@ 4,56 say codigo  pict "!!" 
	@ 4,59 say debe   pict "999999.99"
	@ 4,69 say haber   pict "999999.99"
	stor val(numero) to numero_pr
	stor val(orden)  to orden_pr
	stor fecha    to fecha_pr
	stor emision  to emision_pr
	stor concepto to concepto_pr
	stor codigo   to codigo_pr
	stor haber    to haber_pr
	stor debe     to debe_pr 
	stor saldo    to   saldo_pr
	clear gets
	stor 4 to i
	do inslin with numero_pr,orden_pr,fecha_pr,emision_pr,concepto_pr,codigo_pr,debe_pr,haber_pr,i
	set colo to w/b
	@ 22,46 say "ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ"
	@ 24,46 say "ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ"
*	set color to n/w
	@ 23,46 say  " *  CONFIRMA ?  (S/N)         * "
	set color to
	do while .t.
		store " " to conf
		@ 23,73 get conf pict "!"
		read
		if conf="S" .or. conf="N"
			exit
		endif
	enddo
	rest scre from modifica
	if conf="N"
		do tapa
*		@ 23,17 say "Modif"
*		set color to w+/n + 
*		@ 23,17 say "M"
*		set color to
		do renglon2
	else
		if fecha#fecha_pr
			stor recn()-1 to pos
			dele
			pack
			go bott
			do whil fecha>fecha_pr
				skip -1
			endd
			inse blan
			stor recn() to pos
			numero_pr=abs(numero_pr)
			numero_pr=numero_pr+100000000
			numero_ca=str(numero_pr)
			numero_ca=substr(numero_ca,3,8)
			orden_pr=abs(orden_pr)
			orden_pr=orden_pr+10000
			orden_ca=str(orden_pr)
			orden_ca=substr(orden_ca,7,4)
			repl numero   with numero_ca
			repl orden    with orden_ca
			repl fecha    with  fecha_pr
			repl emision  with  emision_pr
			repl concepto with  upper(concepto_pr)	
			repl codigo   with  upper(codigo_pr)		
			repl haber    with  abs(haber_pr)
			repl debe     with  abs(debe_pr)
			if pos<recn()
				go pos
			endi
			do acomoda
		else
			numero_pr=abs(numero_pr)
			numero_pr=numero_pr+100000000
			numero_ca=str(numero_pr)
			numero_ca=substr(numero_ca,3,8)
			orden_pr=abs(orden_pr)
			orden_pr=orden_pr+10000
			orden_ca=str(orden_pr)
			orden_ca=substr(orden_ca,7,4)
			repl numero   with numero_ca
			repl orden    with orden_ca
			repl fecha    with  fecha_pr
			repl emision  with  emision_pr
			repl concepto with  upper(concepto_pr)	
			repl codigo   with  upper(codigo_pr)		
			if haber#haber_pr.or.debe#debe_pr
				repl haber    with  abs(haber_pr)
				repl debe     with  abs(debe_pr)
				do acomoda
			endi
		endi
*		store 0 to pos
		do pantalla
		do tapa
*		@ 23,17 say "Modif"
*		set color to w+/n + 
*		@ 23,17 say "M"
*		set color to
		@ 0,0 say ""
	endif
endif
*----------------------------------------------------------------------------*
procedure tildar

if recno()>1 .and. tilde<>"I"
	set colo to w/b
	@ 22,46 say "ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ"
	@ 24,46 say "ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ"
*	set color to w+/n +
*	@ 23,40 say "TILDE"
*	set color to n/w
	@ 23,46 say  "CONFIRMACION TILDE ?  (S/N)     "
	set color to
	store " " to conf
	@ 23,77 get conf
	read
	do tapa
	if upper(conf)="S"
		if tilde=" "
			replace tilde with "X"	
			set color to w+/n +
			@ fila,58 say "X"
			set color to
		else
			replace tilde with " "
			@ fila,58 say "³"
		endif	
	endi

*@ 23,40 say "Tilde"
*set color to w+/n +
*@ 23,40 say "T"
*set color to
@ 0,0 say ""
endif
*----------------------------------------------------------------------------*
procedure salto

store 0 to cant,pag,max
@ 22,46 say "ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ"
@ 24,46 say "ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ"
set color to w+/n +
*@ 23,60 say "SALTO"
go bottom
store recno() to cant
max=int((cant-1)/15)+1
set color to n/w
@ 23,46 say  "  N£mero  de  p gina  :         "
set color to
@ 23,73 get  pag pict "99999"
do while .t.
	read
	if pag>-1 .and. pag<max+1	
		exit
	endif
	store 0 to pag
enddo
if pag>0	
	go ((pag-1)*15)+1
        pos=recno()
endif
do pantalla
do tapa
*----------------------------------------------------------------------------*
proc borra_columnas
@ 5,1  to 19,4  clea
@ 5,6  to 19,9  clea
@ 5,11 to 19,20 clea
@ 5,22 to 19,31 clea
@ 5,33 to 19,44 clea
@ 5,46 to 19,47 clea
@ 5,49 to 19,57 clea
@ 5,59 to 19,67 clea
@ 5,69 to 19,78 clea
*----------------------------------------------------------------------------*
proc linea1
@ lin_imp,0  say orden    pict "9999"
@ lin_imp,5 say numero
@ lin_imp,14 say fecha
@ lin_imp,25 say emision
@ lin_imp,36 say concepto pict "XXXXXXXXXXXXXXXXX"
@ lin_imp,54 say codigo   pict "XX"
if debe>0.0
	@ lin_imp,57 say debe  pict "999,999.99"
ENDI
IF HABER>0.0
	STOR HABER*-1 TO H_LINEA1
	@ lin_imp,57 say H_LINEA1  pict "999,999.99"
endif
if tilde="X"
	@ lin_imp,68 say "X"
endif
@ LIN_IMP,70 SAY SALDO PICT "9999,999.99"

*----------------------------------------------------------------------------*
proc linea_redu
@ lin_imp,0  say orden    pict "9999"
@ lin_imp,5  say numero
@ lin_imp,14 say fecha
@ lin_imp,25 say concepto pict "XXXXXXXXXXXXXXX"
@ lin_imp,41 say codigo   pict "XX"
if debe>0.0
	@ lin_imp,44 say debe  pict "999,999.99"
endif
if tilde="X"
	@ lin_imp,55 say "X"
endif
if haber>0.0
	@ lin_imp,57 say haber  pict "999,999.99"
endif
@ lin_imp,68 say saldoac  pict "9,999,999.99"
*----------------------------------------------------------------------------*
proc linea_che
@ lin_imp,0  say orden    pict "9999"
@ lin_imp,5  say numero
@ lin_imp,14 say fecha
@ lin_imp,25 say emision
@ lin_imp,36 say concepto pict "XXXXXXXXXXXXXXX"
@ lin_imp,52 say codigo   pict "XX"
@ lin_imp,55 say haber  pict "999,999.99"
*----------------------------------------------------------------------------*
proc titulo1
@ 0,0 say ""
@ lin_imp,0  say nomb
@ lin_imp,30 say t1
@ lin_imp,63  say "FECHA :"
@ lin_imp,70 say DATE()
lin_imp=lin_imp+2
@ lin_imp,0 say "Orden Numero  Fecha P.D. Concepto          Cod             Saldo"
lin_imp=lin_imp+1
@ lin_imp,0 say ".... ........ .......... ................. .. .......... . .......... ............"
lin_imp=lin_imp+1
*----------------------------------------------------------------------------*
procedure renglon

@ fila,1  say orden    pict "9999"
stor subs(numero,5,4) to chico
@ fila,6  say chico  pict "9999" 
@ fila,11 say fecha
@ fila,22 say emision
stor subs(concepto,1,12) to con_chico
@ fila,33 say con_chico
@ fila,46 say codigo   pict "XX"
if debe>0
	@ fila,49 say debe    pict "999999.99"	
else
	@ fila,49 say  "         "	
endif
if haber>0
	@ fila,59 say haber    pict "999999.99"
else
	@ fila,59 say  "         "	
endif
set color  to w+/n +
IF  tilde="X"
		@ fila,58 say "X"
endi
set color to
if saldo<0.0
*	set colo to n/w
	@ fila,69 say saldo pict "9999999.99"
	set colo to
else
	@ fila,69 say saldo pict "9999999.99"
endi	
*----------------------------------------------------------------------------*
procedure renglon2
 
@ fila,1  get orden  pict "9999"
stor subs(numero,5,4) to chico
@ fila,6  get chico  pict "9999" 
@ fila,11 get fecha
@ fila,22 get emision
stor subs(concepto,1,12) to con_chico
@ fila,33 get con_chico 
*pict "XXXXXXXXXXXX"
@ fila,46 get codigo   pict "XX"
if debe>0
	@ fila,49 get debe    pict "999999.99"	
else
	@ fila,49 say  "         "	
endif
if haber>0
	@ fila,59 get haber    pict "999999.99"
else
	@ fila,59 say  "         "	
endif
clea gets
*----------------------------------------------------------------------------*
procedure err

save screen
store " "  to a
set color to w+/n+
@ 10,5  to 16,75 clear
@ 10,5,16,75 box
@ 12,10 say " Atenci¢n : Se detect¢ un error, posiblemente la impresora "
@ 14,10 say "            no este preparada desea reintentar (S/N)?      "
set color to
@ 14,75 say ""
wait "" to a
a=upper(a)
if a="S"
	restore screen 
	set print on
	set device to print
	retry
else
 	quit
endif

*----------------------------------------------------------------------------*
proc pantalla
clear
* si pos=0 quiero ir al fin del archivo
if pos=0
	go bottom
	pos=recno()
else 
	go pos
endif
store  int((pos-1)/15)+1 to pagina_pr
fila=5
go pagina_pr*15-14
do planilla
fila=5
do while .not. eof()  .and. fila<20
		do renglon
		skip 1
		fila=fila+1
enddo
go pagina_pr*15-14
fila=5
do renglon2
*----------------------------------------------------------------------------*
proc pla_inicial

@ 0,0 to 24,79  doub
fila=5
do while fila<20
	@ fila,5   say "³" 
	@ fila,10  say "³" 
	@ fila,21  say "³" 
	@ fila,32  say "³" 
	@ fila,45  say "³" 
	@ fila,48  say "³" 
	@ fila,58  say "³"
	@ fila,68  say "³"
	fila=fila+1
enddo
@ 4,1  say "ÄÄÄÄÂÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄ"
@ 20,1 say "ÄÄÄÄÁÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄ"
@ 22,0 say "ÌÍÍÍÍÍÍËÍÍÍÍÍÍËÍÍÍÍÍÍËÍÍÍÍÍÍËÍÍÍÍÍÍÍËÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍ¹"
@ 23,1 say  "      º      º      º      º       º       º        º       º           º    "
@ 24,1 say  "ÍÍÍÍÍÍÊÍÍÍÍÍÍÊÍÍÍÍÍÍÊÍÍÍÍÍÍÊÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍ"
*----------------------------------------------------------------------------*
procedure planilla

clea
@ 0,0 to 24,79  double
**  **  ** set color to n/w
@ 1,66 say nomb
@ 1,1  say "Hoja N§ "
if nuevo>0
	store recno() to aux
	@ 1,9 say pagina_pr+nuevo pict "#####"
else
	@ 1,9 say pagina_pr pict "#####"
endif
set color to
fila=5
do while fila<20
	@ fila,5   say "³" 
	@ fila,10  say "³" 
	@ fila,21  say "³" 
	@ fila,32  say "³" 
	@ fila,45  say "³" 
	@ fila,48  say "³" 
	@ fila,58  say "³"
	@ fila,68  say "³"
	fila=fila+1
enddo
@ 3,1  say "Ord. Nro. Fecha PD  Emitida  Concepto        Cod    Debe     Haber     Saldo"
@ 4,1  say "ÄÄÄÄÂÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄ"
@ 20,1 say "ÄÄÄÄÁÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄ"
@ 22,0 say "ÌÍÍÍÍÍÍËÍÍÍÍÍÍËÍÍÍÍÍÍËÍÍÍÍÍÍËÍÍÍÍÍÍÍËÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍ¹"
@ 23,1 say  "Inser º Modi º Elim º List º Tilde º Otras º Buscar º Salto º Conciliar º Fin"
@ 24,1 say  "ÍÍÍÍÍÍÊÍÍÍÍÍÍÊÍÍÍÍÍÍÊÍÍÍÍÍÍÊÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍ"
set color to
*----------------------------------------------------------------------------*
proc tapa
@ 22,0 say "ÌÍÍÍÍÍÍËÍÍÍÍÍÍËÍÍÍÍÍÍËÍÍÍÍÍÍËÍÍÍÍÍÍÍËÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍ¹"
@ 23,1 say  "Inser º Modi º Elim º List º Tilde º Otras º Buscar º Salto º Conciliar º Fin"
@ 24,1 say  "ÍÍÍÍÍÍÊÍÍÍÍÍÍÊÍÍÍÍÍÍÊÍÍÍÍÍÍÊÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍ"
*----------------------------------------------------------------------------*
proc acomoda
* acomoda el saldo desde el registro actual hasta el eof
skip -1
stor saldo to anterior
skip
do whil .not. eof()
	repl saldo with anterior-haber+debe
	stor saldo to anterior
	skip
endd
*----------------------------------------------------------------------------*
proc otras
* abre un menu con otras opciones - numeracion de chaques y cambio de clave
acti wind bco1
@ 0,3 say "Otras opciones adicionales"
set menu on
@ 2,5 prom "CONTROL DE NUMERACION"
@ 4,5 prom "CAMBIO DE CLAVE      "
@ 6,5 prom "VER NUMERO DE CHEQUE "
menu to otras
do case
case otras=1
	do numeracion
case otras=2
	deac wind bco1
*	sacar primer sentencia	
*	do cambio_clave
case otras=3
	deac wind bco1
	defi wind vercheque from fila-1,5 to fila+1,14 shado colo sche 5
	acti wind vercheque
	@ 0,0 say numero
	wait ""
	deac wind vercheque
other	
	deac wind bco1
endc
*----------------------------------------------------------------------------*
proc numeracion
* estamos dentro de la ventana bco1
stor 0 to n
stor " " to resp
@ 0,0 to 4,30 clea
@ 0,3 say "CONTROL DE NUMERACION"
@ 2,0 say "Ingrese el primer nro :" get n pict "99999999"
read
stor n to nu
nu=nu+100000000
nu=str(nu)
nu=subs(nu,3,8)
@ 2,0
@ 2,3  say "Secuencia inicial"
@ 2,22 say nu
@ 4,3  say "Buscando numero :"
do whil .t.
	@ 4,22 say nu
	loca for numero=nu
	if eof()
		@ 6,3 say "El numero no fue encontrado"
		@ 7,3 say "desea seguir la busqueda ? "
		@ 8,3 say "(si / no)" get resp pict "!" valid resp="S".or.resp="N"
		read
		if resp="N"
			deac wind bco1
			exit
		endi
	endi
	n=n+1
	stor n to nu
	nu=nu+100000000
	nu=str(nu)
	nu=subs(nu,3,8)
endd
stor 1 to pos
go pos
do pantalla
*----------------------------------------------------------------------------*
proc cambio_clave
* cambia la clave - estamos en la ventana bco1
@ 0,0 to 4,30 clea
@ 0,0 say "    CAMBIO DE CLAVE DE ACCESO"
@ 2,0 say "Ingrese codigo actual" 
stor " " to psw1,psw2,psw3,psw4,npsw1,npsw2,npsw3,npsw4,nnpsw1,nnpsw2,nnpsw3,nnpsw4
stor " " to conf
rest from c:\bco\psw addi
@ 2,24 get psw1 pict "!"
read
@ 2,24 say "*"
@ 2,26 get psw2 pict "!"
read
@ 2,26 say "*"
@ 2,28 get psw3 pict "!"
read
@ 2,28 say "*"
@ 2,30 get psw4 pict "!"
read
@ 2,30 say "*"
if psw=psw1+psw2+psw3+psw4
	@ 4,0 say "Ingrese la nueva clave"
	@ 4,24 get npsw1 pict "!"
	read
	@ 4,24 say "*"
	@ 4,26 get npsw2 pict "!"
	read
	@ 4,26 say "*"
	@ 4,28 get npsw3 pict "!"
	read
	@ 4,28 say "*"
	@ 4,30 get npsw4 pict "!"
	read
	@ 4,30 say "*"
	@ 6,0 say "Confirme la clave nva."
	@ 6,24 get nnpsw1 pict "!"
	read
	@ 6,24 say "*"
	@ 6,26 get nnpsw2 pict "!"
	read
	@ 6,26 say "*"
	@ 6,28 get nnpsw3 pict "!"
	read
	@ 6,28 say "*"
	@ 6,30 get nnpsw4 pict "!"
	read
	@ 6,30 say "*"
	if npsw1+npsw2+npsw3+npsw4=nnpsw1+nnpsw2+nnpsw3+nnpsw4 
		@  8,0 say "   Confirma el cambio (S/N)" get conf pict "!" valid conf="S".or.conf="N"
		read
		if conf="S"
			stor npsw1+npsw2+npsw3+npsw4 to psw
			save to c:\bco\psw all like psw
			@ 10,0 say "Cambio aceptado, pulse una tecla"
			wait ""
		else
			@  8,0 say "LA  OPERACION  SE  HA  ANULADO"
			@ 10,0 say "Pulse una tecla para continuar"
			wait ""
		endi
	else
		@  8,0 say "LAS NUEVAS CLAVES  NO COICIDEN"
		@ 10,0 say "Pulse una tecla para continuar"
		wait ""
	endi
else

	@  8,0 say "      LA CLAVE ES ERRONEA     "
	@ 10,0 say "Pulse una tecla para continuar"
	wait ""

endi
deac wind bco1

*----------------------------------------------------------------------------*
proc buscar
* busca mediante un nuero de cheque
stor recn() to pos
acti wind bco1
stor 0 to n
@ 0,0 to 4,30 clea
@ 0,3 say "BUSQUEDA POR NUMERACION"
@ 2,0 say "Ingrese el primer nro :" get n pict "99999999"
read
stor n to nu
nu=nu+100000000
nu=str(nu)
nu=subs(nu,3,8)
loca for numero=nu
if eof()
	@  4,0 say "EL NUMERO DE CHEQUE NO EXISTE "
	@  6,0 say "Pulse una tecla para continuar"
	wait ""
else
	stor recn() to pos
endi
deac wind bco1
*do pantalla
********* agregado agosto 1998
stor int((pos-1)/15)+1 to pagina_pr
stor pagina_pr*15-14 to pri_renglon
go pri_renglon
do planilla
fila=5
do while .not. eof()  .and. fila<20
		do renglon
		skip 1
		fila=fila+1
enddo
stor pos-pri_renglon+5 to fila
go pos
do renglon2

*----------------------------------------------------------------------------*
proc conci
clea gets
stor date() to desde
acti wind bco1
@ 0,0 say "    CALCULO DE CONCILIACION"
@ 2,0 say "Confirme la fecha  : " get desde
read
@ 2,0 say "    Fecha          : " get desde
clea gets
go bott
stor saldo to saldo_c
@ 4,0 say "Saldo de libro     : " get saldo_c
clea gets

@ 5,0 say "Sumando cheques en fecha"
sum haber for fecha<=desde.and.tilde=" " to ch_en_fecha
@ 5,0 say "Cheques en fecha   : " get ch_en_fecha pict"9999999.99"
clea gets


@ 6,0 say "Sumando depositos no acreditados"
sum debe for tilde=" " to dep_s_acredit
@ 6,0 say "Depositos no acred.: " get dep_s_acredit pict"9999999.99"
clea gets


@ 7,0 say "Sumando cheques sin vencer"
sum haber for fecha>desde.and.tilde=" " to ch_s_vencer
@ 7,0 say "Cheques sin vencer : " get ch_s_vencer pict"9999999.99"
clea gets

stor saldo_c+ch_s_vencer+ch_en_fecha-dep_s_acred to rdo
@ 9,0 say "Resultado :" get rdo

stor " " to imp_cons
wait "Pulse una tecla, con <i> imprime " to imp_cons
deac wind bco1
if upper(imp_cons)="I"
	set print on
	set device to print
	set console off     
	?  "                  Conciliacon Bancaria"
	?  "                  ----------- --------"
	?
	?  "                  Cuenta :",nomb
	?
	?  "                  Fecha:",date()
	?
	?  "                  Saldo de libro           : ",saldo_c pict"9999999.99"
	?
	?  "                  Cheques en fecha         : ",ch_en_fecha pict"9999999.99"
	?
	?  "                  Depositos no acreditados : ",dep_s_acredit pict"9999999.99"
	?
	?  "                  Cheques sin vencer       : ",ch_s_vencer pict"9999999.99"
	?
	?  "                  -------------------------   ------------"
	?
	?  "                                 Resultado : ",rdo pict"9999999.99" 
	?
	set print off
	set device to screen
	set console on
endi
go pos
do pantalla
retu








* zona nueva
proc imp
stor 1 to disp
stor recn() to pos_ant_imp
save scre to impres
set color to w+/n +
acti wind bco1 
@ 0,3 say "LISTADOS :  "
set colo to
set menu on
@ 0,16 prom "1. Libro       "
@ 1,16 prom "2. Reducido    "
@ 2,16 prom "3. No  Tildados" 
@ 3,16 prom "4. Emisiones   "
@ 4,16 prom "5. Solo cheques"
menu to cod
@ 0,0 to 13,33 clea
do case
case cod=1
	@ 0,1 say "     LISTADO  DE LIBRO "
case cod=2
	@ 0,1 say "     LISTADO  REDUCIDO "
	disp=2
case cod=3
	@ 0,1 say "   LISTADO DE NO TILDADOS"
case cod=4
        @ 0,1 say "LIST POR FECHA DE EMISION"
case cod=5
        @ 0,1 say "     LISTADO DE CHEQUES "
case cod=0
	deac wind bco1
	rest scre from impres
	retu
endc
if cod#2
	@ 2,3 say "DISPOSITIVO :"
	set menu on
	@ 2,18 prom "1. Pantalla "
	@ 3,18 prom "2. Impresora" 
	menu to disp
	@ 1,0 to 13,33 clea
	do case
	case disp=1
		@ 2,4 say "Dispositivo :  PANTALLA"
	case disp=2
		@ 2,4 say "Dispositivo : IMPRESORA"
	case disp=0
		deac wind bco1
		rest scre from impres
		retu
	endc
endi
stor "  " to cod_imp
@ 4,4 say "Ingrese el c¢digo" get cod_imp pict "!!"
@ 6,0 say "     SI DEJA EN BLANCO SE"
@ 7,0 say "  LISTARAN TODOS LOS CODIGOS"
read
@ 4,0 to 13,33 clea
do case
case cod_imp="  "
	@ 4,4 say "Listar todos los c¢digos"
other
	@ 4,4  say "Listar por c¢digo :"
	@ 4,23 say cod_imp
endc
stor date() to desde,hasta
@ 6,2  say  "../../.... hasta ../../...."
@ 6,2  get desde
@ 6,19 get hasta
read
@ 6,2  say desde
@ 6,19 say hasta
if disp=2
	@ 7,2 say "Ingese el titulo del listado"
	stor "                                " to t1
	@ 8,0 get t1
	read
	@ 7,2 say "Titulo del listado :        "
	@ 8,0 say t1
        @ 11,2  
        @ 10,2 say "PREPARE LA IMPRESORA Y PULSE"
	@ 11,2 say "UNA TECLA. CON < C > CANCELA"
	wait " " to conf
endi
deac wind bco1
stor fila to fila_ant
do case
case disp=1
	do case
		case cod=1
                        do li_libro_p
		case cod=3
			do li_noti_p
		case cod=4
			do li_emi_p
		case cod=5
			do li_che_p
         endc
case disp=2.and.upper(conf)#"C"
	do case
                case cod=1
                        do li_libro
                case cod=2
                        do li_redu
		case cod=3
			do li_noti
                case cod=4
			do li_emi
		case cod=5
			do li_che
        endc
endc
stor pos_ant_imp to pos
go pos
do pantalla
* fin imp
*----------------------------------------------------------------------------*
proc li_libro
stor 0.0 to debeac,haberac
stor 1 to lin_imp
if cod_imp#"  "
	loca for codigo=cod_imp.and.fecha>=desde.and.fecha<=hasta
else
	loca for fecha>=desde.and.fecha<=hasta
endi
if .not. eof()
	set print on
	set device to print
	set console off     
	@ 0,0 say ""
	@ lin_imp,0  say nomb
	@ lin_imp,25 say t1
	@ lin_imp,63  say "FECHA :"
	@ lin_imp,70 say DATE()
	lin_imp=lin_imp+2
	@ lin_imp,0 say "Orden Numero  Fecha P.D. Concepto         Cod    Debe       Haber     Saldo "
	lin_imp=lin_imp+1
	@ lin_imp,0 say ".... ........ .......... ................. .. .......... .......... ............"
	lin_imp=lin_imp+1
	do while .not. eof()
		@ lin_imp,0  say orden    pict "9999"
		@ lin_imp,5  say numero
		@ lin_imp,14 say fecha
		@ lin_imp,25 say concepto pict "XXXXXXXXXXXXXXXXX"
		@ lin_imp,43 say codigo   pict "XX"
		if debe>0.0
			@ lin_imp,46 say debe  pict "999,999.99"
		endif
*		if tilde="X"
*			@ lin_imp,55 say "X"
*		endif
		if haber>0.0
			@ lin_imp,57 say haber  pict "999,999.99"
		endif
		@ lin_imp,68 say saldo  pict "9,999,999.99"

		debeac=debeac+debe
		haberac=haberac+haber
		lin_imp=lin_imp+1
		cont
	endd
	@ lin_imp,0 say ".... ........ .......... ................. .. .......... .......... ............"
	lin_imp=lin_imp+1
	@ lin_imp,46 say debeac  pict "999,999.99"
	@ lin_imp,57 say haberac pict "999,999.99"
	@ lin_imp,68 say debeac-haberac pict "9,999,999.99"
	ejec
	set print off
	set device to screen
	set console on
endi
*----------------------------------------------------------------------------*
proc li_redu
stor 0.0 to debeac,haberac
stor 1 to lin_imp
if cod_imp#"  "
	loca for codigo=cod_imp.and.fecha>=desde.and.fecha<=hasta
else
	loca for fecha>=desde.and.fecha<=hasta
endi
if .not. eof()
	set print on
	set device to print
	set console off     
	@ 0,0 say ""
	@ lin_imp,0  say nomb
	@ lin_imp,25 say t1
	@ lin_imp,63  say "FECHA :"
	@ lin_imp,70 say DATE()
	lin_imp=lin_imp+2
	@ lin_imp,0 say "Orden Numero  Fecha P.D. Emision    Concepto         Cod Debe/Haber    Saldo "
	lin_imp=lin_imp+1
	@ lin_imp,0 say ".... ........ .......... .......... ................. .. .......... ............"
	lin_imp=lin_imp+1
	do while .not. eof()
		@ lin_imp,0  say orden    pict "9999"
		@ lin_imp,5  say numero
		@ lin_imp,14 say fecha
		@ lin_imp,25 say emision
		@ lin_imp,36 say concepto pict "XXXXXXXXXXXXXXXXX"
		@ lin_imp,54 say codigo   pict "XX"
		if debe>0.0
			@ lin_imp,57 say debe  pict "999,999.99"
		endif
		if haber>0.0
			stor haber*-1 to h_linea1
			@ lin_imp,57 say h_linea1  pict "999,999.99"
		endif
		@ lin_imp,68 say saldo  pict "9,999,999.99"
		debeac=debeac+debe
		haberac=haberac+haber
		lin_imp=lin_imp+1
		cont
	endd
	@ lin_imp,0 say "................................................................................"
	lin_imp=lin_imp+1
	@ lin_imp,6  say "Sumas del debe, haber y la diferencia :"
	@ lin_imp,46 say debeac  pict "999,999.99"
	@ lin_imp,57 say haberac pict "999,999.99"
	@ lin_imp,68 say debeac-haberac pict "9,999,999.99"
	ejec
	set print off
	set device to screen
	set console on
endi
*----------------------------------------------------------------------------*
proc li_noti
stor 0.0 to debeac,haberac
stor 1 to lin_imp
if cod_imp#"  "
	loca for codigo=cod_imp.and.fecha>=desde.and.fecha<=hasta.and.tilde=" "
else
	loca for fecha>=desde.and.fecha<=hasta.and.tilde=" "
endi
if .not. eof()
	set print on
	set device to print
	set console off     
	@ 0,0 say ""
	@ lin_imp,0  say nomb
	@ lin_imp,25 say t1
	@ lin_imp,63  say "FECHA :"
	@ lin_imp,70 say DATE()
	lin_imp=lin_imp+2
	@ lin_imp,0 say "Orden Numero  Fecha P.D. Concepto         Cod    Debe       Haber     Saldo "
	lin_imp=lin_imp+1
	@ lin_imp,0 say ".... ........ .......... ................. .. .......... .......... ............"
	lin_imp=lin_imp+1
	do while .not. eof()
		@ lin_imp,0  say orden    pict "9999"
		@ lin_imp,5  say numero
		@ lin_imp,14 say fecha
		@ lin_imp,25 say concepto pict "XXXXXXXXXXXXXXXXX"
		@ lin_imp,43 say codigo   pict "XX"
		if debe>0.0
			@ lin_imp,46 say debe  pict "999,999.99"
		endif
		if haber>0.0
			@ lin_imp,57 say haber  pict "999,999.99"
		endif
		@ lin_imp,68 say saldo  pict "9,999,999.99"
		debeac=debeac+debe
		haberac=haberac+haber
		lin_imp=lin_imp+1
		cont
	endd
	@ lin_imp,0 say ".... ........ .......... ................. .. .......... .......... ............"
	lin_imp=lin_imp+1
	@ lin_imp,46 say debeac  pict "999,999.99"
	@ lin_imp,57 say haberac pict "999,999.99"
	@ lin_imp,68 say debeac-haberac pict "9,999,999.99"
	ejec
	set print off
	set device to screen
	set console on
endi
*----------------------------------------------------------------------------*
proc li_emi
stor 0.0 to haberac,suma,sumaac
stor 1 to lin_imp
inde on emision to em
if cod_imp#"  "
	loca for codigo=cod_imp.and.emision>=desde.and.emision<=hasta
else
	loca for emision>=desde.and.emision<=hasta
endi
if .not. eof()
	set print on
	set device to print
	set console off     
	@ 0,0 say ""
	@ lin_imp,0  say nomb
	@ lin_imp,25 say t1
	@ lin_imp,63  say "FECHA :"
	@ lin_imp,70 say DATE()
	lin_imp=lin_imp+2
	@ lin_imp,0 say "Orden Numero  Emision    Fecha P.D. Concepto         Haber    Suma"
	lin_imp=lin_imp+1
	@ lin_imp,0 say ".... ........ .......... .......... ................. .. .......... ............"
	lin_imp=lin_imp+1
	stor emision to fecha_anterior
	do while .not. eof()
		suma=suma+haber
		sumaac=sumaac+haber
		if month(emision)#month(fecha_anterior)
			@ lin_imp,0 say ".... ........ .......... .......... ................. .. .......... ............"
			lin_imp=lin_imp+1
			stor haber to suma
		endi
		stor emision to fecha_anterior
		@ lin_imp,0  say orden    pict "9999"
		@ lin_imp,5  say numero
		@ lin_imp,14 say emision
		@ lin_imp,25 say fecha
		@ lin_imp,36 say concepto pict "XXXXXXXXXXXXXXXXX"
		@ lin_imp,54 say codigo   pict "XX"
		@ lin_imp,57 say haber  pict "999,999.99"
		@ lin_imp,68 say suma   pict "9,999,999.99"
		lin_imp=lin_imp+1
		cont
	endd
	@ lin_imp,0 say ".... ........ .......... .......... ................. .. .......... ............"
	lin_imp=lin_imp+1
	@ lin_imp,68 say sumaac   pict "9,999,999.99"
	ejec
	set print off
	set device to screen
	set console on
	close index
endi
*----------------------------------------------------------------------------*
proc li_che
stor 0.0 to haberac,suma,sumaac
stor 1 to lin_imp
if cod_imp#"  "
	loca for codigo=cod_imp.and.fecha>=desde.and.fecha<=hasta
else
	loca for fecha>=desde.and.fecha<=hasta
endi
if .not. eof()
	set print on
	set device to print
	set console off     
	@ 0,0 say ""
	@ lin_imp,0  say nomb
	@ lin_imp,25 say t1
	@ lin_imp,63  say "FECHA :"
	@ lin_imp,70 say DATE()
	lin_imp=lin_imp+2
	@ lin_imp,0 say "Orden Numero  Fecha P.D. Emision    Concepto         Haber    Suma"
	lin_imp=lin_imp+1
	@ lin_imp,0 say ".... ........ .......... .......... ................. .. .......... ............"
	lin_imp=lin_imp+1
	stor fecha to fecha_anterior
	do while .not. eof()
		suma=suma+haber
		sumaac=sumaac+haber
		if month(fecha)#month(fecha_anterior)
			@ lin_imp,0 say ".... ........ .......... .......... ................. .. .......... ............"
			lin_imp=lin_imp+1
			stor haber to suma
		endi
		stor fecha to fecha_anterior
		@ lin_imp,0  say orden    pict "9999"
		@ lin_imp,5  say numero
		@ lin_imp,14 say fecha
		@ lin_imp,25 say emision
		@ lin_imp,36 say concepto pict "XXXXXXXXXXXXXXXXX"
		@ lin_imp,54 say codigo   pict "XX"
		@ lin_imp,57 say haber  pict "999,999.99"
		@ lin_imp,68 say suma   pict "9,999,999.99"
		lin_imp=lin_imp+1
		cont
	endd
	@ lin_imp,0 say ".... ........ .......... .......... ................. .. .......... ............"
	lin_imp=lin_imp+1
	@ lin_imp,68 say sumaac   pict "9,999,999.99"
	ejec
	set print off
	set device to screen
	set console on
endi
*----------------------------------------------------------------------------*
proc li_libro_p

stor recn() to pos
do pla_inicial
do borra_columnas
set color to n/w
@ 1,1 say "                                                                              "
if cod_imp#"  "
	@ 1,1 say "Listado de codigos < .. > desde el __/__/____ hasta el __/__/____."
	@ 1,22 say cod_imp
	@ 1,36 say desde
	@ 1,56 say hasta
	loca for codigo=cod_imp.and.fecha>=desde.and.fecha<=hasta
else
	@ 1,1 say "Listado total desde el __/__/____ hasta el __/__/____."
	@ 1,24 say desde
	@ 1,44 say hasta
	loca for fecha>=desde.and.fecha<=hasta
endi
set colo to
stor 5 to fila
stor 0.0 to debeac,haberac
do whil .not. eof()
	do renglon
	debeac=debeac+debe
	haberac=haberac+haber
	if fila=19
		@ 21,1  say "Fin de hoja"
		@ 21,49 say debeac pict "999999.99"
		@ 21,59 say haberac pict "999999.99"
		wait ""
		do pla_inicial
		do borra_columnas
		fila=5
	else
		fila=fila+1
	endi
	cont
endd
@ 21,1  say "Fin de listado"
@ 21,49 say debeac  pict "999999.99"
@ 21,59 say haberac pict "999999.99"
wait ""
set colo to 
*----------------------------------------------------------------------------*
proc li_noti_p	
stor recn() to pos
do pla_inicial
do borra_columnas
set color to n/w
@ 1,1 say "                                                                              "
if cod_imp#"  "
	@ 1,1 say "Listado de codigos <..> desde el __/__/____ hasta el __/__/____ de NO TILDADOS"
	@ 1,21 say cod_imp
	@ 1,34 say desde
	@ 1,54 say hasta
	loca for tilde=" ".and.codigo=cod_imp.and.fecha>=desde.and.fecha<=hasta
else
	@ 1,1 say "Listado total desde el __/__/____ hasta el __/__/____ de NO TILDADOS"
	@ 1,24 say desde
	@ 1,44 say hasta
	loca for tilde=" ".and.fecha>=desde.and.fecha<=hasta
endi
set colo to
stor 5 to fila
stor 0.0 to debeac,haberac
do whil .not. eof()
	do renglon
	debeac=debeac+debe
	haberac=haberac+haber
	if fila=19
		@ 21,1  say "Fin de hoja"
		@ 21,49 say debeac pict "999999.99"
		@ 21,59 say haberac pict "999999.99"
		wait ""
		do pla_inicial
		do borra_columnas
		fila=5
	else
		fila=fila+1
	endi
	cont
endd
@ 21,1  say "Fin de listado"
@ 21,49 say debeac  pict "999999.99"
@ 21,59 say haberac pict "999999.99"
wait ""
set colo to 	
*----------------------------------------------------------------------------*
proc li_che_p

stor 0.0 to suma
stor recn() to pos
do pla_inicial
do borra_columnas
set color to n/w
@ 1,1 say "                                                                              "
if cod_imp#"  "
	@ 1,1 say "Listado de cheques < .. > desde el __/__/____ hasta el __/__/____."
	@ 1,22 say cod_imp
	@ 1,36 say desde
	@ 1,56 say hasta
	loca for codigo=cod_imp.and.fecha>=desde.and.fecha<=hasta.and.haber#0
else
	@ 1,1 say "Listado de cheques desde el __/__/____ hasta el __/__/____."
	@ 1,29 say desde
	@ 1,49 say hasta
	loca for fecha>=desde.and.fecha<=hasta.and.haber#0
endi
set colo to
stor 5 to fila
stor 0.0 to debeac,haberac
do whil .not. eof()
	suma=suma+haber
	do reng_emi
	if fila=19
		@ 21,1  say "Fin de hoja"
		@ 21,59 say suma pict "999999.99"
		wait ""
		do pla_inicial
		do borra_columnas
		fila=5
	else
		fila=fila+1
	endi
	cont
endd
@ 21,1  say "Fin de listado"
@ 21,59 say suma pict "999999.99"
wait ""
set colo to 
*----------------------------------------------------------------------------*
proc li_emi_p

stor 0.0 to suma
stor recn() to pos
do pla_inicial
do borra_columnas
set color to n/w
@ 1,1 say "                                                                              "
inde on emision to em
if cod_imp#"  "
	@ 1,1 say "Listado de emisiones < .. > desde el __/__/____ hasta el __/__/____."
	@ 1,24 say cod_imp
	@ 1,38 say desde
	@ 1,58 say hasta
	loca for codigo=cod_imp.and.emision>=desde.and.emision<=hasta.and.haber#0
else
	@ 1,1 say "Listado de emisiones desde el __/__/____ hasta el __/__/____."
	@ 1,31 say desde
	@ 1,51 say hasta
	loca for emision>=desde.and.emision<=hasta.and.haber#0
endi
set colo to
stor 5 to fila
stor 0.0 to debeac,haberac
do whil .not. eof()
	suma=suma+haber
	do reng_emi
	if fila=19
		@ 21,1  say "Fin de hoja"
		@ 21,59 say suma pict "999999.99"
		wait ""
		do pla_inicial
		do borra_columnas
		fila=5
	else
		fila=fila+1
	endi
	cont
endd
@ 21,1  say "Fin de listado"
@ 21,59 say suma pict "999999.99"
wait ""
close index
set colo to 
*----------------------------------------------------------------------------*
procedure reng_emi

@ fila,1  say orden    pict "9999"
stor subs(numero,5,4) to chico
@ fila,6  say chico  pict "9999" 
@ fila,11 say fecha
@ fila,22 say emision
stor subs(concepto,1,12) to con_chico
@ fila,33 say con_chico
@ fila,46 say codigo   pict "XX"
@ fila,49 say  "- - - - -"	
if haber>0
	@ fila,59 say haber    pict "999999.99"
else
	@ fila,59 say  "         "	
endif
set color  to w+/n +
IF  tilde="X"
		@ fila,58 say "X"
endi
set color to
@ fila,69 say suma pict "9999999.99"
