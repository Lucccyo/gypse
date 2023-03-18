type t = Emptree | Tree of t * int * t
let emptree = Emptree
let rec insert e t =
  match t with
  | Emptree -> Tree (Emptree, e, Emptree)
  | Tree (l, n, r) -> insert e (if e > n then r else l)

let rec member e t =
  match t with
  | Emptree -> false
  | Tree (l, n, r) -> if n = e then true
    else member e (if e > n then r else l)
