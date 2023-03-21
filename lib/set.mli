module Set : sig
  type elem
  type set

  val empty: set
  val insert : elem -> set -> set
  val member : elem -> set -> bool
end
