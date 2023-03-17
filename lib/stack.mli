type 'a t
(*@ model stack: 'a list
    model length: int *)
val empty : 'a t
(*@ s = empty
    ensures s.length = 0 *)
val is_empty : 'a t -> bool
(*@ b = is_empty s
    pure
    ensures b <-> s.length = 0 *)
val cons : 'a -> 'a t -> 'a t
(*@ t = cons v s
    ensures t.length = s.length + 1 *)
val head : 'a t -> 'a
(*@ h = head t
    requires t.length > 0 *)
val tail : 'a t -> 'a t
(*@ t = tail s
    requires s.length > 0
    ensures t.length = s.length - 1 *)
val concat : 'a t -> 'a t -> 'a t
(*@ t = concat s1 s2
    ensures t.length = s1.length + s2.length *)
val update : 'a t -> int -> 'a -> 'a t
(*@ t = update s i v
    requires s.length > 0
    requires i > 0 /\ i < s.length
    ensures s.length = t.length *)
val suffixe : 'a t -> 'a t t
(*@ tt = suffixe t
    ensures tt.length = t.length + 1 *)
(* je veux dire que:
    pour toutes les valeurs à l'indice i dans t,
    on a une stack de taille (t.length - i) dans tt *)
