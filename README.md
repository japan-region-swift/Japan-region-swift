# [japan-region-swift.github.io](https://japan-region-swift.github.io)

[![Build](https://github.com/japan-region-swift/Japan-region-swift/actions/workflows/build.yml/badge.svg)](https://github.com/japan-region-swift/Japan-region-swift/actions/workflows/build.yml)

## イベント参加者ブログ等記事の追加手順

OGP（Open Graph Protocol）に対応している Web ページを「参加者ブログ」セクションに追加できます。`Content/blog-feeds` ディレクトリ内に、以下の形式で Markdown ファイルを作成してください。

- ファイル名はページ URL のスキーマを取り除き、`/` を `_` に置換したものにしてください
    - ただし URL の末尾に `/` がある場合は、ファイル名からは取り除いてください
- `url` フィールドには OGP（Open Graph Protocol）に対応したページの URL を記載してください
- `date` フィールドにはページの公開日時を記載してください
    - タイムゾーンは JST（日本標準時）で、フォーマットは西暦を用いて `yyyy-MM-dd HH:mm:ss` で記載してください

```md
---
url: ページの URL
date: yyyy-MM-dd HH:mm:ss
---
```

### サンプル
ページ URL が `https://blog.treastrain.jp/articles/7110008404105c/` の場合:

**ファイル名: `blog.treastrain.jp_articles_7110008404105c.md`**

```md
---
url: https://blog.treastrain.jp/articles/7110008404105c/
date: 2024-11-04 17:43:25
---
```
