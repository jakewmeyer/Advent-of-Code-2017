
array = [] of Int32
File.each_line("input.txt") do |line|
  array.push(line.strip.to_i)
end

def steps(array)
  steps, index = 0, 0
  while index < array.size
    current_num = array[index]
    if current_num >= 3
      array[index] -= 1
    else
      array[index] += 1
    end
    index += current_num
    steps += 1
  end
  puts steps
end

steps(array)
