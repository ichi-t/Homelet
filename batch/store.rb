class Store
  def self.execute
    c = NatureRemo::Client.new
    m = Metric.new(value: c.get_temp)
  end
end
