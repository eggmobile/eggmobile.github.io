---
layout: page
title: サイト構築
permalink: /notes/site-construction/
tags: [design, notes, site]
date: 2026-02-20 16:27:00 +0900
thumbnail: /assets/images/notes/site-construction-thumb.jpeg
---

## 個人作品アーカイブサイトの作り方（GitHub Pages）

このページでは、本サイトと同様の静的アーカイブサイトを  
誰でも再現できるように手順をまとめています。  

要点を押さえつつ、ChatGPTに相談しながら作りました。  

ポイントは以下。
* **GitHub**を利用できること
* **サーバーレス**であること
* **基本無料**で使えること
* 信頼性の高いサービスであること
* **独自ドメイン**が使えること

GitHubに直接ソースを置くので、管理が簡単です。  
ソースにはHTMLもマークダウンも両方使えます。  
サーバーレスなので運用も手間なし。Pushしたら自動でデプロイ。  
**GitHubに馴染みがある方には大変おすすめです。**
<br>
<br>

---

## 1. GitHub アカウントを作成

GitHub Pages を利用するため、  
まず GitHub のアカウントを作成します。

[https://github.com/](https://github.com/)

![GitHub](/assets/images/notes/github.jpg)

---

## 2. リポジトリを作成

新しいリポジトリを作成します。

リポジトリ名：

    username.github.io

※ username は GitHub のユーザー名

例：

    eggmobile.github.io

---

## 3. Jekyll テーマを設定

最小構成の Jekyll サイトを作成します。

### _config.yml を作成

    title: サイト名
    description: 説明
    theme: minima
    timezone: Asia/Tokyo
    permalink: /:year/:month/:day/:title/

---

## 4. index.md を作成

トップページを Markdown で作成します。

例：

    ---
    layout: default
    title: Home
    ---

    # サイトタイトル

    作品一覧

---

## 5. 画像を追加

リポジトリ内にフォルダを作成します。

    assets/images/

画像を配置し、Markdown から参照します。

    ![説明](/assets/images/example.jpg)

---

## 6. GitHub Pages を有効化

リポジトリの Settings → Pages から  
公開設定を行います。

Branch：

    main

保存すると数分後にサイトが公開されます。

![deployment](/assets/images/notes/deployment.png)

---

## 7. カスタムドメイン（任意）

独自ドメインを使用する場合：

1. ドメインを取得  
2. DNS 設定で GitHub Pages に向ける  
3. リポジトリの Pages 設定でドメインを入力  

![Domain settings](/assets/images/notes/domain-settings.png)

---

## 8. 更新方法

変更したファイルをコミットすると、  
自動的にサイトが更新されます。

サーバーの操作は不要です。

---

## 9. なぜ静的サイトにしたか

- 長期的に維持しやすい  
- 管理コストが低い  
- プラットフォームに依存しない  
- 軽量で高速  

---

## まとめ

この方法を使えば、  
SNSとは異なる形で作品を保存・公開できます。

静かなアーカイブとして無料で長期間運用することが可能です。  
