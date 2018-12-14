function tableToStr(x)
	local str = ""
	if type(x) == "table" then
		for index, value in ipairs(x) do
			if type(index) == "number" then
				str = str .. tostring(value) .. " "
			end
		end
	end
	return str
end

function strToTable(x)
	local a = {}
	local i = 0
	for w in string.gmatch(x, "%S+") do
		i = i + 1
		a[i] = tonumber(w)
	end
	return a
end

x = {1,-2,3.1,-4.55,5}

print("table to string")
local str = tableToStr(x)
print(str)

print("try byting")
local bytes = {}
for i = 1 , string.len(str) do
	bytes[i] = string.byte(str,i)
end

local newstr = ""
for index, value in ipairs(bytes) do
	newstr = newstr .. string.char(bytes[index])
end


print("string to table")
for index, value in pairs(strToTable(newstr)) do
	print(index, value)
end
