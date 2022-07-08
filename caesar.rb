# 自分の得意な言語で
# Let's チャレンジ！！

n = gets.to_i
key = gets.chomp

code = []
key.each_char.with_index{|char, index|
    if char.ord == 26
        if n == 1
            num = 1
            code << num.chr
        else 
            num = n-1
            code << num.chr
        end
    elsif char.ord == 1
        if n.to_i == 1
            num = 26
            code << num.chr
        else
            num = 26 - (n-1)
            code << num.chr
        end
 
    elsif index % 2 == 0 #奇数
        num = (char.ord - n)
        code << num.chr
    elsif index % 2 == 1 #偶数
        num = (char.ord + n)
        code << num.chr
    end
}

puts code.join("")