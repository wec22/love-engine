local class={}

local classes={}--container for the classes


---default superclass of all classes
local object={
    __type="object",
}
function object:type()
    return self.__type
end
function object:typeof(type)
    if(type=="object" or type==__type) then
        return true
    end
    return self.__base:typeof(name)
end
classes["object"]=object



function new_class(_,name) --creates new class
    print(type(name))
    print(name)
    local meta = classes[name]
    if(meta) then
        classes[name]=nil
    else
        meta = {}
        classes[name]=meta
    end
    meta.__type=name
    meta.__base={}
    return function(base)
        if(base==nil) then
            base = "object"
        end
        --inhertiance stuff
        meta.__base=classes[base]
        setmetatable(meta,{__index=meta.__base})
        return meta
    end
end



function class:new(name) --creates a new object
    local table={}
    setmetatable()
end

function class.regiser(name,table)
    classes[name]=table
end



class.classes=classes


setmetatable(class,{__call=new_class})
return class
