/*****************************************************************************
project = post test 7
Nama = Naufal Saputra
Nim  = 1515051210


******************************************************************************/

domains
  person = p(nama, umur, telno, kerja,jabatan,keluarga,jodoh )  /* variabel di sini ada nama ,umur, telno,kerja,jabatan,keluarga*/
  umur = integer /* tipe data umur disini integer karna hanya berupa angka */
  telno, nama, kerja, jabatan, keluarga,jodoh = string /* tipe data telno,nama,kerja,jabatan,keluarga berupa string karna berupa alfabet dan angka */


predicates
  run - procedure () /* variabel run adalah  */

clauses
  run:-
      write("Pertanyaan Mertua Mu"),nl,   /* berupa inputan yang dimana akan tercetak dengan menggunaka fungsi write dan akan di simpan di dalam readln */
      write("Siapa Nama mu ? "), readln(Nama),
      write("Kerja Kamu Apa ? "), readln(Kerja),
      write("Jabatan apa di tempat kerjamu ?"), readln(Jabatan),
      write("Umur kamu berapa ? "), readint(Umur),
      write("no hp mu berapa ? "), readln(Telno),
      write("Siapa Keluargamu ?"),readln(Keluarga),
      write("Siapa yang kamu inggikan jadi Jodoh mu?"),readln(Jodoh),
      P=p(Nama,Umur,Telno,Kerja,Jabatan,Keluarga,Jodoh), 
      write(P),nl,
      write("jika anda ingin lagi kembali lagi  OK ketik (y/n)"), /* lacak balik disini jika anda ketik selain y maka dia akan kembali ke awal dan jika ketik y maka program berhenti*/ 
      readchar(Ch),nl,Ch='y', !. /* LACAK BALIK DIMANA KETIKA KITA KETIK  MAKAN PROGRAM BERHENTI */

  run :-                    /* jika autran yang ada maka dia akan kembali ke awal  */
	 nl,nl,
	 write("Kembali ke Pertanyaan awal"),
	 nl,nl,run.

goal
  
  run.
