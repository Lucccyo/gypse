open Data

let () =
  let s = Stack.cons 2 Stack.empty in
  Format.printf "head = %d@." (Stack.head s)
