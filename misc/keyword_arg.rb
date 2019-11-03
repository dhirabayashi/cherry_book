def buy_burger(menu, drink: true, potato: true)
    puts "#{menu}, drink: #{drink}, potato: #{potato}"
end

buy_burger('cheese')
buy_burger('fish', drink: true, potato: false)
buy_burger('teriyaki', potato: false, drink: 'L size')
#buy_burger('double cheese', salad: true)  # unknown keyword: salad (ArgumentError)
option = {drink: false, potato: false }
buy_burger('double burger', option)
