% Punto 1
esMaestroDe(agua,katara).
esMaestroDe(fuego,zuko).
esMaestroDe(tierra,toph).
esMaestroDe(fuego,azula).
esMaestroDe(lodo,toph).
esMaestroDe(rayo,azula).
esMaestroDe(fuego,roku).
esMaestroDe(fuego,jeongJeong).
esMaestroDe(tierra,bolin).
esMaestroDe(tierra,lin).
esMaestroDe(metal,lin).
esMaestroDe(agua, aang).
esMaestroDe(agua, tierra).
esMaestroDe(agua, fuego).

%No agregamos a sokka, por el Principio de Universo Cerrado (es falso si no está en la base de conocimientos)

% Punto 2
esMaestroDe(aire, Alguien):-
    creoMovimiento(Alguien, _).

esMaestroDe(aire, Alguien):-
    tieneConexionEspiritual(Alguien).

creoMovimiento(zaheer, volar).
creoMovimiento(aang, patinetaDeAire).
creoMovimiento(tenzin, torbellinoDeAire).

tieneConexionEspiritual(zaheer).
tieneConexionEspiritual(bumi).
tieneConexionEspiritual(marquitos).


/*
Punto 3 - Consultas
¿Existe algún maestro aire? 

?- esMaestroDe(aire, _).

¿Quiénes son los maestros fuego?

?- esMaestroDe(fuego, Quien).

¿Quiénes son los maestros y qué elemento controlan? 

?- esMaestroDe(Elemento, Maestro).

¿Qué elementos sabe controlar Aang? 

?- esMaestroDe(Elemento, aang).

¿Sokka sabe controlar algún elemento?

?- esMaestroDe(_, sokka).

*/

% Punto 4

tieneDobleMaestria(Alguien):-
    esMaestroDe(UnElemento, Alguien),
    esMaestroDe(OtroElemento, Alguien),
    UnElemento \= OtroElemento.

% Punto 5

confiaEn(zuko, aang).
confiaEn(toph, aang).
confiaEn(sokka, aang).
confiaEn(momo, aang).
confiaEn(katara, aang).

confiaEn(Alguien, katara):-
    confiaEn(Alguien, aang),
    not(esMaestroDe(fuego, Alguien)).

% Punto 6
esEnemigoDe(zhao, Enemigo):-
	esMaestroDe(Elemento, Enemigo),
	Elemento \= fuego.

esEnemigoDe(zhao, zuko).
