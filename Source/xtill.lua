xTill = {
	Information = {
		Version = "0.0.0.3",
		CodeName = "Frog",
		Coder = "Rexzooly Kai Black"
	}
}
xTill.TypeSet = function(...)
    arg = {...}
	if type(arg[1]) ~= "string" then
		if __Debug_Controller then
			return false, "Argument 1 got "..type(arg[1]).." expected string", "Return One";
		else
			return false, "Argument 1 got "..type(arg[1]).." expected string";
		end
	end
	
	if arg[1] == type(arg[2]) then
		if __Debug_Controller then
			return arg[2], tostring(arg[2]), "Return Two";
		else
			return arg[2], tostring(arg[2]);
		end
	else
	   if arg[1] == type(tonumber(arg[2])) and __NumberStrip then 
	        __NumberStrip = false;
			if __Debug_Controller then
				return arg[2], tostring(arg[2]), "Return Three";
			else
				return arg[2], tostring(arg[2]);
			end
	   else
            if arg[3] ~= nil then
                if arg[3] ~= "isNilSet" then
					if __Debug_Controller then
						return arg[3], tostring(arg[3]), "Return Four";
					else
						return arg[3], tostring(arg[3]);
					end
                else
					if __Debug_Controller then
						return nil, tostring(nil), "Return Five";
					else
						return nil, tostring(nil);
					end
                end
            else
				if __Debug_Controller then
					return __isDefault, tostring(__isDefault), "Return Six";
				else
					return __isDefault, tostring(__isDefault);
				end
            end
        end
	end
end

xTill.TypeSetNil = function(...)
    arg = {...}
	if type(arg[1]) ~= "string" then
		return false, "Argument 1 got "..type(arg[1]).." expected string"
	end
	
	if arg[1] == type(arg[2]) then 
	    return arg[2], tostring(arg[2])
	else
		return nil, tostring(nil);
	end
end

xTill.Version = function()
	Dialog.Message("xTill Version", "You are using xTill("..xTill.Information.CodeName..") Version: "..xTill.Information.Version.." Creator: "..xTill.Information.Coder,MB_OK,MB_ICONNONE,MB_DEFBUTTON1);
end

__NumberStrip = false;
__String = "string";
__Boolean = "boolean";
__Table = "table";
__Number = "number";
__Function = "function";
__Nil = "nil";
__UserDate = "userdata";
__Thread = "thread";
isNil = "isNilSet"
__GotDefault = "Unknown";

__Debug_Controller = false;