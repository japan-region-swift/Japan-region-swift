# Japan-region-swift

日本各地の Swift コミュニティイベントを紹介するバイリンガル（日本語/英語）の静的サイトです。

🌐 **https://japan-region-swift.github.io/Japan-region-swift/**

## 技術スタック

- [Ignite](https://github.com/twostraws/Ignite) v0.6.4 — Swift 製の静的サイトジェネレーター
- Swift 6.0+
- macOS 15+

## セットアップ

### 必要環境

- macOS 15 (Sequoia) 以降
- Swift 6.0 以降（Xcode 16 以降に含まれます）

### ビルド

```bash
make build
```

`Build/` ディレクトリにサイトが生成されます。

### ローカルプレビュー

```bash
make preview
```

ビルド後、`http://localhost:8000/Japan-region-swift/` でローカルサーバーが起動し、ブラウザが自動で開きます。

### クリーン

```bash
make clean
```

## デプロイ

`main` ブランチへのプッシュ時に GitHub Actions（`.github/workflows/static.yml`）が自動実行され、サイトをビルドして GitHub Pages にデプロイします。

`Build/` ディレクトリはgit管理対象外です。CI上でビルドが実行されるため、ローカルでビルドした成果物をコミットする必要はありません。
