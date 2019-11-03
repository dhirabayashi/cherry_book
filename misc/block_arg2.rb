def greeting_common(texts, &block)
    puts block.arity
    puts block.class
    puts texts[0]
    puts yield texts[1]
    puts texts[2]
end

def greeting_ja(&block)
    texts = ['おはよう', 'こんにちは', 'こんばんは']
    greeting_common(texts, &block)
end

def greeting_en(&block)
    texts = ['good morning', 'hello', 'good evening']
    greeting_common(texts, &block)
end

greeting_ja do |text|
    text * 2
end

puts

greeting_en do |text|
    text.upcase
end

puts

greeting_ja do |text, other|
    text
end