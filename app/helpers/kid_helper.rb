module KidHelper
  def self.registered?(k)
    k.name.present?
  end
end
