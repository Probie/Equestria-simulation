with PonyPackage; use PonyPackage;
with TreePackage; use TreePackage;
package WorldPackage is
   type Population is array (1..10) of Access Pony;
   type Trees is array (1..200) of Access Tree;
   CNorthwards : constant Positive := 300;
   CWestwards : constant Positive := 300;
   type WestCoords is array (1..CWestwards) of Positive;
   type NorthCoords is array (1..CNorthwards) of Positive;
   type Coords is record
      Northwards : NorthCoords;
      Westwards : WestCoords;
   end record;
   procedure WorldPack;
end WorldPackage;









