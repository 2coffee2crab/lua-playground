-- Open file
-- Tokenize each word?
-- Save in table
-- profit?

FILE = "../grep/if_by_rudyard_kilpling.txt"

local function main()
  -- Iterate over the lines of the file
  for line in io.lines(FILE) do
    -- Iterate over each word of each line
    -- "%S+" for Separator?
    for word in string.gmatch(line,"%S+") do
      -- Looks like regex, trim non-alphanumeric characters?
      word = word:gsub("[^A-Za-z0-9]", "")
      print(word)
    end
  end
end

main()
