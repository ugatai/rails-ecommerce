require 'rails_helper'

RSpec.describe 'Products', type: :system do
  describe '管理者ログイン' do

    let(:admin) { create(:valid_admin) }

    before do
      allow(self).to receive(:visit)
      allow(self).to receive(:fill_in)
      allow(self).to receive(:click_button)
      login_as(admin)
    end

    it '管理画面側で商品の追加ができる' do
      visit new_admin_product_path

      fill_in 'Name', with: '追加商品'
      fill_in 'Description', with: '商品説明がここに入ります。商品説明がここに入ります。商品説明がここに入ります。'
      fill_in 'Price', with: 1000
      fill_in 'Stock', with: 5
      click_button 'Create Product'

      expect(page).to have_content('追加商品')
      expect(page).to have_content('商品説明がここに入ります。商品説明がここに入ります。商品説明がここに入ります。')
      expect(page).to have_content('¥1,000')
      expect(page).to have_content('In stock (5)')
    end

    it '管理画面側で商品の編集ができる' do
      visit edit_admin_product_path(Product.last)

      fill_in 'Name', with: '更新追加商品'
      fill_in 'Description', with: '商品説明がここに入ります。商品説明がここに入ります。商品説明がここに入ります。'
      fill_in 'Price', with: 1000
      fill_in 'Stock', with: 12
      click_button 'Edit Product'

      expect(page).to have_content('更新追加商品')
      expect(page).to have_content('商品説明がここに入ります。商品説明がここに入ります。商品説明がここに入ります。')
      expect(page).to have_content('¥1,000')
      expect(page).to have_content('In stock (12)')
    end
  end
end
