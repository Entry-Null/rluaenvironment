
# Loadstring
```lua
--KOBOL 6.9 V4 HB
getgenv().kobolmodule = {
    ["prints"] = true, --leave this on or shit hits the fan
    ["Compiles"] = false --Sends data to server, HASHED IP, UUID (script ID) Username 
 };
 
loadstring(game:HttpGet("https://raw.githubusercontent.com/Entry-Null/rluaenvironment/main/main.lua", true))()
```
# Making Scripting easy, KOBOL.
## Over 103 custom functions / LOCALS.
## Based on COBOL
Examples: print -> DISPLAY Cloneing a object to a path? -> CLONEPATH(org, new) Deleting? -> DELETE(path) Disable scripts? -> NASM(script, true/false) Fast credits? -> IDENTIFICATION(creator[s], version, scriptname)

STARTOBJ'Part'{
    Name = "Hello";
    Parent = Work;
    STARTOBJ'BoolValue'{
      Name = "You like chicken"
      Value = true
    };
};

HALT(10);

DISPLAY("Bye bye.");

HALT(0.7);

DELETE'Work.Hello';

And much more, Custom math, Genorators, Checks, Scans, Functions.

## Images/Videos
<p align="center">

</p>


