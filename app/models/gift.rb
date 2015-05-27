class Gift < ActiveRecord::Base
  has_and_belongs_to_many :tags # through a join table
  belongs_to :user, inverse_of: :gifts # through user_id

  validates_presence_of :title
end
