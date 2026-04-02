local file = 'test.txt'
local lines = {}
for line in io.lines(file) do
    lines[#lines + 1] = line
end

local floor = 0 -- https://stackoverflow.com/questions/11201262/how-to-read-data-from-a-file-in-lua 

for i = 1, #lines do
    local line = lines[i]

    for j=1, #line do
        local char = line:sub(j, j)
        if char == '(' then
            floor = floor + 1
        elseif char == ')' then
            floor = floor - 1
        end
    end
end

print(floor)