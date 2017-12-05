
require 'csv'

def checksum1
  sum = 0
  convert = ->(field, _) { field.strip.to_i }
  CSV.foreach('input.csv', converters: convert, col_sep: ',') do |row|
    value = row.max - row.min
    sum += value
  end
  puts sum
end

def checksum2
  sum = 0
  convert = ->(field, _) { field.strip.to_i }
  CSV.foreach('input.csv', converters: convert, col_sep: ',') do |row|
    combos = row.combination(2).to_a
    combos.each do |i|
      sum += i.max / i.min if (i.max % i.min).zero?
    end
  end
  puts sum
end

checksum1
checksum2
