type 'a t = 'a list


let empty = []

let is_empty s = s = []

let cons v s = v :: s

let head = function
    [] -> failwith "empty stack."
  | h :: _ -> h

let tail = function
    [] -> failwith "empty stack."
  | _ :: t -> t

let rec concat s1 s2 =
  match s1 with
  | [] -> s2
  | h :: t -> h :: concat t s2

let rec update s i v =
  match s, i with
    [], _ -> failwith "out of bound"
  | _ :: t, 0 -> v :: t
  | h :: t, _ -> h :: update t (i - 1) v

let rec suffixe s =
  match s with
    [] -> []
  | _ :: t -> cons s (suffixe t)
