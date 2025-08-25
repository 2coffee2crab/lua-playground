-- Global constants
ERR = "\27[31mERROR:\27[0m"
USAGE = ERR.." missing arguments\nusage:lua grep.lua <pattern ><file>\n  where <pattern> is the string you are looking for: case-sensitive, no regex, and <file> is the file you want to grep.";

-- Add escape codes to color a string red
local function red(str)
  return "\27[31m"..str.."\27[0m"
end

-- Read file line by line and highlight matched patterns
local function find_matches(pattern, file_name)
  local ln_number = 0
  local output = {}

  for line in io.lines(file_name) do
    ln_number = ln_number + 1
    local ln, ln_matches = line:gsub(pattern, function(match) return red(match) end)
    if ln_matches > 0 then
      table.insert(output,ln_number.."\t"..ln)
    end
  end

  if #output > 0 then
    -- Print line containing a match. Format line number to be padded by zeroes to match last line length
    for idx = 1, #output do
      print(output[idx])
    end
  end
  print("\n====================\nFound "..#output.." matches for "..red(pattern))
end

local function main(pattern,file_name)
  -- Ensure the scripts was called with two arguments
  -- Further args are silently ignored
  if not file_name or not pattern then
    io.stderr:write(USAGE)
    os.exit(1,true)
  end

  -- Catch errors. I don't know if I can get the actual OS error
  if not pcall(find_matches,pattern, file_name) then
    print(ERR.." can't read from file "..file_name)
  end
end

main(...)

