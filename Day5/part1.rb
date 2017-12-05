
array = []
File.readlines('input.txt').each do |line|
  array.push(line.strip.to_i)
end

def steps(array)
  steps, index = 0, 0
  until array[index].nil?
    current_num = array[index]
    array[index] += 1
    index += current_num
    steps += 1
  end
  puts steps
end

steps(array)
