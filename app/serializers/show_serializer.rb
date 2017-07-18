class ShowSerializer < ActiveModel::Serializer
  attributes :id, :show_name, :show_date, :show_time, :notes
end
