class Hash
  def functify
    keys.each do |key|
      value = self[key]
      define_singleton_method(key) do
        value
      end
    end
    self
  end
end