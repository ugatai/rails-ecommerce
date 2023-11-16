require 'rails_helper'

RSpec.describe 'Products', type: :system, js: true do
  # @type [Admin]
  let(:admin) { create(:valid_admin) }
  # @type [Product]
  let(:product) { create(:valid_product) }

  before do
    login_as(admin)
  end

  describe 'Admin Product Manual' do
    it 'Create Product' do
      visit new_admin_product_path

      fill_in 'Name', with: 'product1'
      fill_in 'Description', with: 'Description,Description,Description,Description,Description'
      fill_in 'Price', with: 1000
      fill_in 'Stock', with: 1
      attach_file 'Image', Rails.root.join('spec/fixtures/christmas-6832802_1280.jpg')
      click_button 'Create Product'

      expect(page).to have_content('product1')
      expect(page).to have_content('Description,Description,Description,Description,Description')
      expect(page).to have_content('¥1,000')
      expect(page).to have_content('In stock (1)')
    end

    it 'Edit Product Manual' do
      visit edit_admin_product_path(product)

      fill_in 'Name', with: 'edit_product'
      fill_in 'Stock', with: 10
      click_button 'Update Product'

      expect(page).to have_content('edit_product')
      expect(page).to have_content('description/description/description')
      expect(page).to have_content('¥1,000')
      expect(page).to have_content('In stock (10)')
    end
  end
end
