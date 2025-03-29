function simpleObfuscate(code)
    local obfuscated = "local s={"
    for i = 1, #code do
        obfuscated = obfuscated .. string.byte(code, i) .. ","
    end
    obfuscated = obfuscated .. "} local str=''; for i=1,#s do str=str..string.char(s[i]) end loadstring(str)()"
    return obfuscated
end

return simpleObfuscate
