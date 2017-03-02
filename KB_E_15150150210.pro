predicates
  beli(symbol,symbol) - nondeterm (o,o)
  nama(symbol) - nondeterm (o) 
  sepatu(symbol) - nondeterm (o)
  loved(symbol,symbol) - nondeterm (i,i)
  stok(symbol) - nondeterm (i)

clauses
  beli(X,Y):-
	nsms(X),
	sepatu(Y),
	loved(X,Y),
   	stok(Y).

  nama(lucky).
  nama(saputra).
  nama(andre).
  nama(sajid).

  sepatu(adidas).
  sepatu(nike).
  sepatu(bata).

  loved(lucky, adidas).
  loved(andre, nike).
  loved(saputra, bata).
  loved(sajid, adidas).
  loved(sajid, nike).

  stok(adidas).
  stok(nike).
  
goal
  beli(Apa,nike).
