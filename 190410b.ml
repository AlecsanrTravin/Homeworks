type a = Lit of * | S of a * a | K of a * a ;;

let a = S ( K ( * S ( * * )) K ( * * ) ) ;;
 
let rec print_ struct a =
match a with
'*' -> '*'
| S  ( expr1 , expr2 ) -> "(" ^ ( print_struct expr1 ) ^ "_" ^ ( print_struct expr2 ) ^ ")" ;;
| K  ( expr1 , expr2 ) -> "[" ^ ( print_struct expr1 ) ^ "_" ^ ( print_struct expr2 ) ^ "]" ;;

print_string (print_struct a );;