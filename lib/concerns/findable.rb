module Concerns
  module Findable

    def find_by_name(name)
# <<<<<<< HEAD
      all.find{|a| a.name == name}
    end

    def find_or_create_by_name(name)
# <<<<<<< HEAD
      self.find_by_name(name) || self.create(name)
# =======
      find_by_name(name) || create(name)
# =======
      self.all.detect{|a| a.name == name}
    end

    def find_or_create_by_name(name)
      self.find_by_name(name) || self.create(name)
# >>>>>>> 0a597d5898ffd979df7f7735bd5366f411c723f4
# >>>>>>> 77dd17c22ef8c0620ed9c3ba34ed6cb7c519c391
    end

  end
end
