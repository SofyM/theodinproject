def caesar_cipher(string, shift)
  shifted =
    string
      .each_char
      .map do |char|
        if char.match(/^[[:alpha:]]+$/)
          shifted_ord = char.ord + shift
          shifted_ord = 64 + (shifted_ord - 90) if char.ord.between?(65, 90) && shifted_ord > 90
          shifted_ord = 96 + (shifted_ord - 122) if char.ord.between?(97,122) && shifted_ord > 122
          char = shifted_ord.chr
        else
          char
        end
      end
      .join
end

def main()
  puts "Enter the string you want to encrypt."
  string = gets.chomp
  num = ""
  while (not num.match(/\A\d+\z/))
    puts "Now enter the shift number you want to use (numbers only)."
    num = gets.chomp
  end
  puts "Thanks! Encrypting '#{string}' with a shift value of #{num}..."
  puts caesar_cipher(string, num.to_i)
end

main()
