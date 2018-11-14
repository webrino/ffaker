# encoding: utf-8

require 'ffaker/address'

module FFaker
  module AddressIN
    include FFaker::Address

    extend ModuleUtils
    extend self

    def zip_code
      FFaker.numerify('######')
    end

    alias pincode zip_code
    
    def city
      fetch_sample(CITY)
    end

    def state
      fetch_sample(STATE)
    end

    def state_abbr
      fetch_sample(STATE_ABBR)
    end

    def union_territory
      fetch_sample(UNION_TERRITORY)
    end

    def union_territory_abbr
      fetch_sample(UNION_TERRITORY_ABBR)
    end

    def state_and_union_territory
      fetch_sample(STATE + UNION_TERRITORY)
    end

    def state_and_union_territory_abbr
      fetch_sample(STATE_ABBR + UNION_TERRITORY_ABBR)
    end

    def country
      FFaker::Address.country('IN')
    end

    def country_code
      FFaker::Address.country_code('India')
    end

    def time_zone
      'Asia/Kolkata'
    end

    def state_for(city)
      case city
      when 'Mumbai' then 'Maharashtra'
      when 'Delhi' then 'Delhi'
      when 'Bangalore' then 'Karnataka'
      when 'Mysore' then 'Karnataka'
      when 'Mangalore' then 'Karnataka'
      when 'Hyderabad' then 'Telangana'
      when 'Ahmedabad' then 'Gujarat'
      when 'Chennai' then 'Tamil Nadu'
      when 'Kolkata' then 'West Bengal'
      when 'Surat' then 'Gujarat'
      when 'Pune' then 'Maharashtra'
      when 'Jaipur' then 'Rajasthan'
      when 'Lucknow' then 'Uttar Pradesh'
      when 'Kanpur' then 'Uttar Pradesh'
      when 'Nagpur' then 'Maharashtra'
      when 'Visakhapatnam' then 'Andhra Pradesh'
      when 'Indore' then 'Madhya Pradesh'
      when 'Thane' then 'Maharashtra'
      when 'Bhopal' then 'Madhya Pradesh'
      when 'Patna' then 'Bihar'
      when 'Vadodara' then 'Gujarat'
      when 'Ghaziabad' then 'Uttar Pradesh'
      when 'Ludhiana' then 'Punjab'
      when 'Coimbatore' then 'Tamil Nadu'
      when 'Agra' then 'Uttar Pradesh'
      when 'Madurai' then 'Tamil Nadu'
      else 'N/A'
      end
    end

    def street_suffix
      fetch_sample(STREET_SUFFIX)
    end

    def street_name
      case rand(0..2)
      when 0 then "#{NameIN.last_name} #{street_suffix}"
      when 1 then "#{NameIN.first_name} #{street_suffix}"
      when 2 then "#{NameIN.first_name} #{NameIN.last_name} #{street_suffix}"
      end
    end

    def neighborhood
      fetch_sample(NEIGHBORHOOD)
    end

    def street_address(include_secondary = [true, false].sample)
      str = "#{building_number} #{street_name}"
      str << " #{neighborhood}" if include_secondary
      str
    end
  end
end
