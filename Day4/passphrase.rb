
require "csv"

def passphrase1
    valid = 0
    CSV.foreach("input.txt", :col_sep => "\s") do |row|
        if row == row.uniq
            valid += 1
        end
    end
    puts valid
end

def passphrase2
    count = 0
    CSV.foreach("input.txt", :col_sep => "\s") do |row|
        unique = []
        row.each do |word|
            unique.push(word.chars.sort.join)
        end
        if unique == unique.uniq
            count += 1
        end
    end
    puts count
end

passphrase1
passphrase2
