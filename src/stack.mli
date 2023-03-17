module Stack :
  sig
    type 'a t
    val empty : 'a t
    val is_empty : 'a t -> bool
    val cons : 'a -> 'a t -> 'a t
    val head : 'a t -> 'a
    val tail : 'a t -> 'a t
    val concat : 'a t -> 'a t -> 'a t
  end