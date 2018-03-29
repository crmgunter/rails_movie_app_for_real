class AddApiIdToFilms < ActiveRecord::Migration[5.1]
  def change
    add_column :films, :api_id, :int
  end
end
