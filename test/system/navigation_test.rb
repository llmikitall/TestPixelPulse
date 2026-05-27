require "application_system_test_case"

class NavigationTest < ApplicationSystemTestCase
  test "проверка навигации по шапке сайта" do
    # 1. Открываем главную страницу
    visit root_path
    
    # 2. Проверяем, что главная открылась
    assert_selector "h2", text: "ДОБРО ПОЖАЛОВАТЬ В RETRO GAME FORUM!"  # Замени на свой заголовок
    
    # 3. Кликаем "Новости" и проверяем, что попали туда
    click_on "НОВОСТИ"  # или ссылка может быть "News"
    assert_selector "h2", text: "ПОСЛЕДНИЕ НОВОСТИ ИГРОВОЙ ИНДУСТРИИ"  # Заголовок на странице новостей
    
    # 4. Возвращаемся на главную
    click_on "ГЛАВНАЯ"
    assert_selector "h2", text: "ДОБРО ПОЖАЛОВАТЬ В RETRO GAME FORUM!"
  end
end
