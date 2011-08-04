package body Worldpackage is
   
   procedure Worldpack is
      
   Pop : Population;
   TreePop : Trees;
   Map : Coords;
   begin
     for I in Population'Range loop
       Pop(I) := NewPony;
     end loop;
     for I in Population'Range loop
       Pop(I).Timestep;
     end loop;   
     for I in Trees'Range loop
        null;
     end loop;
   end Worldpack;
end Worldpackage;
