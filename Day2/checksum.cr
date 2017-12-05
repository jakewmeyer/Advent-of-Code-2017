
require "csv"

def checksum1
  sum = 0
  CSV.each_row(File.open("input.csv"), separator: ',') do |row|
    convert = row.map(&.to_i)
    value = convert.max - convert.min
    sum += value
  end
  puts sum
end

def checksum2
  sum = 0
  CSV.each_row(File.open("input.csv"), separator: ',') do |row|
    temp = row.map(&.to_i)
    combos = temp.combinations(2).to_a
    combos.each do |i|
      sum += i.max / i.min if (i.max % i.min).zero?
    end
  end
  puts sum
end

checksum1
checksum2
