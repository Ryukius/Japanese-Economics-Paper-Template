# !作業中です!


# 日本語経済学論文テンプレート (Docker + VS Code版)

このテンプレートは、[Ryukius/Japanese-Economics-Paper-Template](https://github.com/Ryukius/Japanese-Economics-Paper-Template)をベースに、Docker + VS Code (Cursor)環境で使用するために調整したものです。
Cursor を使用して作りました。

## 特徴

- **Docker + VS Code環境**: DevContainerを使用して、環境構築を自動化
- **LuaLaTeX**: 日本語対応のLaTeXエンジン
- **経済学論文向け**: jecon.bstスタイルファイルを使用
- **自動ビルド**: VSCodeのLaTeX Workshopで自動コンパイル
- **BIZUDフォント**: 視認性の高い日本語フォント（BIZUDMincho/BIZUDGothic）

## 使用方法

1. **Dockerコンテナ名の設定**: 必要に応じて`.devcontainer/.env`ファイルでプロジェクト名を設定
2. **DevContainerで開く**: VSCodeでこのフォルダを開き、「Dev Container: Open Folder in Container」を実行
3. **編集**: main.texを編集して論文を執筆
4. **自動ビルド**: 保存時に自動でPDFが生成される
5. **参考文献**: bibliography.bibに参考文献を追加

### Dockerコンテナ名のカスタマイズ

Dockerコンテナ名を自身のプロジェクトに合わせたい場合は、`.devcontainer/.env`ファイルを編集してください：

```bash
# .devcontainer/.envファイルを編集
nano .devcontainer/.env
```

または、手動で`.devcontainer/.env`ファイルを編集：

```env
# .devcontainer/.env
PROJECT_NAME=your-project-name
```

これにより、Dockerコンテナ名が`your-project-name-dev`に変更されます（実際には、お好きな名前に変更してください）

**注意**: プロジェクト名を変更した後は、DevContainerを再起動する必要があります。

## フォント設定

### BIZUDフォント（推奨・デフォルト）
このテンプレートは、視認性の高い日本語フォントであるBIZUDフォントを使用するように設定されています。
- **日本語**: BIZUDMincho-Regular（明朝体）
- **日本語太字**: BIZUDGothic-Bold（ゴシック体）
- **英語・数式**: Latin Modern（システムフォント）

### システムデフォルトフォントを使用する場合
BIZUDフォントを使用したくない場合は、`preamble.tex`のコメントアウト部分を参照して修正してください。

## ファイル構成

- `main.tex`: メインの論文ファイル
- `preamble.tex`: LaTeXの設定ファイル
- `bibliography.bib`: 参考文献データベース
- `jecon.bst`: 経済学用BibTeXスタイル（元ファイルは参考資料に書いたサイトを参照）
- `fonts/`: BIZUDフォントファイル
  - `BIZUDMincho-Regular.ttf`
  - `BIZUDMincho-Bold.ttf`
  - `BIZUDGothic-Regular.ttf`
  - `BIZUDGothic-Bold.ttf`
- `styles/`: スタイルファイル
  - `jecon.bst`
  - `jplain.bst`
- `.env`: プロジェクト名設定ファイル（オプション）
- `.devcontainer/`: Docker環境設定
  - `.env`: Dockerコンテナ名設定ファイル
- `.vscode/`: VSCode設定

## 参考

- [Basic Working Paper Template (Economics & Management)](https://ja.overleaf.com/latex/templates/basic-working-paper-template-economics-and-management/bwpmkcbynmzj)
- [jecon-bst](https://github.com/ShiroTakeda/jecon-bst)
- [Ryukius/Japanese-Economics-Paper-Template-for-Overleaf](https://github.com/Ryukius/Japanese-Economics-Paper-Template-for-Overleaf)
