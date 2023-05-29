# lib/kaminari_monkey_patch.rb
require 'kaminari'

module Kaminari
  module ActiveRecordRelationMethods
    def per(value = nil) # :nodoc:
      return self unless value

      limit(value.to_i).offset(offset_value / limit_value * value.to_i)
    end
  end
end
