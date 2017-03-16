domains
harga = integer
umur = byte
orang = symbol

predicates 
biaya(harga,harga,harga) - procedure (i,i,o)
pernikahan(umur)- nondeterm(o)
alamat_gedung(symbol,symbol) - nondeterm (i,o)
angka(char) - nondeterm (i)
suami(orang,orang) - nondeterm (o,i)
run - nondeterm ()

clauses 
biaya(X,Y,Harga):-
Harga=X*Y.

pernikahan(21).
alamat_gedung("Taman Budaya","h-21").
alamat_gedung("Pramuka","b-12").

angka(NB):-
'1'<=NB,
NB <='9'.
angka(NB):-
'1' <= NB,
NB <= '8'.

suami(joe,yosi).
run:-
	write("--------- Naufal SAputra ----------"),nl,
	write("Selamat Datang"),nl,
	readchar(_).

goal
biaya(5000000,70000000,Harga),
pernikahan(Umur),
alamat_gedung("Taman Budaya",Nomor),
angka('7'),
suami(Siapa,yosi),
run.