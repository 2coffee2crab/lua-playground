--print("Hello Lua!")
--
--function safeAccess(table, key)
--    if not table[key] then
--        return "Key not found."
--    end
--
--    return table[key]
--end
--
--for i = 1, 10000 do
--    print("i", i)
--end

--local memoryUsed = collectgarbage("count")  -- Returns the current memory usage in KB
--print("Memory used: " .. memoryUsed .. " KB")


function factorial(n)
    if n == 0 then
        return 1
    end
        return n * factorial(n - 1)
end

print(factorial(5)) -- Output: 120