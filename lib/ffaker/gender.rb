# encoding: utf-8

module Faker
  module Gender
    extend ModuleUtils
    extend self

    def random
      ['male', 'female'].sample
    end

    alias_method :maybe, :random
    alias_method :sample, :random
  end
end
