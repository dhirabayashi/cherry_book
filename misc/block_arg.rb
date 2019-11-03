def greeting(&block)
    puts 'おはよう'
    unless block.nil?
        text = block.call('こんにちは')
        puts text    
    end
    puts 'こんばんは'
end

greeting do |text|
    text * 2
end

puts

greeting

puts

def greeting2(&block)
    puts 'おはよう'
    if block_given?
        text = yield 'こんにちは'
        puts text    
    end
    puts 'こんばんは'
end

greeting2 do |text|
    text * 3
end

puts

greeting2
