def fromRoman(romanNumber)
    r_map = { 1 => "I",
    4 => "IV",
    5 => "V",
    9 => "IX",
    10 => "X",
    40 => "XL",
    50 => "L",
    90 => "XC",
    100 => "C",
    400 => "CD",
    500 => "D",
    900 => "CM",
    1000 => "M" }
    num = 0
    for key, value in r_map
        while romanNumber.index(key) == 0
            num += value
            num.slice!(key)
        end
    end
    num
end

def toRoman(arabicNumber)
    r_map = { 1 => "I",
    4 => "IV",
    5 => "V",
    9 => "IX",
    10 => "X",
    40 => "XL",
    50 => "L",
    90 => "XC",
    100 => "C",
    400 => "CD",
    500 => "D",
    900 => "CM",
    1000 => "M" }
    num = 0
    r_numerals = Array.new(3999) do |index|
        num = index + 1
        r_numerals.keys.sort { |a,b| b <=> a }.inject("") do |roman,div|
            times, num = num.divmod(div)
            roman << r_map[div] * times
        end
    end
end