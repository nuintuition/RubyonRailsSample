class ProductsController < ApplicationController
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
    
            @products = Product.all
            @first_page = 1
            @last_page = (@products.count/LIMITED_PRODUCTS_NUMBER)
    
            @products = @products.offset((@page-1)*LIMITED_PRODUCTS_NUMBER).limit(LIMITED_PRODUCTS_NUMBER)
        end

        def new
            @note = flash[:note]
        end

        def create
            product = Product.create(product_permit)
            flash[:note]= product.id 
            redirect_to action: :new
        end

        #可以加return也可以不加不加funtion會預設直接回傳最後一行的回傳值
        def product_permit
            params.permit([:name,:description,:image_url,:price])
        end
                
end
