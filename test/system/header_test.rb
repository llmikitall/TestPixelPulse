require "application_system_test_case"

class HeaderTest < ApplicationSystemTestCase
    setup do 
        visit root_path
    end
    
    test "ТК-1.1: Работоспособность кнопки «Главная»" do
        click_on "ГЛАВНАЯ"
        assert_selector "h2", text: "ДОБРО ПОЖАЛОВАТЬ В RETRO GAME FORUM"
    end
    
    test "ТК-1.2: Работоспособность кнопки «Новости»" do
        click_on "НОВОСТИ"
        assert_selector "h2", text: "ПОСЛЕДНИЕ НОВОСТИ ИГРОВОЙ ИНДУСТРИИ"
    end
    
    test "ТК-1.3: Работоспособность кнопки «Обзоры»" do
        click_on "ОБЗОРЫ"
        #assert_selector "h2", text: "??"
    end
end




