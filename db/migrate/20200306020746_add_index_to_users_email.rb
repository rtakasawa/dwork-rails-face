#同じメールアドレスが登録されないように、
#データベースレベルで重複制約を設定する。
class AddIndexToUsersEmail < ActiveRecord::Migration[5.2]
  def change
    #Eメールカラムにインデックスを設定し、
    # そのインデックスが重複しないように設定する
    add_index :users, :email, unique: true
  end
end
