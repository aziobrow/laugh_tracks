class LaughTracksApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get "/comedians" do
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
    else
      @comedians = Comedian.all
    end
    erb :index
  end

end
