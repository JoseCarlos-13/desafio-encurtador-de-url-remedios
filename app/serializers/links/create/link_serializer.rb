class Links::Create::LinkSerializer < ActiveModel::Serializer
  attributes :short_url

  def short_url
    object.short_url
  end
end
