; Tugas 1.1 - Fungsi Kuadrat
; Definisi dan Spesifikasi:
; Nama fungsi FX2(x)
; FX2(x) adalah fungsi untuk menghitung nilai kuadrat dari x, dimana x adalah bilangan bulat.
; FX2(x):: integer -> integer
; Realisasi:
;	FX2(x) = x * x
; Realisasi LISP
	(defun FX2 (x)
		(* x x)	
	)

; Tugas 1.2 - Fungsi Kubik
; Definisi dan Spesifikasi:
; Nama fungsi FX3(x)
; FX3(x) adalah fungsi untuk menghitung nilai pangkat tiga dari x, dimana x adalah bilangan bulat.
; FX3(x):: integer -> integer
; Realisasi:
;	FX3(x) = FX2(x) * x
; Realisasi LISP:
	(defun FX3(x)
		(* (FX2 x) x)
	)
	
; Tugas 2 - Fungsi Jumlah Berpangkat
; Definisi dan Spesifikasi:
; Nama fungsi JML-FX4(x,y)
; FX4(x) adalah fungsi untuk menghitung nilai pangkat empat dari x, dimana x adalah bilangan bulat.
; FX4(x):: integer -> integer
; JML-FX4(x,y) adalah fungsi untuk menghitung jumlah dari x pangkat empat dan y pangkat empat, dimana x dan y adalah bilangan bulat.
; JML-FX4(x,y):: 2 integer -> integer
; Realisasi:
; 	FX4(x) = FX3(x) * x
; 		
;	JML-FX4(x,y) = FX4(x) + FX4(y)
; Realisasi LISP:
	(defun FX4(x)
		(* (FX3 x) x)
	)
	
	(defun JML-FX4(x y)
		(+ (FX4 x) (FX4 y))
	)
	
; Tugas 3 - Fungsi Determinan
; Definisi dan Spesifikasi:
; Nama fungsi DET(a,b,c)
; DET(a,b,c) adalah fungsi untuk menghitung nilai determinan (b^2 - 4ac) dari sebuah persamaan kuadrat ax^2 + bx + c dimana a, b, dan c adalah bilangan real.
; DET(a,b,c):: 3 real -> integer
; Realisasi:
;	DET(a,b,c) = (FX2 b) - (4 * (a * c))
; Realisasi LISP:
	(defun DET (a b c)
		(- (FX2 b) (* 4 (* a c)))
	)