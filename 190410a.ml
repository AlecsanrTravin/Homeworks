type struct = Lit of * | Struct struct * struct ;;

let a = Struct ( Struct ( * Struct ( * * )) Struct ( * * ) ) ;;
 
let rec print_ struct a =
match a with
'*' -> '*'
| Struct  ( expr1 , expr2 ) -> "(" ^ ( print_struct expr1 ) ^ "_" ^ ( print_struct expr2 ) ^ ")" ;;

print_string (print_struct a );;