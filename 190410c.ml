type a = Lit of * | S of a * a | K of a * a ;;

let a = S ( K ( * S ( * * )) K ( * * ) ) ;;
 
let rec print_ struct a =
match a with
'*' -> '*'
| S  ( expr1 , expr2 ) -> "(" ^ ( print_struct expr1 ) ^ "_" ^ ( print_struct expr2 ) ^ ")" 
| K  ( expr1 , expr2 ) -> "[" ^ ( print_struct expr1 ) ^ "_" ^ ( print_struct expr2 ) ^ "]" ;;

print_string (print_struct a );;

let maxim a max =
'*' -> string_of_int max
| S  ( expr1 , expr2 ) -> ( maxim expr1 ( max + 1 ) ) ^ "_" ^ ( maxim expr2 ( max + 1 ) )  ;;
| K  ( expr1 , expr2 ) -> ( maxim expr1 ( max + 1 ) ) ^ "_" ^ ( maxim expr2 ( max + 1 ) )  ;;

