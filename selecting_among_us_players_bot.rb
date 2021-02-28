require 'slack-ruby-client'
require 'sinatra'

Slack.configure do |config|
  config.token = ENV['AMONGUS_BOT_USER_TOKEN']
end

get '/' do
  'Hello Among Us!'
end

# =begin
channels = ['C014D324771', #2ブシトラさん
            'CR7KCUPHD', #5としまつさん
            'CRX9GCKDG', #6遠藤さん
            'CV1SBB6GL', #7フッナさん
            'C016S84R344', #11なかいさん
            'C017Z1MG7A5', #11うつみわたるさん
            'C01B95C8YEL', #13みまたさん
            'C01A0K1UFA7', #14おばまさん
            'C01A3GPC9U7', #14たなしょーさん
            'C01ACDB09GB', #14寺倉さん
            'C01AKB87UKV', #14わたなべさん
           #'C01CU1JH44T', #15寺井
            'C01EWN6JABD', #15ひろむさん
            'C01FCSHSBR7', #15笠井さん
            'C01B7V1HZ18', #15ワタルさん
            'C01AXSG7A2V', #15おおはしさん
            'C01C9M24M0D', #15かつのりさん
            'C01F5RPUK97', #15たけむらさん
            'C01G5AP5YD8', #16ひでたかさん
            'C01GJT5F3JL', #16だいきさん
            'C01FQBAG80P', #16まことさん
            'C01F073HS3G', #17あらいさん
            'C01JJFW57AM', #17いずみさん
            'C01KC7698A2', #17しおはまさん
            'C01HEPV7MTQ', #17しらみずさん
            'C01HU6B3VB3', #17かやさん
            'C01JX3FMM9B', #17ゆーまさん
            'CPQ3HRR43', #廣瀬さん
            'C01JT1Z5T1N', #バディ
          ]
# =end

=begin
channels = ['C01ARSRA0DA', #slack_test
            'C01PTEWK4FN', #slack_test_2
            ]
=end

post '/' do
  channels.shuffle!
  client = Slack::Web::Client.new
  for index in 0..9 do #slack_testチャンネルは'C01ARSRA0DA' # channels[index]
    client.chat_postMessage(channel: channels[index], text: "アナタハ本日開催サレルAmong Usノ10名の参加者ノウチ、#{index+1}人目の参加者ニ選バレマシタ。\n
      無断デ同船シナカッタ場合、アナタヲImpostorトミナシ、帰還後ニ追跡シテ抹殺シマス。\n
      詳細ハ、#times_15期生_terai_shogo デ確認シテクダサイ。")
  end
  return true
end