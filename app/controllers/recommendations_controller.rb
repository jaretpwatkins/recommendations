class RecommendationsController < ApplicationController
  def index
    @recommendations = Recommendation.all

    render("recommendations/index.html.erb")
  end

  def show
    @recommendation = Recommendation.find(params[:id])

    render("recommendations/show.html.erb")
  end

  def new
    @recommendation = Recommendation.new

    render("recommendations/new.html.erb")
  end

  def create
    @recommendation = Recommendation.new

    @recommendation.address = params[:address]
    @recommendation.name = params[:name]
    @recommendation.neighborhood = params[:neighborhood]
    @recommendation.user_id = params[:user_id]
    @recommendation.yelp_url = params[:yelp_url]
    @recommendation.image_url = params[:image_url]

    save_status = @recommendation.save

    if save_status == true
      redirect_to("/recommendations/#{@recommendation.id}", :notice => "Recommendation created successfully.")
    else
      render("recommendations/new.html.erb")
    end
  end

  def edit
    @recommendation = Recommendation.find(params[:id])

    render("recommendations/edit.html.erb")
  end

  def update
    @recommendation = Recommendation.find(params[:id])

    @recommendation.address = params[:address]
    @recommendation.name = params[:name]
    @recommendation.neighborhood = params[:neighborhood]
    @recommendation.user_id = params[:user_id]

    save_status = @recommendation.save

    if save_status == true
      redirect_to("/recommendations/#{@recommendation.id}", :notice => "Recommendation updated successfully.")
    else
      render("recommendations/edit.html.erb")
    end
  end

  def destroy
    @recommendation = Recommendation.find(params[:id])

    @recommendation.destroy

    if URI(request.referer).path == "/recommendations/#{@recommendation.id}"
      redirect_to("/", :notice => "Recommendation deleted.")
    else
      redirect_to(:back, :notice => "Recommendation deleted.")
    end
  end
end
