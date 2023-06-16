class AddUserIdToArticles < ActiveRecord::Migration[7.0]
  def change

    add_colunm :articles, :user_id, :int
  end
end
