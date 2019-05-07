class HomeController < ApplicationController
    def index
        @ad ={
            title: "大型廣告",
            des: "這是廣告",
            action_title: "閱讀更多",
        }

        @products = []
        (1..4).each do |index|
            product = {
                id:index,
                name: "商品#{index}",
                desription:"商品描述#{index}",
                image_url: "https://images.pexels.com/photos/2120483/pexels-photo-2120483.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
            }
            @products.push(product)
        end
    end
end
