require 'rails_helper'

RSpec.describe Category, type: :model do
  it "creates a category" do
    category = Category.create!(title: 'test')

    expect(Category.where(title: 'test')).to exist
  end
end
