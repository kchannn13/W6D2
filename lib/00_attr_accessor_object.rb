class AttrAccessorObject
  def self.my_attr_accessor(*names)
    names.each do |n|
      define_method(n) do
        instance_variable_get("@" + n.to_s)
      end

      define_method(n.to_s + "=") do |i|
        instance_variable_set("@" + n.to_s, i) 
      end
    end
    # ...
  end
end
