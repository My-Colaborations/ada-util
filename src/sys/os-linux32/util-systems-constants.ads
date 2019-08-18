--  Generated by utildgen.c from system includes
with Interfaces.C;
package Util.Systems.Constants is

   pragma Pure;

   --  Flags used when opening a file with open/creat.
   O_RDONLY                      : constant Interfaces.C.int := 8#000000#;
   O_WRONLY                      : constant Interfaces.C.int := 8#000001#;
   O_RDWR                        : constant Interfaces.C.int := 8#000002#;
   O_CREAT                       : constant Interfaces.C.int := 8#000100#;
   O_EXCL                        : constant Interfaces.C.int := 8#000200#;
   O_TRUNC                       : constant Interfaces.C.int := 8#001000#;
   O_APPEND                      : constant Interfaces.C.int := 8#002000#;
   O_CLOEXEC                     : constant Interfaces.C.int := 8#2000000#;
   O_SYNC                        : constant Interfaces.C.int := 8#4010000#;
   O_NONBLOCK                    : constant Interfaces.C.int := 8#004000#;

   --  Flags used by fcntl
   F_SETFL                       : constant Interfaces.C.int := 4;
   F_GETFL                       : constant Interfaces.C.int := 3;
   FD_CLOEXEC                    : constant Interfaces.C.int := 1;

   --  Flags used by dlopen
   RTLD_LAZY                     : constant Interfaces.C.int := 8#000001#;
   RTLD_NOW                      : constant Interfaces.C.int := 8#000002#;
   RTLD_NOLOAD                   : constant Interfaces.C.int := 8#000004#;
   RTLD_DEEPBIND                 : constant Interfaces.C.int := 8#000010#;
   RTLD_GLOBAL                   : constant Interfaces.C.int := 8#000400#;
   RTLD_LOCAL                    : constant Interfaces.C.int := 8#000000#;
   RTLD_NODELETE                 : constant Interfaces.C.int := 8#010000#;

   DLL_OPTIONS : constant String := "-ldl";

end Util.Systems.Constants;