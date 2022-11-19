# == Schema Information
#
# Table name: positions
#
#  id         :bigint           not null, primary key
#  name       :string           default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_positions_on_name  (name) UNIQUE
#
class Position < ApplicationRecord

  has_many :workers
  validates :name, presence: true, uniqueness: true

end

