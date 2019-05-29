let x = read_int () ;;

let rec print_spisoc l = 
match l with 
hd :: tl ->if hd = 1 then print_int 11 else print_string "  " ; print_spisoc tl
|_-> print_string "\n";;

let rec print_mass x = 
match x with 
hd :: tl -> print_spisoc hd ;print_mass tl
|_-> print_string " ";;

let rec sotr n x y l =
if x = 0 then l 
else if ((sqrt (( float_of_int ((x - ( n / 2)) * (x - ( n / 2))))
 +.( float_of_int ( ( y - ( n / 2)) * ( y - ( n / 2)) )))) 
< (( float_of_int ( n )) /. 2. )  ) then ( sotr n ( x - 1 ) y ( 1 :: l ))
else ( sotr n ( x - 1) y ( 0 :: l )) ;;

let rec generater x y l = 
if y = 0 then  l
else  generater x ( y - 1 ) ( (sotr x x  y  []) :: l ) ;;

print_mass ( generater x x [] ) ;