# encoding: utf-8

require 'ffaker/company'

module FFaker
  module CompanyIN
    extend ModuleUtils
    extend self

    def name
      case rand(0..2)
      when 0 then "#{NameIN.last_name} #{principal} #{suffix}"
      when 1 then "#{NameIN.last_name} & #{NameIN.last_name} #{principal} #{suffix}"
      when 2 then "#{NameIN.last_name}, #{NameIN.last_name} & #{NameIN.last_name} #{principal} #{suffix}"
      end
    end

    def suffix
      fetch_sample(SUFFIXES)
    end

    def principal
      fetch_sample(PRINCIPAL)
    end
  end
end
