# comfysettings

A opininated and lazy ulity file for creating hotloadable settings for small video games.

Two main functions
```d
mixin setup!("file",optionalerrorfunction);
reload!("file");
```
where "file" refers to the .mix and .conf file name(and so you can have several concurrent settings file
see example.d and example.mix for syntax