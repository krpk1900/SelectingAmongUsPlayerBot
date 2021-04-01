# 概要
Among Usの参加者をランダムに10人選んで、参加者のチャンネルに通知しに行くBotです。  
![SelectingAmongUsPlayersBot](https://user-images.githubusercontent.com/72296262/109512374-61b1ac00-7ae7-11eb-9343-484fd48e8b85.gif)

# 使い方
1. プログラムを実行する

```bandle exec ruby selecting_among_us_players_bot.rb```

2. ngrokを起動する

```ngrok http 4567```

3. ngrokで発行されたurlをスラッシュコマンドのRequest URLに登録

https://api.slack.com/apps/A01QATFD5CG/slash-commands?saved=1
