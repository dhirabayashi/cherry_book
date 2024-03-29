module Loggable
    private

    def log(text)
        puts "[LOG] #{text}"
    end
end

class Product
    include Loggable

    def title
        log 'title is called.'
        'A great movie'
    end
end

class User
    include Loggable

    def name
        log 'name is called.'
        'Alice'
    end
end

product = Product.new
product.title

user = User.new
user.name

# product.log('test') _misc/include.rb:33:in `<main>': private method `log' called for #<Product:0x00007fde2d8370d0> (NoMethodError)
