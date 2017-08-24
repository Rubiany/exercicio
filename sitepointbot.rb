require 'telegram/bot'

token = '399326388:AAFbAY-WIvFeOstBHpZoJrBXQ-xM4Tsi5e0'
Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/sitepoint'
      bot.api.send_message(chat_id: message.chat.id, text: "Bem vindo ao http://sitepoint.com")
    end
  end
end
