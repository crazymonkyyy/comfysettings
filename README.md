# comfysettings

A opininated and lazy ulity file for creating hotloadable settings for small video games.

Two main functions
```d
mixin setup!("file",optionalerrorfunction);
reload!("file");
```
where "file" refers to the .mix and .conf file name(and so you can have several concurrent settings file
see example.d and example.mix for syntax

# faq

#### but how do I use this?

mixin setup in a golbal/main/a big scope after the main data's, put the reload it defines in in a keypress event or if statement in the main loop; create a .mix file.

#### Whats a mix file

https://monkyyy.science/posts/copy_and_paste_imports_in_d/ pay attension to the -J bit

#### So how do I access the object produced

You dont, this isn't a json lib; it will reach out and set the values without you, in flippant disregard for encapsulation.

#### But BUt BUT, this is serialization whats the data format?

a endline seperated list of {token}={value};
Where token can be mixed in and value can be passed to std.conv.to ; I dont know what wont work(if anything) I was surprized when I tested arrays and it did work. Mess with setting.d's readline_ template if you want something to be handled different