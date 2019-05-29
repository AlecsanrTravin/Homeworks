let a = read_int () ;; 

let rec print_1 a = if 
a = 1 then print_string " " 
else (print_string " " ; (print_1 (a - 1))) 
;; 

let rec print_2 a = if 
a = 0 then print_string "\n"  
else( print_string "0" ; (print_2 (a - 1))) 
;; 

let rec print_scv a n = 
if a = 0 then ( print_2 ( n + 2 ) )
else (print_string "0" ; print_1 n ; print_string "0\n" ; print_scv ( a - 1 ) n);; 

print_2 a ;; 

print_scv ( a - 2 ) ( a - 2 ) ;;
