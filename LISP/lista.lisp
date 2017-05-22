; exercicio 1
(defun reversa (Lista)
    (cond 
        ((null Lista) NIL)
        ((null (cdr Lista)) Lista)
        (T (append (reversa(cdr Lista)) (list(car Lista))))
    )
)

(defun palindromize (Lista)
	(append Lista (reversa Lista))
)

; exercicio 2
(defun palindromop (Lista)
	(Equal Lista (reversa Lista))
)

; exercicio 3
(defun quadrado(X)
	(* X X)
)

(defun TRI-RETAN (maior l1 l2)
	(< 
		(abs
			(-isso 
				(+ 
					(quadrado l1) (quadrado l2)
				)
				(quadrado maior)
			)
		)
		(* (quadrado maior) 0.02)
	)
)


;exercicio 4
(defun circulo (raio)
	(setq Pi 3.14)
	(list (* ( * 2 Pi) raio) (* ( * Pi raio) raio) 	)
)

(defun circulo_facil (raio)
	(setq PI 3.14)
	(list (* 2 PI raio) (* PI raio raio) )
)

;exercicio 5

(defun misterio (s)
(cond ((null s) 1)
((atom s) 0)
(t (max (add1 (misterio (car s)))
(misterio (cdr s))))))
;;; retorna o numero de subniveis

;exercicio 6
(defun estranho (l)
(cond ((null l) nil)
((atom l ) l)
(t (cons (estranho (car l))
(estranho (cdr l))))))
;;; retorna a propria lista

;exercicio 7
(defun squash (lista)
	(cond 
		((null lista) nil)
		((atom lista) (list lista))
		(t 
		 	(append (squash (car lista)) (squash (cdr lista)))
		)
	)
)

;exercicio 8
(defun ESTA-EM (A Lista)
 (cond 
 	((null Lista) NIL)
 	((atom (car Lista)) (cond 
 							((equal A (car Lista)) t)
 							(t (ESTA-EM A (cdr Lista)))
 						)
 	)
 	((ESTA-EM A (car Lista)) t)
 	(t (ESTA-EM A (cdr Lista))))
 )

;exercicio 9
(defun maior (lista)
	(cond
		((null lista) nil)
		((null (cdr lista)) (car lista))
		((> (car lista) (maior (cdr lista))) (car lista))
		(t (maior (cdr lista)))
	)
)

(defun menor(lista)
	(cond
		((null lista) nil)
		((null (cdr lista)) (car lista))
		((< (car lista) (menor (cdr lista))) (car lista))
		(t (menor(cdr lista)))
	)
)

(defun dif-menor-maior(lista)
	(-(maior lista) (menor lista))
)

;exercicio 10
(defun uniao(lista1 lista2)
	(cond
		((null lista1) lista2)
		((null lista2) lista1)
		((member (car lista1) lista2) (uniao (cdr lista1) lista2))
		(t (cons (car lista1) (uniao (cdr lista1) lista2)))
	)
)

(defun inter (l1 l2)
	(cond
		((null l1) nil)
		((null l2) nil)
		((member (car l1) l2) (cons (car l1) (inter (cdr l1) l2)))
		(t (inter (cdr l1) l2))
	)
)

(defun diff (l1 l2)
	(cond
		((null l1) nil)
		((member (car l1) l2) (diff (cdr l1) l2))
		(t (cons (car l1) (diff (cdr l1) l2)))
	)
)

;exercicio 11
(defun elemento-comum-int (l1 l2)
	(not (null (inter l1 l2)))
)

(defun elemento-comum (l1 l2)
	(cond
		((null l1) nil)
		((null l2) nil)
		((member (car l1) l2) t)
		(t (elemento-comum (cdr l1) l2))
	)
)

;exercicio 12
(defun subset (l1 l2)
	(cond
		((null l1) t)
		((null l2) nil)
		((member (car l1) l2) (subset (cdr l1) l2))
	)
)

;exercicio 13
(defun remover (x lista)
	(cond
		((null lista) nil)
		((equal x (car lista)) (remover x (cdr lista)))
		(t (cons (car lista) (remover x (cdr lista))))
	)
)

(defun mesmos-elementos (l1 l2)
	(and (subset l1 l2) (subset l2 l1))
)

;exercicio 14
;;;; semelhante ao exercicio 24

;exercicio 15
;;; primeira parte do exercicio 24

;exercicio 16
(DEFUN ECO ( )
 (DO (S (READ) (READ))
 ((Equal S ´FIM)) NIL)
 (print S))

;exercicio 17
(DEFUN ECO2 (n)
	(dotimes (x n) (print (read)))
)

;exercicio 4 prova ano passado
(defun elimina (x1 x2 lista)
	(cond
		((null lista) nil)
		((equal x1 (car lista)) (elimina x1 x2 (cdr lista)))
		((equal x2 (car lista)) (elimina x1 x2 (cdr lista)))
		(t (cons (car lista) (elimina x1 x2 (cdr lista))))
	)
)

;exercicio 5 prova ano passado
; (defun forma-pares (lista)
; 	(dolist ()

; 	)
; )

( defun pares(lista)
        (cond 
        	((null lista) nil)
            (t (cons (list (car lista) (car lista)) (pares (cdr lista))))
		)
)


;exercicio 24
(defun SUBSTITUI-TODOS (E1 E2 LISTA)
     (cond 
         ((null Lista) NIL)
         ((equal (car Lista) E1) (cons E2 (SUBSTITUI-TODOS E1 E2 (cdr Lista))))
         (t 
              (cons 
                   (SUBSTITUI-TODOS E1 E2 (car Lista))
                   (SUBSTITUI-TODOS E1 E2 (cdr Lista))
              )
          )
      )
)

