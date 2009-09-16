class PrettyShortUrlsController < ApplicationController
  
  def index
    @pretty_short_urls = PrettyShortUrl.find(:all)
    respond_to do |format|
      format.html
    end
  end

  def new
    @pretty_short_url = PrettyShortUrl.new
  end

  def edit
    @pretty_short_url = PrettyShortUrl.find(params[:id])
  end

  def create
    @pretty_short_url = PrettyShortUrl.new(params[:pretty_short_url])

    respond_to do |format|
      if @pretty_short_url.save
        flash[:notice] = 'PrettyShortUrl was successfully created.'
        format.html { redirect_to pretty_short_urls_url }
      else
        format.html { render :action => "new" }
      end
    end
  end

  def update
    @pretty_short_url = PrettyShortUrl.find(params[:id])

    respond_to do |format|
      if @pretty_short_url.update_attributes(params[:pretty_short_url])
        flash[:notice] = 'PrettyShortUrl was successfully updated.'
        format.html { redirect_to pretty_short_urls_url }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def destroy
    @pretty_short_url = PrettyShortUrl.find(params[:id])
    @pretty_short_url.destroy

    respond_to do |format|
      format.html { redirect_to pretty_short_urls_url }
    end
  end
end
