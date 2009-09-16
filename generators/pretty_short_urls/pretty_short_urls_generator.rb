class PrettyShortUrlsGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      m.file 'app/controllers/pretty_short_urls_controller.rb', 'app/controllers/pretty_short_urls_controller.rb'
      m.directory 'app/views/pretty_short_urls'
      m.file 'app/views/pretty_short_urls/index.haml', 'app/views/pretty_short_urls/index.haml'
      m.file 'app/views/pretty_short_urls/edit.haml', 'app/views/pretty_short_urls/edit.haml'
      m.file 'app/views/pretty_short_urls/new.haml', 'app/views/pretty_short_urls/new.haml'
      m.file 'app/views/pretty_short_urls/_pretty_short_url.haml', 'app/views/pretty_short_urls/_pretty_short_url.haml'
      m.file 'app/views/pretty_short_urls/_pretty_short_url_form.haml', 'app/views/pretty_short_urls/_pretty_short_url_form.haml'
      m.migration_template 'db/migrate/migration.rb', 'db/migrate', :migration_file_name => "create_pretty_short_urls"
    end
  end
end