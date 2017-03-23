DOMAINS
 tampilan = symbol	
 harga = integer
 
PREDICATES
 nondeterm sepatu(tampilan, harga)		
 yang_tersedia
 tidak_tersedia(tampilan)
 
CLAUSES 
 sepatu(adidas,100000).
 sepatu(puma,80000).
 sepatu(bata,80000).
 
 yang_tersedia:-
	sepatu(Tampilan,Harga),
	Harga < 100000,									
	write("Sepatu yang tersedia, adalah ", Tampilan," dengan harga ",Harga,"\n"),			
	fail,	
	not(tidak_tersedia(harga)).						
	
 tidak_tersedia(adidas).
 
GOAL
 yang_tersedia.