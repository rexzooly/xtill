# xTill
[![Software Needed](https://img.shields.io/badge/Software-Autoplay%20Media%20Player%208-green)](https://www.indigorose.com/autoplay-media-studio/)<br/>
[![Software Needed](https://img.shields.io/badge/Software-Autoplay%20Media%20Player%208%20Forum-blue)](https://forums.indigorose.com/forum/autoplay-media-studio-8-5/autoplay-media-studio-8-discussion)
xTill is a simple plugin that enables you to check or a reply and if it's not the one you thought was going to return EG a string then you can define your error return, some functions are limited to nil or blank replies or true and false and may your return system is a preset string or a boolean so lets say you get a return as nil but your script is set to take a return, you can use this function to change it so it will return that boolean.


### Simple Example
```lua
SomeMagicReturn = nil;
MyReturn = xTill.TypeSet(__String, SomeMagicReturn, false);
Dialog.Message("xTill Example", "We Returned: "..type(MyReturn).."["..tostring(MyReturn).."]");

-- MyReturn will return boolean(false);

```

### Extra Example
```lua
SomeMagicReturn = nil;
MyReturn, MyReturnString = xTill.TypeSet(__String, SomeMagicReturn, false);
Dialog.Message("xTill Example", "We Returned: "..type(MyReturn).."["..MyReturnString.."]");

-- MyReturn will return boolean(false);
```

### Debug Example
```lua
SomeMagicReturn = nil;
MyReturn, MyReturnString, MyReturnDebug= xTill.TypeSet(__String, SomeMagicReturn, false);
Dialog.Message("xTill Example", "We Returned: "..type(MyReturn).."["..MyReturnString.."]");

-- MyReturnDebug will return witch section returned, this will help the creator of this plugin to debug and find out where abouts the fucntion is getting to when and if it fails

-- MyReturn will return boolean(false);
```
