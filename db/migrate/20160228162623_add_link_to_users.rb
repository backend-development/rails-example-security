# for each user: save a link to their homepage
class AddLinkToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :homepage, :string
  end
end
