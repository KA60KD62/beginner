class CreateBegens < ActiveRecord::Migration[5.1]
  def change
    create_table :begens do |t|
      t.string :name
      t.string :comment

      t.timestamps
    end
  end
end
