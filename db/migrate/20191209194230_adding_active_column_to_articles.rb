class AddingActiveColumnToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :is_active, :bool
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
