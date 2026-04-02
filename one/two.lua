local file = 'test.txt'

local lines = {}

for line in io.lines(file) do
    lines[#lines + 1] = line
end

local floor = 0
for i = 1, #lines do
    local line = lines[i]
    
    print(#line)

    for j = 1, #line do
        local char = line:sub(j, j)
        if char == '(' then
            floor = floor + 1
        elseif  char == ')' then
            floor = floor - 1
        end

        if floor == -1 then
            print(j)
            break
        end
    end
end