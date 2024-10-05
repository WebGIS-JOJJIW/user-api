class GeoserverLevel < ApplicationRecord

  validates :geoserver_level, presence: true, uniqueness: true

end
