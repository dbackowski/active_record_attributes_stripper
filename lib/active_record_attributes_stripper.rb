require "active_record_attributes_stripper/version"

module ActiveRecordAttributesStripper
  protected
  def strip_attributes
    @attributes.to_hash.each do |attr, value|
      self[attr] = value.strip if value.present? && value.respond_to?(:strip)
    end
  end
end

ActiveRecord::Base.send(:include, ActiveRecordAttributesStripper)
ActiveRecord::Base.send(:before_validation, :strip_attributes)
