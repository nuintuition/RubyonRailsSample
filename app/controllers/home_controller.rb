class HomeController < ApplicationController
    def index
        end
    def first
        end
    def second
        end
    def show_post
        #@全域變數 宣告相同名稱會前後bing起來 params預設用來接傳進來的參數
        @testName = params[:id]
        end
end
