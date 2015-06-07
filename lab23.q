//This file was generated from (Commercial) UPPAAL 4.0.14 (rev. 5615), May 2014

/*
Klienci zawsze IDLE
*/
A[] forall (i:int[0,2]) Client(i).Idle

/*
Serwer zawsze IDLE
*/
A[] Server.Idle

/*
Stan Session procesu Clients napewno bedzie osiagnienty	
*/
A<> forall (i:int[0,2]) Client(i).Session

/*
Stan Session procesu Clients moze zostac osiagnienty
*/
E<> forall (i:int[0,2]) Client(i).Session

/*
Clijent(2) (majacy poprawny handshake) napewno otworzy sesje
*/
A<> Client(2).Session

/*
Clijent(2) (majacy poprawny handshake) moze otworzyc sesje
*/
E<> Client(2).Session

/*
Sesja(2) napewno zacznie sciaganie
*/
A<> Session(2).Downlowad

/*
Sesja(2) moze zaczac sciaganie
*/
E<> Session(2).Downlowad

/*
Serwer napewno wysle odpowiedz
*/
A<>Server.Response

/*
Serwer moze wyslac odpowiedz
*/
E<>Server.Response

/*
Serwer napewno bedzie podlaczony
*/
A<> Server.Connected

/*
Serwer moze by\u0107 podlaczony
*/
E<> Server.Connected

/*
Sesje napewno beda zamkniete
*/
A<> forall (i:int[0,2]) Session(i).Closed

/*
Sesje moga byc zamkniete
*/
E<> forall (i:int[0,2]) Session(i).Closed

/*
Serwer napewno bedzie idle
*/
A<> Server.Idle

/*
Server moze byc idle
*/
E<> Server.Idle

/*
Server bedze w stanie ok
*/
A<> Server.Ok

/*
Server moze byc w stanie ok
*/
E<> Server.Ok						

/*
Jezeli sesja bedzie zamknieta => sciaganie pliku sie skonzy
*/
forall (i:int[0,2]) Session(i).Closed --> load==false

/*
Jezeli ktos sciaga plik => sciaganie jest mozliwe
*/
load!=true --> forall (i:int[0,2]) Session(i).Downlowad
