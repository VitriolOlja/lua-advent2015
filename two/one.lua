file = 'input.txt'

local lines = {}

for line in io.lines(file) do
    lines[#lines + 1] = line
end

-- 2*l*2 + 2 * w * h + 2 * h * l 
local sumOfPaper = 0
for i = 1, #lines do
    --local lwh = string.gmatch("%dx%dx%d", lines[i])
    local numbers = {}
    for str in lines[i]:gmatch "([^x]+)" do
        numbers[#numbers + 1] = tonumber(str)
    end

    -- The elves also need a little extra paper for each present: the area of the smallest side.
    local side_a = numbers[1] * numbers [2]
    local side_b = numbers[1] * numbers[3]
    local side_c = numbers [2] * numbers[3]

    local smallest = side_a
    if side_b < smallest then
        smallest = side_b
    end
    if side_c < smallest then
        smallest = side_c
    end

    local paper = 2 * ( side_a + side_b + side_c) + smallest
    sumOfPaper = sumOfPaper + paper
    -- print(lwh)
end

print(sumOfPaper)