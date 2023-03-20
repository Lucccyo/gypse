type 'a t = Nil | Cons of 'a * 'a t


let empty = Nil

let is_empty = function
    Nil -> true
  | Cons _ -> false

let cons v s = Cons (v, s)

let head = function
    Nil -> failwith "empty stack."
  | Cons (h, _) -> h

let tail = function
    Nil -> failwith "empty stack."
  | Cons (_, t) -> t

let rec concat s1 s2 =
  match s1 with
    Nil -> s2
  | Cons (h, t) -> cons h (concat t s2)

let rec update s i v =
  match s with
    Nil -> failwith "out of bound"
  | Cons (h, t) ->
      if i = 0 then Cons (v, t) else cons h (update t (i-1) v)

let rec suffixe s =
  match s with
    Nil -> Nil
  | Cons (_, t) -> cons (s) (suffixe t)

