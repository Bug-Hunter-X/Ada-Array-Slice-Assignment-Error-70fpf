```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   A : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   B : My_Array;
begin
   B := A(1..5); --Error: Assignment to a slice is not allowed
   --Correct way to assign a slice:
   B(1..5) := A(1..5);
end Example;
```