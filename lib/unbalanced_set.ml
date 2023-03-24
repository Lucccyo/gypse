module UnbalancedSet (Element: Intf.Ordered) : (Intf.Set with type elem = Element.t) = struct
  type elem = Element.t
  type tree = E | T of tree * elem * tree
  type set = tree

  let empty = E

  let rec insert e t =
    match t with
    | E -> T (E, e, E)
    | T (lt, elem, rt) ->
      if Element.lt e elem then T (insert e lt, elem, rt) else
      if Element.lt elem e then T (lt, elem, insert e rt)
      else T (lt, elem, rt)

  let rec member e t =
    match t with
    | E -> false
    | T (lt, elem, rt) ->
      if Element.lt e elem then member e lt else
      if Element.lt elem e then member e rt
      else true



end