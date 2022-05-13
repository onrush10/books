class PagesController < ApplicationController
    def home
        @name = "Felipe"
    end
    def hola
        @name = "Felipe"
        @name2 = params[:name2]
    end

    layout "mi_layouts", only: [:hola]
end
