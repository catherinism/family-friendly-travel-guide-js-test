class GuideSerializer < ActiveModel::Serializer
  attributes :id, :title, :summary

  # belongs_to :destination
  # has_many :ratings
end
