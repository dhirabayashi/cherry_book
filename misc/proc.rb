def greeting(&block)
    puts 'おはよう'
    unless block.nil?
        text = block.call('こんにちは')
        puts text    
    end
    puts 'こんばんは'
end

repeat_proc = Proc.new {|text| text * 2 }
greeting(&repeat_proc)
