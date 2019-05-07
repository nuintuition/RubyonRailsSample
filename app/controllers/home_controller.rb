class HomeController < ApplicationController
    #const value
    PRODUCTS_COUNT = 100
    LIMITED_PRODUCTS_NUMBER = 20
    
    def index
        @ad ={
            title: "大型廣告",
            des: "這是廣告",
            action_title: "閱讀更多",
        }

        if params[:page]
            @page = params[:page].to_i
        else
            @page = 1
        end

        @first_page = 1
        @last_page = (PRODUCTS_COUNT/LIMITED_PRODUCTS_NUMBER)
        @products = []
        (1..100).each do |index|
            product = {
                id:index,
                name: "商品#{index}",
                desription:"商品描述#{index}",
                image_url: "https://images.pexels.com/photos/2120483/pexels-photo-2120483.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
            }
            @products.push(product)
        end

        @products = @products[(@page-1)* LIMITED_PRODUCTS_NUMBER,LIMITED_PRODUCTS_NUMBER]
    end
end
