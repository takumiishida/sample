class Group < ActiveRecord::Base

  #validation
  before_validation :empty_str_to_nil

  #association
  has_many :users
  has_many :questions, ->{ order("updated_at DESC") }
  has_many :feed_contents, ->{ order("updated_at DESC") }

  private
  def empty_str_to_nil
    self.detail = nil if detail.blank?
  end
end
