# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

PRODUCTS_COUNT = 100
        (1..PRODUCTS_COUNT).each do |index|
            product = {
                name: "商品#{index}",
                description:"商品描述#{index}",
                image_url: "https://images.pexels.com/photos/2120483/pexels-photo-2120483.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
            }
            Product.create(product)
        end

