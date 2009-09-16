class PrettyShortUrlsRedirectController < ActionController::Base
  
  before_filter :authorize
  
  def redirect
    record = PrettyShortUrl.find_by_name(params[:name])
    if record.nil?
      redirect_to root_url
    else
      redirect_to record.url
    end
  end
  
end