
require 'csv'

def passphrase1
  valid = 0
  CSV.foreach('input.txt', col_sep: "\s") do |row|
    valid += 1 if row == row.uniq
  end
  puts valid
end

def passphrase2
  count = 0
  CSV.foreach('input.txt', col_sep: "\s") do |row|
    unique = []
    row.each do |word|
      unique.push(word.chars.sort.join)
    end 
    count += 1 if unique == unique.uniq
  end
  puts count
end

passphrase1
passphrase2
