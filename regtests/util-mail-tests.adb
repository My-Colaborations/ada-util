-----------------------------------------------------------------------
--  util-mail-tests -- Unit tests for mail
--  Copyright (C) 2018 Stephane Carrez
--  Written by Stephane Carrez (Stephane.Carrez@gmail.com)
--
--  Licensed under the Apache License, Version 2.0 (the "License");
--  you may not use this file except in compliance with the License.
--  You may obtain a copy of the License at
--
--      http://www.apache.org/licenses/LICENSE-2.0
--
--  Unless required by applicable law or agreed to in writing, software
--  distributed under the License is distributed on an "AS IS" BASIS,
--  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--  See the License for the specific language governing permissions and
--  limitations under the License.
-----------------------------------------------------------------------

with Util.Test_Caller;

package body Util.Mail.Tests is

   package Caller is new Util.Test_Caller (Test, "Strings");

   procedure Add_Tests (Suite : in Util.Tests.Access_Test_Suite) is
   begin
      Caller.Add_Test (Suite, "Test Util.Mail.Parse_Address",
                       Test_Parse_Address'Access);
   end Add_Tests;

   procedure Test_Parse_Address (T : in out Test) is
      use Ada.Strings.Unbounded;

      procedure Check (Value : in String;
                       Name  : in String;
                       Email : in String);
      procedure Check (Value : in String;
                       Name  : in String;
                       Email : in String) is
         A : constant Email_Address := Parse_Address (Value);
      begin
         Util.Tests.Assert_Equals (T, Name, To_String (A.Name),
                                   "Invalid name for: " & Value);
         Util.Tests.Assert_Equals (T, Email, To_String (A.Address),
                                   "Invalid email for: " & Value);
      end Check;

   begin
      Check ("Luke Jedi <Luke@skywalker.universe> ", "Luke Jedi", "Luke@skywalker.universe");
      Check (" <Anakin@skywalker.universe> ", "Anakin", "Anakin@skywalker.universe");
      Check (" Vador@skywalker.universe ", "Vador", "Vador@skywalker.universe");
   end Test_Parse_Address;

end Util.Mail.Tests;
