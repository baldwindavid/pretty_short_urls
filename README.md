Pretty Short URLs
=================

Pretty Short URLs allows you to set "pretty" and "short" URLs that redirect to any other URL.  This is essentially a database-managed way to setup redirects.

INSTALLATION
============

    script/plugin install git://github.com/baldwindavid/pretty_short_urls.git

Add `map.pretty_short_urls` as the final route in `config/routes.rb`
        
    script/generate pretty_short_urls
    
    rake db:migrate
    
Now simply navigate to `localhost:3000/pretty_short_urls` to manage your URLs.

Copyright (c) 2009 David Baldwin, released under the MIT license
