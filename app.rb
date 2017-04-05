require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do #renders the index.erb page
      erb :root
    end

    get '/new' do #renders the new.erb page
      #{}"NEW Page"
      erb :"pirates/new" #why quotes??
    end


    post '/pirates' do
    #  binding.pry
      pirate_name = params[:pirate][:name]
      pirate_height = params[:pirate][:height]
      pirate_weight = params[:pirate][:weight]

      @new_pirate = Pirate.new(params[:pirate])

      @ship_1 = Ship.new(params[:pirate][:ships][0])
      @ship_2 = Ship.new(params[:pirate][:ships][1])

      erb :"pirates/show"

    end

    # post '/student' do
    #   @student = Student.new(params[:student])
    #
    #   params[:student][:courses].each do |details|
    #     Course.new(details)
    #   end
    #
    #   @classes = Course.all
    #   erb :student
    # end

  end #end class
end #end module
