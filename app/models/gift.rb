class Gift < ActiveRecord::Base
  has_and_belongs_to_many :tags # through a join table
  belongs_to :user, inverse_of: :gifts # through user_id

  validates_presence_of :title

  def all_tags=(names)
    self.tags = names.split(",").map do |name|
      Tag.where(name: name.strip).first_or_create!
    end
  end

  def all_tags
    self.tags.map(&:name).join(", ")
  end
end
