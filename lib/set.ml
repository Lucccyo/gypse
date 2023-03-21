module Set = struct
  type elem
  type set = E | T of set * elem * set
  let empty = E
  let rec insert e t =
    match t with
    | E -> T (E, e, E)
    | T (l, n, r) -> insert e (if e > n then r else l)

  let rec member e t =
    match t with
    | E -> false
    | T (l, n, r) -> if n = e then true
      else member e (if e > n then r else l)
end