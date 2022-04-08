class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.reformat(nation)
    split = nation.split('_')
    reformat = "#{split[0].capitalize}+#{split[1].capitalize}"
  end
end
