package body Treepackage is
   task body Tree is
   begin
      loop
	 select
	    accept Timestep do
	       null;
	    end Timestep;
	 or
	    accept DropApple(AnyPony : in out Pony) do
	       null;
	    end DropApple;
	 or
	    terminate;
	 end select;
      end loop;
   end Tree;
end Treepackage;
