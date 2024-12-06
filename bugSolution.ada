```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   A : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   B : My_Array;
begin
   -- Incorrect assignment (will raise an error)
   -- B := A(1..5);

   -- Correct assignment using slice notation on the left-hand side:
   B(1..5) := A(1..5);
   --Alternative solution using a loop:
   for I in 1..5 loop
      B(I) := A(I);
   end loop;
end Example;
```