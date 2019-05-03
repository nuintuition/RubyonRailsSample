class HomeController < ApplicationController
    def index
        @nav_flag = false
        end
    def first
        @nav_flag = true
        end
    def second
        @nav_flag = false
        end
    def show_post
        #@全域變數 宣告相同名稱會前後bing起來 params預設用來接傳進來的參數
        @testName = params[:id]
        end
end
