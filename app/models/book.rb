class Book < ActiveRecord::Base
  has_and_belongs_to_many :authors
  has_and_belongs_to_many :categories

  def cart_action(current_user_id)
    if $redis.sismember "cart#{current_user_id}", id
      "Remove from"
    else
      "Add to"
    end
  end


end
