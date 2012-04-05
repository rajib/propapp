require './test/test_helper'

class PropTest < ActiveSupport::TestCase
  # Test for validations
  context "validate title" do
    setup do
      @validations = Prop.validators_on(:title).map { |v| [v.kind, v.options] }
    end
    
    should "have presence" do
      assert @validations.include?([:presence, {}])
    end
    
    should "have uniqueness" do
      assert @validations.include?([:uniqueness, {}])
    end
    
    should "have length" do
      assert @validations.include?([:length, { :minimum => 3, :maximum => 20 }])
    end
  end
  
  context "validate point" do
    setup do
      @validations = Prop.validators_on(:point).map { |v| [v.kind, v.options] }
    end
    
    should "have presence" do
      assert @validations.include?([:presence, {}])
    end
  end
  
  context "validate category_id" do
    setup do
      @validations = Prop.validators_on(:category_id).map { |v| [v.kind, v.options] }
    end
    
    should "have presence" do
      assert @validations.include?([:presence, {}])
    end
  end
  
  # Test for associations
  context "belongs_to :category" do
    setup do
      @association = Prop.relations["category"]
    end
    
    should "have foreign key" do
      assert_equal @association.key, "category_id"
    end
    
    should "have referenced_in macro" do
      assert_equal @association.macro, :referenced_in
    end
  end
end
