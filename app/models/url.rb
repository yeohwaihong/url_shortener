class Url < ApplicationRecord
validates :long_url, uniqueness:true, presence:true, format: { with: /(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?/, message: "Not a valid URL"}

  def shorten
    self.short_url = SecureRandom.hex(3)
  end

end
