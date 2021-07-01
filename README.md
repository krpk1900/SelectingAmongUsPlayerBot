# 概要
Among Usの参加者をランダムに10人選んで、参加者のチャンネルに通知しに行くBotです。  


<a href="https://github.com/krpk1900/SelectingAmongUsPlayersBot">
  <img width="90%" src="https://user-images.githubusercontent.com/72296262/124068771-1350f180-da76-11eb-9db4-ab9fc793ee5e.gif">
</a>


# 使い方
1. プログラムを実行する

```bandle exec ruby selecting_among_us_players_bot.rb```

2. ngrokを起動する

```ngrok http 4567```

3. ngrokで発行されたurlをスラッシュコマンドのRequest URLに登録

https://api.slack.com/apps/A01QATFD5CG/slash-commands?saved=1

4. slackでスラッシュコマンドを実行

```/among us```
