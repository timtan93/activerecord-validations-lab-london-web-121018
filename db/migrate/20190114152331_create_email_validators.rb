class CreateEmailValidators < ActiveRecord::Migration
  def change
    create_table :email_validators do |t|

      t.timestamps null: false
    end
  end
end
