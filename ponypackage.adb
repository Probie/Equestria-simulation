with ada.text_IO; use ada.text_IO;

package body Ponypackage is

   function NewPony return Access Pony is
   begin
      return (new Pony);
   end NewPony;   

   task body Pony is
      Data : PonyData;
   begin
      Data.Hunger := 50;
      Data.Gender := Male;
      Put_Line ("working");
      loop
	 select
	    accept Timestep do
	       Put_Line("ping");
	    end Timestep;
	 or
	    accept Reproduce(MalePony : in PonyData; NewPony : out PonyData) do
	       NewPony.Hunger := 50;
	       NewPony.Gender := Male;
	    end Reproduce;
	 or
	    terminate;
	 end select;
      end loop;
   end Pony;  	
end PonyPackage;
