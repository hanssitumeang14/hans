; Soal 1 - Fungsi Max2
; Definisi dan Spesifikasi:
; Nama fungsi Max2(x,y)
; Max2(x,y) adalah sebuah fungsi untuk menentukan bilangan terbesar dari x, dan y, dimana x dan y adalah bilangan bulat.
; Max2(x,y):: 2 integer -> integer
; Realisasi:
;	Max2(x,y) = depend on (x,y)
;					if x > y : x
;					else y
; Realisasi LISP:
	(defun Max2 (x y)
		(cond 	((> x y) x)	
				(t y)
		)
	)
	
; Soal 2 - Fungsi Max3
; Definisi dan Spesifikasi:
; Nama fungsi Max3 (x,y,z)
; Max3(x,y,z) adalah sebuah fungsi untuk menentukan bilangan terbesar dari x, y, dan z, dimana x, y, dan z adalah bilangan bulat.
; Max3(x,y,z):: 3 integer -> integer
; Realisasi:
;	Max3(x,y,z) = depend on (x,y,z)
;					if x > y and y > z : x
;					if x < y and y > z : y
;					else z
; Realisasi LISP:
	(defun Max3 (x y z)
		(cond 	((and (> x y) (> y z)) x)
				((and (< x y) (> y z)) y)
				(t z)
		)
	)
	
; Soal 3 - Wujud Zat Cair
; Definisi dan Spesifikasi:
; Nama fungsi wujudAir(x)
; wujudAir(x) adalah sebuah fungsi untuk melakukan pengecekan wujud zat dari ait, yaitu x (bilangan real) yang merupakan masukan ke fungsi.
; wujudAir(x):: integer -> string
; Realisasi:
;	wujudAir(x) = depend on (x)
;					if x < 0 				: PADAT
;					if x >= 0 and x < 100 	: CAIR
;					else GAS
; Realisasi LISP:
	(defun wujudAir(x)
		(cond 	((< x 0) 'PADAT)
				((and (>= x 0)(< x 100)) 'CAIR)
				(t 'GAS)
		)
	)
	
; Soal 4 - Grade
; Definisi dan Spesifikasi
; Nama fungsi Grade(x)
; Grade(x) adalah sebuah fungsi untuk menentukan Grade yang diperoleh oleh seorang mahasiswa untuk nilai ujian x (bilangan real).
; Grade(x):: real -> char
; Realisasi:
;	Grade(x) = depend on (x)
;				 if x >= 80 			: A
;				 if x >= 72 and x < 80	: AB
;				 if x >= 65 and x < 72	: B
;				 if x >= 57 and x < 65	: BC
;				 if x >= 50 and x < 57	: C
;				 if x >= 35 and x < 50	: D
;				 else E
; Realisasi LISP:
	(defun Grade(x)
		(cond 	((>= x 80) 'A)
				((and (>= x 72) (< x 80)) 'AB)
				((and (>= x 65) (< x 72)) 'B)
				((and (>= x 57) (< x 65)) 'BC)
				((and (>= x 50) (< x 57)) 'C)
				((and (>= x 35) (< x 50)) 'D)
				(t 'E)
		)
	)