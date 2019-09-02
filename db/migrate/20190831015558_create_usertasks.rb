class CreateUsertasks < ActiveRecord::Migration[5.1]
  def change
    create_table :usertasks do |t|
      t.boolean :completado, default: false
      t.references :user, foreign_key: true
      t.references :task, foreign_key: true

      t.timestamps
    end
  end
end
