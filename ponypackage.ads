package PonyPackage is
   type GenderType is (Male,Female);
   type HungerLevel is new Integer range 0..100;
   type PonyData is record
      Gender : GenderType;
      Hunger : HungerLevel := 50;
      Carry : Boolean := False;
   end record;
   task type Pony is
      entry Reproduce(MalePony : in PonyData; NewPony : out PonyData);
      entry TimeStep;
   end Pony;
   function NewPony return Access Pony;
end PonyPackage;
