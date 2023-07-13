class UsersController < ApplicationController
    require 'net/http'
    require 'json'
    require 'kaminari'
  
    def index
      uri = URI('https://run.mocky.io/v3/ce47ee53-6531-4821-a6f6-71a188eaaee0')
      response = Net::HTTP.get(uri)
      data = JSON.parse(response)
      @users = data['users']
      @paginated_users = Kaminari.paginate_array(@users).page(params[:page]).per(10)
  
      respond_to do |format|
        format.html # renderizar a view HTML normalmente
        format.json { render json: @users } # retornar os dados em formato JSON
      end
    end
  end  
