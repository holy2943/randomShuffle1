class CreateRandomShaffules < ActiveRecord::Migration[5.2]
  def change
    create_table :random_shaffules do |t|
      t.text :question
      t.text :answer

      t.timestamps
    end
  end
end
