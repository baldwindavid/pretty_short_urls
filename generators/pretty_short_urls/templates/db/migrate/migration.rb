class CreatePrettyShortUrls < ActiveRecord::Migration
  def self.up
    create_table :pretty_short_urls do |t|
      t.column :name, :string
      t.column :url, :string
      t.column :created_at, :datetime
      t.column :updated_at, :datetime
    end
  end

  def self.down
    drop_table :pretty_short_urls
  end
end
