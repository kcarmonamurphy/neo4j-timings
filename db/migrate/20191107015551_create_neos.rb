class CreateNeos < ActiveRecord::Migration[6.0]
  def change
    create_table :neos do |t|

      t.timestamps
    end
  end
end
