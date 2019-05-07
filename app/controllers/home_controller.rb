class HomeController < ApplicationController
    def index
        @ad ={
            title: "大型廣告",
            des: "這是廣告",
            action_title: "閱讀更多",
        }

        @products =[
            {
                id:"1",
                name: "商品1",
                desription:"商品描述1",
                image_url: "https://images.pexels.com/photos/2120483/pexels-photo-2120483.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
            },
            {
                id:"2",
                name: "商品2",
                desription:"商品描述2",
                image_url: "https://images.pexels.com/photos/2120483/pexels-photo-2120483.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
            },
            {
                id:"3",
                name: "商品3",
                desription:"商品描述3",
                image_url: "https://images.pexels.com/photos/2120483/pexels-photo-2120483.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
            },
            {
                id:"4",
                name: "商品4",
                desription:"商品描述4",
                image_url: "https://images.pexels.com/photos/2120483/pexels-photo-2120483.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
            }
        ]
    end
end
