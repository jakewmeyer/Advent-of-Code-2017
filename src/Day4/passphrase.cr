
require "csv"

def passphrase1
  valid = 0
  CSV.each_row(File.open("input.txt"), separator: ' ') do |row|
    valid += 1 if row == row.uniq
  end
  puts valid
end

def passphrase2
  count = 0
  CSV.each_row(File.open("input.txt"), separator: ' ') do |row|
    unique = []  of String
    row.each do |word|
      unique.push(word.chars.sort.join)
    end 
    count += 1 if unique == unique.uniq
  end
  puts count
end

passphrase1
passphrase2
