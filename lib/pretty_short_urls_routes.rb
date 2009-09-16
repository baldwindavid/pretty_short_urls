module PrettyShortUrls
  module Routes
    def pretty_short_urls
      connect ":name", :controller => "pretty_short_urls_redirect", :action => "redirect", :conditions => { :method => :get }
    end
  end
end