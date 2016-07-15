#!/bin/sh
perl -pe '
s/\@chapter The Organization of the Screen$/\@chapter 画面の構成/;\
s/\@section Point$/\@section ポイント/;\
s/\@section The Echo Area$/\@section エコーエリア/;\
s/\@section The Mode Line$/\@section モードライン/;\
s/\@section The Menu Bar$/\@section メニューバー/' -i screen.texi

perl -pe '
s/\@chapter Characters, Keys and Commands$/\@chapter 文字、キー、コマンド/;\
s/\@section Kinds of User Input$/\@section ユーザーインプットの種類/;\
s/\@section Keys$/\@section キー/;\
s/\@section Keys and Commands$/\@section キーとコマンド/' -i commands.texi

perl -pe '
s/\@chapter Entering and Exiting Emacs$/\@chapter Emacsの起動と終了/;\
s/\@section Entering Emacs$/\@section Emacsの起動/;\
s/\@section Exiting Emacs$/\@section Emacsの終了/' -i entering.texi

perl -pe '
s/\@chapter Basic Editing Commands/\@chapter 基本的な編集コマンド/;
s/\@section Inserting Text/\@section テキストの挿入/;
s/\@section Changing the Location of Point/\@section ポイント位置の変更/;
s/\@section Erasing Text/\@section テキストの消去/;
s/\@section Undoing Changes/\@section 変更のアンドゥ/;
s/\@section Files/\@section ファイル/;
s/\@section Help/\@section ヘルプ/;
s/\@section Blank Lines/\@section 空行/;
s/\@section Continuation Lines/\@section 継続行/;
s/\@section Cursor Position Information/\@section カーソル位置の情報/;
s/\@section Numeric Arguments/\@section 数引数/;
s/\@section Repeating a Command/\@section コマンドの繰り返し/;' -i basic.texi

perl -pe '
s/\@chapter The Minibuffer/\@chapter ミニバッファー/;
s/\@section Using the Minibuffer/\@section ミニバッファーを使う/;
s/\@section Minibuffers for File Names/\@section ミニバッファーでのファイル名/;
s/\@section Editing in the Minibuffer/\@section ミニバッファーでの編集/;
s/\@section Completion/\@section 補完/;
s/\@subsection Completion Example/\@subsection 補完の例/;
s/\@subsection Completion Commands/\@subsection 補完コマンド/;
s/\@subsection Completion Exit/\@subsection 補完の終了/;
s/\@subsection How Completion Alternatives Are Chosen/\@subsection 補完候補が選択される方法/;
s/\@subsection Completion Options/\@subsection 補完オプション/;
s/\@section Minibuffer History/\@section ミニバッファーヒストリー/;
s/\@section Repeating Minibuffer Commands/\@section ミニバッファーでのコマンドの繰り返し/;
s/\@section Entering passwords/\@section パスワードの入力/;
s/\@section Yes or No Prompts/\@section Yes or No プロンプト/;' -i mini.texi

perl -pe '
s/\@chapter Running Commands by Name/\@chapter 名前を指定してコマンドを実行する/' -i m-x.texi

perl -pe '
s/\@chapter Help$/\@chapter ヘルプ/;
s/\@section Help Summary$/\@section ヘルプの概要/;
s/\@section Documentation for a Key$/\@section キーのドキュメント/;
s/\@section Help by Command or Variable Name$/\@section コマンドと変数名のヘルプ/;
s/\@section Apropos$/\@section Apropos/;
s/\@section Help Mode Commands$/\@section ヘルプモードのコマンド/;
s/\@section Keyword Search for Packages$/\@section パッケージのキーワード検索/;
s/\@section Help for International Language Support$/\@section 国際化言語のサポートに関するヘルプ/;
s/\@section Other Help Commands$/\@section その他のヘルプコマンド/;
s/\@section Help Files$/\@section ヘルプファイル/;
s/\@section Help on Active Text and Tooltips$/\@section アクティブテキストのヘルプとツールチップ/;' -i help.texi

perl -pe '
s/\@chapter The Mark and the Region$/\@chapter マークとリージョン/;
s/\@section Setting the Mark$/\@section マークのセット/;
s/\@section Commands to Mark Textual Objects$/\@section テキストオブジェクトをマークするコマンド/;
s/\@section Operating on the Region$/\@section リージョンを操作する/;
s/\@section The Mark Ring$/\@section マークリング/;
s/\@section The Global Mark Ring$/\@section グローバルマークリング/;
s/\@section Shift Selection$/\@section シフト選択/;
s/\@section Disabling Transient Mark Mode$/\@section Transient Markモードを無効にする/;' -i mark.texi

perl -pe "
s/\@chapter Killing and Moving Text$/\@chapter テキストのkillと移動/;
s/\@section Deletion and Killing$/\@section 削除とkill/;
s/\@subsection Deletion$/\@subsection 削除/;
s/\@subsection Killing by Lines$/\@subsection 行のkill/;
s/\@subsection Other Kill Commands$/\@subsection その他のkillコマンド/;
s/\@subsection Options for Killing$/\@subsection killのオプション/;
s/\@section Yanking$/\@section yank/;
s/\@subsection The Kill Ring$/\@subsection killリング/;
s/\@subsection Yanking Earlier Kills$/\@subsection 過去にkillしたテキストをyankする/;
s/\@subsection Appending Kills$/\@subsection killしたテキストの追加/;
s/\@section \`\`Cut and Paste\'' Operations on Graphical Displays$/\@section グラフィカルなディスプレーでのカットアンドペースト/;
s/\@subsection Using the Clipboard$/\@subsection クリップボードを使う/;
s/\@subsection Cut and Paste with Other Window Applications$/\@subsection 他のウィンドウアプリケーションにたいするカットアンドペースト/;
s/\@subsection Secondary Selection$/\@subsection セカンダリー選択/;
s/\@section Accumulating Text$/\@section テキストの追加/;
s/\@section Rectangles$/\@section 矩形領域(Rectangles)/;
s/\@section CUA Bindings$/\@section CUAバインド/;" -i killing.texi

perl -pe '
s/\@chapter Registers$/\@chapter レジスター/;
s/\@section Saving Positions in Registers/\@section レジスターに位置を保存する/;
s/\@section Saving Text in Registers/\@section レジスターにテキストを保存する/;
s/\@section Saving Rectangles in Registers/\@section レジスターに矩形領域を保存する/;
s/\@section Saving Window Configurations in Registers/\@section レジスターにウィンドウ設定を保存する/;
s/\@section Keeping Numbers in Registers/\@section レジスターに数字を保存する/;
s/\@section Keeping File Names in Registers/\@section レジスターにファイル名を保存する/;
s/\@section Keyboard Macro Registers/\@section キーボードマクロのレジスター/;
s/\@section Bookmarks/\@section ブックマーク/;' -i regs.texi

perl -pe '
s/\@chapter Controlling the Display$/\@chapter ディスプレーの制御/;
s/\@section Scrolling$/\@section スクロール/;
s/\@section Recentering$/\@section センタリング/;
s/\@section Automatic Scrolling$/\@section 自動スクロール/;
s/\@section Horizontal Scrolling$/\@section 水平スクロール/;
s/\@section Narrowing$/\@section ナローイング/;
s/\@section View Mode$/\@section Viewモード/;
s/\@section Follow Mode$/\@section Followモード/;
s/\@section Text Faces$/\@section テキストのフェイス/;
s/\@section Colors for Faces$/\@section フェイスのカラー/;
s/\@section Standard Faces$/\@section 標準フェイス/;
s/\@section Text Scale$/\@section テキストのスケール/;
s/\@section Font Lock mode$/\@section Font Lockモード/;
s/\@section Interactive Highlighting$/\@section インタラクティブなハイライト/;
s/\@section Window Fringes$/\@section ウィンドウのフリンジ/;
s/\@section Displaying Boundaries$/\@section バウンダリーの表示/;
s/\@section Useless Whitespace$/\@section 不要なスペース/;
s/\@section Selective Display$/\@section 選択的な表示/;
s/\@section Optional Mode Line Features$/\@section モードラインのオプション/;
s/\@section How Text Is Displayed$/\@section テキストが表示される方法/;
s/\@section Displaying the Cursor$/\@section カーソルの表示/;
s/\@section Line Truncation$/\@section 行の切り詰め/;
s/\@section Visual Line Mode$/\@section Visual Lineモード/;
s/\@section Customization of Display$/\@section ディスプレーのカスタマイズ/;' -i display.texi

perl -pe '
s/\@chapter Searching and Replacement$/\@chapter 検索と置換/;
s/\@section Incremental Search$/\@section インクリメンタル検索/;
s/\@subsection Basics of Incremental Search$/\@subsection インクリメンタル検索の基本/;
s/\@subsection Repeating Incremental Search$/\@subsection インクリメンタル検索の繰り返し/;
s/\@subsection Errors in Incremental Search$/\@subsection インクリメンタル検索でのエラー/;
s/\@subsection Special Input for Incremental Search$/\@subsection インクリメンタル検索の特別な入力/;
s/\@subsection Isearch Yanking$/\@subsection インクリメンタル検索でのyank/;
s/\@subsection Not Exiting Incremental Search$/\@subsection インクリメンタル検索を終了させない/;
s/\@subsection Searching the Minibuffer$/\@subsection ミニバッファーの検索/;
s/\@section Nonincremental Search$/\@section 非インクリメンタル検索/;
s/\@section Word Search$/\@section 単語検索/;
s/\@section Symbol Search$/\@section シンボル検索/;
s/\@section Regular Expression Search$/\@section 正規表現検索/;
s/\@section Syntax of Regular Expressions$/\@section 正規表現の構文/;
s/\@section Backslash in Regular Expressions$/\@section 正規表現でのバックスラッシュ/;
s/\@section Regular Expression Example$/\@section 正規表現の例/;
s/\@section Searching and Case$/\@section 検索と大文字小文字/;
s/\@section Replacement Commands$/\@section 置換コマンド/;
s/\@subsection Unconditional Replacement$/\@subsection 無条件の置換/;
s/\@subsection Regexp Replacement$/\@subsection 正規表現の置換/;
s/\@subsection Replace Commands and Case$/\@subsection 置換コマンドと大文字小文字/;
s/\@subsection Query Replace$/\@subsection 問い合わせつき置換/;
s/\@section Other Search-and-Loop Commands$/\@section その他の検索およびループコマンド/;' -i search.texi

perl -pe '
s/\@chapter Commands for Fixing Typos$/\@chapter タイプミスを訂正するコマンド/;
s/\@section Undo$/\@section Undo(取り消し)/;
s/\@section Transposing Text$/\@section テキストの入れ替え/;
s/\@section Case Conversion$/\@section 大文字小文字の変換/;
s/\@section Checking and Correcting Spelling$/\@section スペルのチェックと訂正/;' -i fixit.texi

perl -pe '
s/\@chapter Keyboard Macros$/\@chapter キーボードマクロ/;
s/\@section Basic Use$/\@section 基本的な使い方/;
s/\@section The Keyboard Macro Ring$/\@section キーボードマクロリング/;
s/\@section The Keyboard Macro Counter$/\@section キーボードマクロカウンター/;
s/\@section Executing Macros with Variations$/\@section 変化のあるマクロの実行/;
s/\@section Naming and Saving Keyboard Macros$/\@section キーボードマクロの命名と保存/;
s/\@section Editing a Keyboard Macro$/\@section キーボードマクロの編集/;
s/\@section Stepwise Editing a Keyboard Macro$/\@section キーボードマクロのステップ編集/;' -i kmacro.texi

perl -pe '
s/\@section Auto Reverting Non-File Buffers$/\@section 非ファイルバッファーの自動リバート/;
s/\@subsection Auto Reverting the Buffer Menu$/\@subsection Buffer Menuの自動リバート/;
s/\@subsection Auto Reverting Dired buffers$/\@subsection Diredバッファーの自動リバート/;
s/\@subsection Adding Support for Auto-Reverting additional Buffers.$/\@subsection 追加のバッファーにたいする自動リバートのサポートの追加/;' -i arevert-xtra.texi

perl -pe '
s/\@chapter File Handling$/\@chapter ファイルの処理/;
s/\@section File Names$/\@section ファイルの名前/;
s/\@section Visiting Files$/\@section ファイルのvisit(訪問)/;
s/\@section Saving Files$/\@section ファイルの保存/;
s/\@subsection Commands for Saving Files$/\@subsection ファイルを保存するコマンド/;
s/\@subsection Backup Files$/\@subsection バックアップファイル/;
s/\@subsubsection Single or Numbered Backups$/\@subsubsection 単一または番号つきバックアップ/;
s/\@subsubsection Automatic Deletion of Backups$/\@subsubsection バックアップの自動削除/;
s/\@subsubsection Copying vs.\@: Renaming$/\@subsubsection コピー vs. リネーム/;
s/\@subsection Customizing Saving of Files$/\@subsection ファイル保存のカスタマイズ/;
s/\@subsection Protection against Simultaneous Editing$/\@subsection 同時編集からの保護/;
s/\@subsection Shadowing Files$/\@subsection ファイルのシャドーイング/;
s/\@subsection Updating Time Stamps Automatically$/\@subsection タイムスタンプの自動更新/;
s/\@section Reverting a Buffer$/\@section バッファーのリバート/;
s/\@section Auto-Saving: Protection Against Disasters$/\@section 自動保存－災害にたいする防御/;
s/\@subsection Auto-Save Files$/\@subsection 自動保存ファイル/;
s/\@subsection Controlling Auto-Saving$/\@subsection 自動保存の制御/;
s/\@subsection Recovering Data from Auto-Saves$/\@subsection 自動保存からのデータ復旧/;
s/\@section File Name Aliases$/\@section ファイルのエイリアス/;
s/\@section File Directories$/\@section ファイルディレクトリー/;
s/\@section Comparing Files$/\@section ファイルの比較/;
s/\@section Diff Mode$/\@section Diffモード/;
s/\@section Miscellaneous File Operations$/\@section その他のファイル操作/;
s/\@section Accessing Compressed Files$/\@section 圧縮ファイルへのアクセス/;
s/\@section File Archives$/\@section ファイルアーカイブ/;
s/\@section Remote Files$/\@section リモートファイル/;
s/\@section Quoted File Names$/\@section ファイル名のクォート/;
s/\@section File Name Cache$/\@section ファイル名キャッシュ/;
s/\@section Convenience Features for Finding Files$/\@section ファイル検索の便利な機能/;
s/\@section Filesets$/\@section ファイルセット/;' -i files.texi

perl -pe '
s/\@chapter Using Multiple Buffers$/\@chapter 複数バッファーの使用/;
s/\@section Creating and Selecting Buffers$/\@section バッファーの作成と選択/;
s/\@section Listing Existing Buffers$/\@section 既存のバッファーを一覧する/;
s/\@section Miscellaneous Buffer Operations$/\@section その他のバッファー操作/;
s/\@section Killing Buffers$/\@section バッファーのkill/;
s/\@section Operating on Several Buffers$/\@section 複数バッファーにたいする操作/;
s/\@section Indirect Buffers$/\@section インダイレクトバッファー/;
s/\@section Convenience Features and Customization of Buffer Handling$/\@section バッファー処理の便利な機能とカスタマイズ/;
s/\@subsection Making Buffer Names Unique$/\@subsection バッファー名を一意にする/;
s/\@subsection Fast minibuffer selection$/\@subsection 素早いミニバッファーの選択/;
s/\@subsection Customizing Buffer Menus$/\@subsection バッファーメニューのカスタマイズ/;' -i buffers.texi

perl -pe '
s/\@chapter Multiple Windows$/\@chapter 複数ウィンドウ/;
s/\@section Concepts of Emacs Windows$/\@section Emacsウィンドウの概念/;
s/\@section Splitting Windows$/\@section ウィンドウの分割/;
s/\@section Using Other Windows$/\@section 他のウィンドウの使用/;
s/\@section Displaying in Another Window$/\@section 他のウィンドウでの表示/;
s/\@section Deleting and Rearranging Windows$/\@section ウィンドウの削除と再配置/;
s/\@section Displaying a Buffer in a Window$/\@section ウィンドウでのバッファーの表示/;
s/\@subsection How \@code\{display-buffer\} works$/\@subsection \@code\{display-buffer\}が機能する方法/;
s/\@section Convenience Features for Window Handling$/\@section ウィンドウ処理のための便利な機能/;' -i windows.texi

perl -pe '
s/\@chapter Frames and Graphical Displays$/\@chapter フレームとグラフィカルなディスプレー/;
s/\@section Mouse Commands for Editing$/\@section 編集のためのマウスコマンド/;
s/\@section Mouse Commands for Words and Lines$/\@section 単語と行にたいするマウスコマンド/;
s/\@section Following References with the Mouse$/\@section マウスで参照をフォローする/;
s/\@section Mouse Clicks for Menus$/\@section メニューにたいするマウスクリック/;
s/\@section Mode Line Mouse Commands$/\@section モードラインのマウスコマンド/;
s/\@section Creating Frames$/\@section フレームの作成/;
s/\@section Frame Commands$/\@section フレームコマンド/;
s/\@section Fonts$/\@section フォント/;
s/\@section Speedbar Frames$/\@section スピードバーフレーム/;
s/\@section Multiple Displays$/\@section 複数ディスプレー/;
s/\@section Frame Parameters$/\@section フレームパラメーター/;
s/\@section Scroll Bars$/\@section スクロールバー/;
s/\@section Drag and Drop$/\@section ドラッグアンドドロップ/;
s/\@section Menu Bars$/\@section メニューバー/;
s/\@section Tool Bars$/\@section ツールバー/;
s/\@section Using Dialog Boxes$/\@section ダイアログボックスの使用/;
s/\@section Tooltips$/\@section ツールチップ/;
s/\@section Mouse Avoidance$/\@section マウスの回避/;
s/\@section Non-Window Terminals$/\@section 非ウィンドウ端末/;
s/\@section Using a Mouse in Text Terminals$/\@section テキスト端末でのマウスの使用/;' -i frames.texi

perl -pe '
s/\@chapter International Character Set Support$/\@chapter 国際化文字セットのサポート/;
s/\@section Introduction to International Character Sets$/\@section 国際化文字セットのイントロダクション/;
s/\@section Language Environments$/\@section 言語環境/;
s/\@section Input Methods$/\@section インプットメソッド/;
s/\@section Selecting an Input Method$/\@section インプットメソッドの選択/;
s/\@section Coding Systems$/\@section コーディングシステム/;
s/\@section Recognizing Coding Systems$/\@section コーディングシステムの認識/;
s/\@section Specifying a File.s Coding System$/\@section ファイルのコーディングシステムの指定/;
s/\@section Choosing Coding Systems for Output$/\@section 出力のためのコーディングシステムの選択/;
s/\@section Specifying a Coding System for File Text$/\@section ファイルのテキストにたいするコーディングシステムの指定/;
s/\@section Coding Systems for Interprocess Communication$/\@section プロセス間通信にたいするコーディングシステム/;
s/\@section Coding Systems for File Names$/\@section ファイル名にたいするコーディングシステム/;
s/\@section Coding Systems for Terminal I\/O$/\@section 端末入出力にたいするコーディングシステム/;
s/\@section Fontsets$/\@section フォントセット/;
s/\@section Defining fontsets$/\@section フォントセットの定義/;
s/\@section Modifying Fontsets$/\@section フォントセットの修正/;
s/\@section Undisplayable Characters$/\@section 表示できない文字/;
s/\@section Unibyte Editing Mode$/\@section Unibyte編集モード/;
s/\@section Charsets$/\@section 文字セット/;
s/\@section Bidirectional Editing$/\@section 双方向の編集/;' -i mule.texi

perl -pe '
s/\@chapter Major and Minor Modes$/\@chapter メジャーモードとマイナーモード/;
s/\@section Major Modes$/\@section メジャーモード/;
s/\@section Minor Modes$/\@section マイナーモード/;
s/\@section Choosing File Modes$/\@section ファイルのモードを選択する/;' -i modes.texi

perl -pe '
s/\@chapter Indentation$/\@chapter インデント/;
s/\@section Indentation Commands$/\@section インデントコマンド/;
s/\@section Tab Stops$/\@section タブストップ/;
s/\@section Tabs vs. Spaces$/\@section タブ vs. スペース/;
s/\@section Convenience Features for Indentation$/\@section インデントの便利な機能/;' -i indent.texi

perl -pe '
s/\@chapter Commands for Human Languages$/\@chapter 人間の言語のためのコマンド/;
s/\@section Words$/\@section 単語/;
s/\@section Sentences$/\@section センテンス/;
s/\@section Paragraphs$/\@section パラグラフ/;
s/\@section Pages$/\@section ページ/;
s/\@section Filling Text$/\@section テキストのフィル/;
s/\@subsection Auto Fill Mode$/\@subsection Auto Fillモード/;
s/\@subsection Explicit Fill Commands$/\@subsection 明示的なフィルコマンド/;
s/\@subsection The Fill Prefix$/\@subsection フィルプレフィクス/;
s/\@subsection Adaptive Filling$/\@subsection 適応型フィル/;
s/\@section Case Conversion Commands$/\@section 大文字小文字変換コマンド/;
s/\@section Text Mode$/\@section Textモード/;
s/\@section Outline Mode$/\@section Outlineモード/;
s/\@subsection Format of Outlines$/\@subsection アウトラインのフォーマット/;
s/\@subsection Outline Motion Commands$/\@subsection アウトライン移動コマンド/;
s/\@subsection Outline Visibility Commands$/\@subsection アウトライン表示コマンド/;
s/\@subsection Viewing One Outline in Multiple Views$/\@subsection 複数ビューによるアウトラインの閲覧/;
s/\@subsection Folding Editing$/\@subsection 折り畳み編集/;
s/\@section Org Mode$/\@section Orgモード/;
s/\@subsection Org as an organizer$/\@subsection オーガナイザーとしてのOrg/;
s/\@subsection Org as an authoring system$/\@subsection オーサリングシステムとしてのOrg/;
s/\@section \@TeX\{\} Mode$/\@section \@TeX\{\}モード/;
s/\@subsection \@TeX\{\} Editing Commands$/\@subsection \@TeX\{\}編集コマンド/;
s/\@subsection \@LaTeX\{\} Editing Commands$/\@subsection \@LaTeX\{\}編集コマンド/;
s/\@subsection \@TeX\{\} Printing Commands$/\@subsection \@TeX\{\}印刷コマンド/;
s/\@subsection \@TeX\{\} Mode Miscellany$/\@subsection \@TeX\{\}モード、その他/;
s/\@section SGML and HTML Modes$/\@section SGMLモードとHTMLモード/;
s/\@section Nroff Mode$/\@section Nroffモード/;
s/\@section Enriched Text$/\@section Enrichedテキスト/;
s/\@subsection Enriched Mode$/\@subsection Enrichedモード/;
s/\@subsection Hard and Soft Newlines$/\@subsection ハード改行とソフト改行/;
s/\@subsection Editing Format Information$/\@subsection フォーマット情報の編集/;
s/\@subsection Faces in Enriched Text$/\@subsection Enrichedテキストのフェイス/;
s/\@subsection Indentation in Enriched Text$/\@subsection Enrichedテキストのインデント/;
s/\@subsection Justification in Enriched Text$/\@subsection Enrichedテキストの位置調整/;
s/\@subsection Setting Other Text Properties$/\@subsection その他のテキストプロパティーのセッティング/;
s/\@section Editing Text-based Tables$/\@section テキストベーステーブルの編集/;
s/\@subsection What is a Text-based Table\?$/\@subsection テキストベーステーブルとは/;
s/\@subsection Creating a Table$/\@subsection テーブルの作成/;
s/\@subsection Table Recognition$/\@subsection テーブルの認識/;
s/\@subsection Commands for Table Cells$/\@subsection テーブルセルにたいするコマンド/;
s/\@subsection Cell Justification$/\@subsection セルの位置調整/;
s/\@subsection Table Rows and Columns$/\@subsection テーブルの行と列/;
s/\@subsection Converting Between Plain Text and Tables$/\@subsection プレーンテキストとテーブルの変換/;
s/\@subsection Table Miscellany$/\@subsection テーブル、その他/;
s/\@section Two-Column Editing$/\@section 2列編集/;' -i text.texi

perl -pe '
s/\@chapter Editing Programs$/\@chapter プログラムの編集/;
s/\@section Major Modes for Programming Languages$/\@section プログラミング言語のためのメジャーモード/;
s/\@section Top-Level Definitions, or Defuns$/\@section トップレベルの定義、またはdefun/;
s/\@subsection Left Margin Convention$/\@subsection 左端の慣習/;
s/\@subsection Moving by Defuns$/\@subsection defunの移動/;
s/\@subsection Imenu$/\@subsection Imenuとは/;
s/\@subsection Which Function Mode$/\@subsection Which Functionモード/;
s/\@section Indentation for Programs$/\@section プログラムのインデント/;
s/\@subsection Basic Program Indentation Commands$/\@subsection プログラムの基本的なインデントコマンド/;
s/\@subsection Indenting Several Lines$/\@subsection 複数行のインデント/;
s/\@subsection Customizing Lisp Indentation$/\@subsection Lispのインデントのカスタマイズ/;
s/\@subsection Commands for C Indentation$/\@subsection Cのインデントのためのコマンド/;
s/\@subsection Customizing C Indentation$/\@subsection Cのインデントのカスタマイズ/;
s/\@section Commands for Editing with Parentheses$/\@section カッコに付随する編集のためのコマンド/;
s/\@subsection Expressions with Balanced Parentheses$/\@subsection 対応が取れたカッコの式/;
s/\@subsection Moving in the Parenthesis Structure$/\@subsection カッコ構造の移動/;
s/\@subsection Matching Parentheses$/\@subsection マッチするカッコ/;
s/\@section Manipulating Comments$/\@section コメントの操作/;
s/\@subsection Comment Commands$/\@subsection コメントコマンド/;
s/\@subsection Multiple Lines of Comments$/\@subsection 複数行のコメント/;
s/\@subsection Options Controlling Comments$/\@subsection コメントを制御するオプション/;
s/\@section Documentation Lookup$/\@section ドキュメントの照会/;
s/\@subsection Info Documentation Lookup$/\@subsection Infoドキュメントの照会/;
s/\@subsection Man Page Lookup$/\@subsection man-pageの照会/;
s/\@subsection Emacs Lisp Documentation Lookup$/\@subsection Emacs Lispドキュメントの照会/;
s/\@section Hideshow minor mode$/\@section Hideshowマイナーモード/;
s/\@section Completion for Symbol Names$/\@section シンボル名の補完/;
s/\@section MixedCase Words$/\@section 大文字小文字の混ざった単語/;
s/\@section Semantic$/\@section Semanticとは/;
s/\@section Other Features Useful for Editing Programs$/\@section プログラムを編集するための他の便利な機能/;
s/\@section C and Related Modes$/\@section Cおよび関連するモード/;
s/\@subsection C Mode Motion Commands$/\@subsection Cモードの移動コマンド/;
s/\@subsection Electric C Characters$/\@subsection エレクトリックC文字/;
s/\@subsection Hungry Delete Feature in C$/\@subsection Cの欲張りな削除機能/;
s/\@subsection Other Commands for C Mode$/\@subsection Cモードのその他のコマンド/;
s/\@section Asm Mode$/\@section Asmモード/;' -i programs.texi

perl -pe '
s/\@section Fortran Mode$/\@section Fortranモード/;
s/\@subsection Motion Commands$/\@subsection 移動コマンド/;
s/\@subsection Fortran Indentation$/\@subsection Fortranのインデント/;
s/\@subsubsection Fortran Indentation and Filling Commands$/\@subsubsection Fortranのインデントおよびフィルコマンド/;
s/\@subsubsection Continuation Lines$/\@subsubsection 継続行/;
s/\@subsubsection Line Numbers$/\@subsubsection 行番号/;
s/\@subsubsection Syntactic Conventions$/\@subsubsection 構文的な慣習/;
s/\@subsubsection Variables for Fortran Indentation$/\@subsubsection Fortranのインデントのための変数/;
s/\@subsection Fortran Comments$/\@subsection Fortranのコメント/;
s/\@subsection Auto Fill in Fortran Mode$/\@subsection FortranモードでのAuto Fill/;
s/\@subsection Checking Columns in Fortran$/\@subsection Fortranでの列のチェック/;
s/\@subsection Fortran Keyword Abbrevs$/\@subsection FortranキーワードのAbbrev/;' -i fortran-xtra.texi

perl -pe '
s/\@chapter Compiling and Testing Programs$/\@chapter プログラムのコンパイルとテスト/;
s/\@section Running Compilations under Emacs$/\@section Emacs下でのコンパイルの実行/;
s/\@section Compilation Mode$/\@section Compilationモード/;
s/\@section Subshells for Compilation$/\@section コンパイルのためのサブシェル/;
s/\@section Searching with Grep under Emacs$/\@section Emacs下でのGrepによる検索/;
s/\@section Finding Syntax Errors On The Fly$/\@section オンザフライで構文エラーを見つける/;
s/\@section Running Debuggers Under Emacs$/\@section Emacs下でのデバッガーの実行/;
s/\@subsection Starting GUD$/\@subsection GUDの開始/;
s/\@subsection Debugger Operation$/\@subsection デバッガーの操作/;
s/\@subsection Commands of GUD$/\@subsection GUDのコマンド/;
s/\@subsection GUD Customization$/\@subsection GUDのカスタマイズ/;
s/\@subsection GDB Graphical Interface$/\@subsection GDBのグラフィカルインターフェース/;
s/\@subsubsection GDB User Interface Layout$/\@subsubsection GDBのユーザーインターフェースのレイアウト/;
s/\@subsubsection Source Buffers$/\@subsubsection Sourceバッファー/;
s/\@subsubsection Breakpoints Buffer$/\@subsubsection Breakpointsバッファー/;
s/\@subsubsection Threads Buffer$/\@subsubsection Threadsバッファー/;
s/\@subsubsection Stack Buffer$/\@subsubsection Stackバッファー/;
s/\@subsubsection Other GDB Buffers$/\@subsubsection その他のGDBバッファー/;
s/\@subsubsection Watch Expressions$/\@subsubsection ウォッチ式/;
s/\@subsubsection Multithreaded Debugging$/\@subsubsection マルチスレッドのデバッグ/;
s/\@section Executing Lisp Expressions$/\@section Lisp式の実行/;
s/\@section Libraries of Lisp Code for Emacs$/\@section EmacsのためのLispコードによるライブラリー/;
s/\@section Evaluating Emacs Lisp Expressions$/\@section Emacs Lisp式の評価/;
s/\@section Lisp Interaction Buffers$/\@section Lisp Interactionバッファー/;
s/\@section Running an External Lisp$/\@section 外部Lispの実行/;' -i building.texi

perl -pe '
s/\@chapter Maintaining Large Programs$/\@chapter 大きなプログラムの保守/;
s/\@section Version Control$/\@section バージョンコントロール/;
s/\@subsection Introduction to Version Control$/\@subsection バージョンコントロールの紹介/;
s/\@subsubsection Understanding the problems it addresses$/\@subsubsection 問題の背景/;
s/\@subsubsection Supported Version Control Systems$/\@subsubsection サポートされるバージョンコントロールシステム/;
s/\@subsubsection Concepts of Version Control$/\@subsubsection バージョンコントロールの概念/;
s/\@subsubsection Merge-based vs lock-based Version Control$/\@subsubsection バージョンコントロールにおけるマージベースとロックベース/;
s/\@subsubsection Changeset-based vs File-based Version Control$/\@subsubsection バージョンコントロールに置ける変更セットベースとファイルベース/;
s/\@subsubsection Decentralized vs Centralized Repositories$/\@subsubsection リポジトリーにおける分散型と集中型/;
s/\@subsubsection Types of Log File$/\@subsubsection ログファイルのタイプ/;
s/\@subsection Version Control and the Mode Line$/\@subsection バージョンコントロールとモードライン/;
s/\@subsection Basic Editing under Version Control$/\@subsection バージョンコントロール下での基本的な編集/;
s/\@subsubsection Basic Version Control with Merging$/\@subsubsection マージでの基本的なバージョンコントロール/;
s/\@subsubsection Basic Version Control with Locking$/\@subsubsection ロックでの基本的なバージョンコントロール/;
s/\@subsubsection Advanced Control in \@kbd\{C-x v v\}$/\@subsubsection \@kbd\{C-x v v\}の高度な制御/;
s/\@subsection Features of the Log Entry Buffer$/\@subsection Log Entryバッファーの機能/;
s/\@subsection Registering a File for Version Control$/\@subsection バージョンコントロールへのファイルの登録/;
s/\@subsection Examining And Comparing Old Revisions$/\@subsection 古いリビジョンの調査と比較/;
s/\@subsection VC Change Log$/\@subsection VC Change Log/;
s/\@subsection Undoing Version Control Actions$/\@subsection バージョンコントロール操作のアンドゥ/;
s/\@subsection Ignore Version Control Files$/\@subsection バージョンコントロールファイルを無視する/;
s/\@subsection VC Directory Mode$/\@subsection VC Directoryモード/;
s/\@subsubsection The VC Directory Buffer$/\@subsubsection VC Directoryバッファー/;
s/\@subsubsection VC Directory Commands$/\@subsubsection VC Directoryコマンド/;
s/\@subsection Version Control Branches$/\@subsection バージョンコントロールのブランチ/;
s/\@subsubsection Switching between Branches$/\@subsubsection ブランチ間の切り替え/;
s/\@subsubsection Pulling Changes into a Branch$/\@subsubsection ブランチへの変更の取り込み/;
s/\@subsubsection Merging Branches$/\@subsubsection ブランチのマージ/;
s/\@subsubsection Creating New Branches$/\@subsubsection 新しいブランチの作成/;
s/\@section Change Logs$/\@section 変更ログ/;
s/\@subsection Change Log Commands$/\@subsection 変更ログコマンド/;
s/\@subsection Format of ChangeLog$/\@subsection ChangeLogの書式/;
s/\@section Tags Tables$/\@section タグテーブル/;
s/\@subsection Source File Tag Syntax$/\@subsection ソースファイルタグの構文/;
s/\@subsection Creating Tags Tables$/\@subsection タグテーブルの作成/;
s/\@subsection Etags Regexps$/\@subsection EtagsのRegexps/;
s/\@subsection Selecting a Tags Table$/\@subsection タグテーブルの選択/;
s/\@subsection Finding a Tag$/\@subsection タグの検索/;
s/\@subsection Searching and Replacing with Tags Tables$/\@subsection タグテーブルの検索と置換/;
s/\@subsection Tags Table Inquiries$/\@subsection タグテーブルの照会/;
s/\@section Emacs Development Environment$/\@section Emacs開発環境/;'  -i maintaining.texi

perl -pe 's/\@section Advanced VC Usage$/\@section VCの上級の使用法/;' -i vc-xtra.texi

perl -pe '
s/\@subsection Miscellaneous Commands and Features of VC$/\@subsection VCのその他のコマンドと機能/;
s/\@subsubsection Change Logs and VC$/\@subsubsection 変更ログとVC/;
s/\@subsubsection Deleting and Renaming Version-Controlled Files$/\@subsubsection バージョンコントロールされたファイルの削除とリネーム/;
s/\@subsubsection Revision Tags$/\@subsubsection リビジョンタグ/;
s/\@subsubsection Inserting Version Control Headers$/\@subsubsection バージョンコントロールヘッダーの挿入/;
s/\@subsection Customizing VC$/\@subsection VCのカスタマイズ/;
s/\@subsubsection General Options$/\@subsubsection 一般的なオプション/;
s/\@subsubsection Options for RCS and SCCS$/\@subsubsection RCSとSCCSにたいするオプション/;
s/\@subsubsection Options specific for CVS$/\@subsubsection CVSに特有のオプション/;' -i vc1-xtra.texi

perl -pe '
s/\@section Merging Files with Emerge$/\@section Emergeでのファイルのマージ/;
s/\@subsection Overview of Emerge$/\@subsection Emergeの概要/;
s/\@subsection Submodes of Emerge$/\@subsection Emergeのサブモード/;
s/\@subsection State of a Difference$/\@subsection 相違の状態/;
s/\@subsection Merge Commands$/\@subsection マージコマンド/;
s/\@subsection Exiting Emerge$/\@subsection Emergeの終了/;
s/\@subsection Combining the Two Versions$/\@subsection 2つのバージョンの合成/;
s/\@subsection Fine Points of Emerge$/\@subsection Emergeの細かい注意点/;' -i emerge-xtra.texi

perl -pe '
s/\@chapter Abbrevs$/\@chapter abbrev\(略語\)/;
s/\@section Abbrev Concepts$/\@section abbrevの概念/;
s/\@section Defining Abbrevs$/\@section abbrevの定義/;
s/\@section Controlling Abbrev Expansion$/\@section abbrev展開の制御/;
s/\@section Examining and Editing Abbrevs$/\@section abbrevのテストと編集/;
s/\@section Saving Abbrevs$/\@section abbrevの保存/;
s/\@section Dynamic Abbrev Expansion$/\@section 動的abbrev展開/;
s/\@section Customizing Dynamic Abbreviation$/\@section 動的abbrevのカスタマイズ/;' -i abbrevs.texi

perl -pe '
s/\@chapter Dired, the Directory Editor$/\@chapter Dired \(ディレクトリーエディター\)/;
s/\@section Entering Dired$/\@section Diredの起動/;
s/\@section Navigation in the Dired Buffer$/\@section Diredバッファーでの移動/;
s/\@section Deleting Files with Dired$/\@section Diredでのファイルの削除について/;
s/\@section Flagging Many Files at Once$/\@section 大量のファイルに一度にフラグをつける/;
s/\@section Visiting Files in Dired$/\@section Diredのファイルをvisitする/;
s/\@section Dired Marks vs. Flags$/\@section Diredでのマークとフラグ/;
s/\@section Operating on Files$/\@section ファイルにたいする操作/;
s/\@section Shell Commands in Dired$/\@section Diredでのシェルコマンド/;
s/\@section Transforming File Names in Dired$/\@section Diredでのファイル名の変更/;
s/\@section File Comparison with Dired$/\@section Diredでのファイル比較/;
s/\@section Subdirectories in Dired$/\@section Diredでのサブディレクトリー/;
s/\@section Moving Over Subdirectories$/\@section サブディレクトリー間の移動/;
s/\@section Hiding Subdirectories$/\@section サブディレクトリーを隠す/;
s/\@section Updating the Dired Buffer$/\@section Diredバッファーの更新/;
s/\@section Dired and \@code\{find\}$/\@section Diredと\@code\{find\}/;
s/\@section Editing the Dired Buffer$/\@section Diredバッファーの編集/;
s/\@section Viewing Image Thumbnails in Dired$/\@section Diredでのイメージとサムネイルの閲覧/;
s/\@section Other Dired Features$/\@section その他のDiredの機能/;' -i dired.texi

perl -pe '
s/\@section Subdirectory Switches in Dired$/\@section Diredでのサブディレクトリーにたいするスイッチ/;' -i dired-xtra.texi

perl -pe '
s/\@chapter The Calendar and the Diary$/\@chapter カレンダーとダイアリー/;
s/\@section Movement in the Calendar$/\@section カレンダーでの移動/;
s/\@subsection Motion by Standard Lengths of Time$/\@subsection 標準的な時間間隔での移動/;
s/\@subsection Beginning or End of Week, Month or Year$/\@subsection 週、月、年の開始と終了/;
s/\@subsection Specified Dates$/\@subsection 日付の指定/;
s/\@section Scrolling in the Calendar$/\@section カレンダーでのスクロール/;
s/\@section Counting Days$/\@section 日付のカウント/;
s/\@section Miscellaneous Calendar Commands$/\@section その他のカレンダーコマンド/;
s/\@section Writing Calendar Files$/\@section カレンダーファイルの記述/;
s/\@section Holidays$/\@section 休日/;
s/\@section Times of Sunrise and Sunset$/\@section 日の出と日の入りの時刻/;
s/\@section Phases of the Moon$/\@section 月の位相/;
s/\@section Conversion To and From Other Calendars$/\@section 他のカレンダーとの間の変換/;
s/\@subsection Supported Calendar Systems$/\@subsection サポートされるカレンダーシステム/;
s/\@subsection Converting To Other Calendars$/\@subsection 他のカレンダーへの変換/;
s/\@subsection Converting From Other Calendars$/\@subsection 他のカレンダーからの変換/;
s/\@section The Diary$/\@section ダイアリー/;
s/\@subsection Displaying the Diary$/\@subsection ダイアリーの表示/;
s/\@subsection The Diary File$/\@subsection ダイアリーファイル/;
s/\@subsection Date Formats$/\@subsection 日付のフォーマット/;
s/\@subsection Commands to Add to the Diary$/\@subsection ダイアリーに追加するコマンド/;
s/\@subsection Special Diary Entries$/\@subsection 特別なダイアリーエントリー/;
s/\@section Appointments$/\@section アポイントメント/;
s/\@section Importing and Exporting Diary Entries$/\@section ダイアリーエントリーのインポートとエクスポート/;
s/\@section Daylight Saving Time$/\@section サマータイム/;
s/\@section Summing Time Intervals$/\@section 時間間隔の加算/;' -i calendar.texi

perl -pe '
s/\@section More advanced features of the Calendar and Diary$/\@section カレンダーとダイアリーの上級な機能/;
s/\@subsection Customizing the Calendar$/\@subsection カレンダーのカスタマイズ/;
s/\@subsection Customizing the Holidays$/\@subsection 休日のカスタマイズ/;
s/\@subsection Converting from the Mayan Calendar$/\@subsection マヤ暦からの変換/;
s/\@subsection Date Display Format$/\@subsection 日付の表示フォーマット/;
s/\@subsection Time Display Format$/\@subsection 時刻の表示フォーマット/;
s/\@subsection Customizing the Diary$/\@subsection ダイアリーのカスタマイズ/;
s/\@subsection Diary Entries Using non-Gregorian Calendars$/\@subsection 非グレゴリオ暦を使用するカレンダーエントリー/;
s/\@subsection Diary Display$/\@subsection ダイアリーの表示/;
s/\@subsection Fancy Diary Display$/\@subsection Fancy Diary表示/;
s/\@subsection Sexp Entries and the Fancy Diary Display$/\@subsection sexpエントリーとFancy Diary表示/;' -i cal-xtra.texi

perl -pe '
s/\@chapter Sending Mail$/\@chapter メールの送信/;
s/\@section The Format of the Mail Buffer$/\@section メールバッファーのフォーマット/;
s/\@section Mail Header Fields$/\@section メールヘッダーフィールド/;
s/\@section Mail Aliases$/\@section メールエイリアス/;
s/\@section Mail Commands$/\@section メールコマンド/;
s/\@subsection Mail Sending$/\@subsection メールの送信/;
s/\@subsection Mail Header Editing$/\@subsection メールヘッダーの編集/;
s/\@subsection Citing Mail$/\@subsection メールの引用/;
s/\@subsection Mail Miscellany$/\@subsection メール、その他/;
s/\@section Mail Signature$/\@section メール署名/;
s/\@section Mail Amusements$/\@section アミューズメント/;
s/\@section Mail-Composition Methods$/\@section メール作成方法/;' -i sending.texi

perl -pe '
s/\@chapter Reading Mail with Rmail$/\@chapter Rmailでメールを読む/;
s/\@section Basic Concepts of Rmail$/\@section Rmailの基本的な概念/;
s/\@section Scrolling Within a Message$/\@section メッセージのスクロール/;
s/\@section Moving Among Messages$/\@section メッセージ間の移動/;
s/\@section Deleting Messages$/\@section メッセージの削除/;
s/\@section Rmail Files and Inboxes$/\@section Rmailファイルとinbox/;
s/\@section Multiple Rmail Files$/\@section 複数のRmailファイル/;
s/\@section Copying Messages Out to Files$/\@section 外部ファイルへのメッセージのコピー/;
s/\@section Labels$/\@section ラベル/;
s/\@section Rmail Attributes$/\@section Rmailの属性/;
s/\@section Sending Replies$/\@section 返信の送信/;
s/\@section Summaries$/\@section サマリー/;
s/\@subsection Making Summaries$/\@subsection サマリーの作成/;
s/\@subsection Editing in Summaries$/\@subsection サマリーでの編集/;
s/\@section Sorting the Rmail File$/\@section Rmailファイルのソート/;
s/\@section Display of Messages$/\@section メッセージの表示/;
s/\@section Rmail and Coding Systems$/\@section Rmailとコーディングシステム/;
s/\@section Editing Within a Message$/\@section メッセージの編集/;
s/\@section Digest Messages$/\@section ダイジェストメッセージ/;
s/\@section Reading Rot13 Messages$/\@section Rot13メッセージを読む/;
s/\@section \@code\{movemail\} program$/\@section \@code\{movemail\}プログラム/;
s/\@section Retrieving Mail from Remote Mailboxes$/\@section リモートmailboxからのメールの取得/;
s/\@section Retrieving Mail from Local Mailboxes in Various Formats$/\@section さまざまな形式のローカルmailboxからのメールの取得/;' -i rmail.texi

perl -pe '
s/\@chapter Miscellaneous Commands$/\@chapter その他のコマンド/;
s/\@section Gnus$/\@section Gnus/;
s/\@subsection Gnus Buffers$/\@subsection Gnusバッファー/;
s/\@subsection When Gnus Starts Up$/\@subsection Gnusを起動した時/;
s/\@subsection Using the Gnus Group Buffer$/\@subsection Gnus Groupバッファーの使用/;
s/\@subsection Using the Gnus Summary Buffer$/\@subsection Gnus Summaryバッファーの使用/;
s/\@section Document Viewing$/\@section ドキュメントの閲覧/;
s/\@subsection DocView Navigation$/\@subsection DocViewの操作/;
s/\@subsection DocView Searching$/\@subsection DocViewの検索/;
s/\@subsection DocView Slicing$/\@subsection DocViewのスライス/;
s/\@subsection DocView Conversion$/\@subsection DocViewの変換/;
s/\@section Web Browsing with EWW$/\@section EWWによるウェブブラウズ/;
s/\@section Running Shell Commands from Emacs$/\@section Emacsからのシェルコマンドの実行/;
s/\@subsection Single Shell Commands$/\@subsection 単一のシェルコマンド/;
s/\@subsection Interactive Subshell$/\@subsection 対話的なサブシェル/;
s/\@subsection Shell Mode$/\@subsection Shellモード/;
s/\@subsection Shell Prompts$/\@subsection Shellプロンプト/;
s/\@subsection Shell Command History$/\@subsection Shellコマンドヒストリー/;
s/\@subsubsection Shell History Ring$/\@subsubsection Shellヒストリーリング/;
s/\@subsubsection Shell History Copying$/\@subsubsection Shellヒストリーのコピー/;
s/\@subsubsection Shell History References$/\@subsubsection Shellヒストリーの参照/;
s/\@subsection Directory Tracking$/\@subsection ディレクトリーの追跡/;
s/\@subsection Shell Mode Options$/\@subsection Shellモードのオプション/;
s/\@subsection Emacs Terminal Emulator$/\@subsection Emacsの端末エミュレーター/;
s/\@subsection Term Mode$/\@subsection Termモード/;
s/\@subsection Remote Host Shell$/\@subsection リモートホストのシェル/;
s/\@subsection Serial Terminal$/\@subsection シリアル端末/;
s/\@section Using Emacs as a Server$/\@section サーバーとしてのEmacsの使用/;
s/\@subsection Invoking \@code\{emacsclient\}$/\@subsection \@code\{emacsclient\}の呼び出し/;
s/\@subsection \@code\{emacsclient\} Options$/\@subsection \@code\{emacsclient\}のオプション/;
s/\@section Printing Hard Copies$/\@section ハードコピーの印刷/;
s/\@subsection PostScript Hardcopy$/\@subsection PostScriptのハードコピー/;
s/\@subsection Variables for PostScript Hardcopy$/\@subsection PostScriptハードコピーにたいする変数/;
s/\@subsection Printing Package$/\@subsection 印刷のためのパッケージ/;
s/\@section Sorting Text$/\@section テキストのソート/;
s/\@section Editing Binary Files$/\@section バイナリーファイルの編集/;
s/\@section Saving Emacs Sessions$/\@section Emacsセッションの保存/;
s/\@section Recursive Editing Levels$/\@section 再帰編集レベル/;
s/\@section Emulation$/\@section エミュレーション/;
s/\@section Hyperlinking and Navigation Features$/\@section ハイパーリンクと操作機能/;
s/\@subsection Following URLs$/\@subsection URLのフォロー/;
s/\@subsection Activating URLs$/\@subsection URLのアクティブ化/;
s/\@subsection Finding Files and URLs at Point$/\@subsection ポイント位置のファイルやURLを開く/;
s/\@section Other Amusements$/\@section その他の娯楽/;' -i misc.texi

perl -pe '
s/\@section Editing Pictures$/\@section ピクチャーの編集/;
s/\@subsection Basic Editing in Picture Mode$/\@subsection Pictureモードでの基本的な編集/;
s/\@subsection Controlling Motion after Insert$/\@subsection 挿入後の移動の制御/;
s/\@subsection Picture Mode Tabs$/\@subsection Pictureモードでのタブ/;
s/\@subsection Picture Mode Rectangle Commands$/\@subsection Pictureモードの矩形領域コマンド/;' -i picture-xtra.texi

perl -pe '
s/\@chapter Emacs Lisp Packages$/\@chapter Emacs Lispパッケージ/;
s/\@section The Package Menu Buffer$/\@section Package Menuバッファー/;
s/\@section Package Installation$/\@section パッケージのインストール/;
s/\@section Package Files and Directory Layout$/\@section パッケージのファイルとディレクトリー/;' -i package.texi

perl -pe '
s/\@chapter Customization$/\@chapter カスタマイズ/;
s/\@section Easy Customization Interface$/\@section Easy Customizationインターフェース/;
s/\@subsection Customization Groups$/\@subsection カスタマイズグループ/;
s/\@subsection Browsing and Searching for Settings$/\@subsection セッティングのブラウズと検索/;
s/\@subsection Changing a Variable$/\@subsection 変数の変更/;
s/\@subsection Saving Customizations$/\@subsection カスタマイズの保存/;
s/\@subsection Customizing Faces$/\@subsection フェイスのカスタマイズ/;
s/\@subsection Customizing Specific Items$/\@subsection 特定のアイテムのカスタマイズ/;
s/\@subsection Custom Themes$/\@subsection カスタムテーマ/;
s/\@subsection Creating Custom Themes$/\@subsection カスタムテーマの作成/;
s/\@section Variables$/\@section 変数/;
s/\@subsection Examining and Setting Variables$/\@subsection 変数の確認とセット/;
s/\@subsection Hooks$/\@subsection フック/;
s/\@subsection Local Variables$/\@subsection ローカル変数/;
s/\@subsection Local Variables in Files$/\@subsection ファイル内のローカル変数/;
s/\@subsubsection Specifying File Variables$/\@subsubsection ファイル変数の指定/;
s/\@subsubsection Safety of File Variables$/\@subsubsection 安全なファイル変数/;
s/\@subsection Per-Directory Local Variables$/\@subsection ディレクトリーごとのローカル変数/;
s/\@section Customizing Key Bindings$/\@section キーバインディングのカスタマイズ/;
s/\@subsection Keymaps$/\@subsection キーマップ/;
s/\@subsection Prefix Keymaps$/\@subsection プレフィクスキーマップ/;
s/\@subsection Local Keymaps$/\@subsection ローカルキーマップ/;
s/\@subsection Minibuffer Keymaps$/\@subsection ミニバッファーキーマップ/;
s/\@subsection Changing Key Bindings Interactively$/\@subsection 対話的なキーバインディングの変更/;
s/\@subsection Rebinding Keys in Your Init File$/\@subsection キーのリバインド/;
s/\@subsection Modifier Keys$/\@subsection 修飾キー/;
s/\@subsection Rebinding Function Keys$/\@subsection ファンクションキーのリバインド/;
s/\@subsection Named \@acronym\{ASCII\} Control Characters$/\@subsection 名前のある\@acronym\{ASCII\}コントロール文字/;
s/\@subsection Rebinding Mouse Buttons$/\@subsection マウスボタンのリバインド/;
s/\@subsection Disabling Commands$/\@subsection コマンドの無効化/;
s/\@section The Emacs Initialization File$/\@section Emacs初期化ファイル/;
s/\@subsection Init File Syntax$/\@subsection initファイルの構文/;
s/\@subsection Init File Examples$/\@subsection initファイルの例/;
s/\@subsection Terminal-specific Initialization$/\@subsection 端末固有の初期化/;
s/\@subsection How Emacs Finds Your Init File$/\@subsection Emacsがinitファイルを探す方法/;
s/\@subsection Non-\@acronym\{ASCII\} Characters in Init Files$/\@subsection initファイル内の非\@acronym\{ASCII\}文字/;' -i custom.texi

perl -pe '
s/\@chapter Dealing with Common Problems$/\@chapter 一般的な問題への対処/;
s/\@section Quitting and Aborting$/\@section 中止と中断/;
s/\@section Dealing with Emacs Trouble$/\@section Emacsのトラブルへの対処/;
s/\@subsection If \@key\{DEL\} Fails to Delete$/\@subsection \@key\{DEL\}で削除できない場合/;
s/\@subsection Recursive Editing Levels$/\@subsection 再帰編集レベル/;
s/\@subsection Garbage on the Screen$/\@subsection スクリーン上のゴミ/;
s/\@subsection Garbage in the Text$/\@subsection テキスト内のゴミ/;
s/\@subsection Running out of Memory$/\@subsection メモリー不足/;
s/\@subsection When Emacs Crashes$/\@subsection Emacsがクラッシュしたとき/;
s/\@subsection Recovery After a Crash$/\@subsection クラッシュ後のリカバリー/;
s/\@subsection Emergency Escape$/\@subsection 緊急エスケープ/;
s/\@section Reporting Bugs$/\@section バグの報告/;
s/\@subsection Reading Existing Bug Reports and Known Problems$/\@subsection 既存のバグレポートの既知の問題を読む/;
s/\@subsection When Is There a Bug$/\@subsection バグがあったとき/;
s/\@subsection Understanding Bug Reporting$/\@subsection バグレポートの理解/;
s/\@subsection Checklist for Bug Reports$/\@subsection バグレポートのためのチェックリスト/;
s/\@subsection Sending Patches for GNU Emacs$/\@subsection GNU Emacsへのパッチの送付/;
s/\@section Contributing to Emacs Development$/\@section Emacs開発への貢献/;
s/\@section How To Get Help with GNU Emacs$/\@section GNU Emacsにたいして助けを得る方法/;' -i trouble.texi

perl -pe '
s/\@appendix Command Line Arguments for Emacs Invocation$/\@appendix Emacs呼び出しにたいするコマンドライン引数/;
s/\@appendixsec Action Arguments$/\@appendixsec 動作引数/;
s/\@appendixsec Initial Options$/\@appendixsec 初期化オプション/;
s/\@appendixsec Command Argument Example$/\@appendixsec コマンド引数の例/;
s/\@appendixsec Environment Variables$/\@appendixsec 環境変数/;
s/\@appendixsubsec General Variables$/\@appendixsubsec 一般的な変数/;
s/\@appendixsubsec Miscellaneous Variables$/\@appendixsubsec その他の変数/;
s/\@appendixsubsec The MS-Windows System Registry$/\@appendixsubsec MS-Windowsのシステムレジストリー/;
s/\@appendixsec Specifying the Display Name$/\@appendixsec ディスプレー名の指定/;
s/\@appendixsec Font Specification Options$/\@appendixsec フォント指定オプション/;
s/\@appendixsec Window Color Options$/\@appendixsec ウィンドウカラーオプション/;
s/\@appendixsec Options for Window Size and Position$/\@appendixsec ウィンドウのサイズと位置にたいするオプション/;
s/\@appendixsec Internal and External Borders$/\@appendixsec 内枠ボーダーと外枠ボーダー/;
s/\@appendixsec Frame Titles$/\@appendixsec フレームタイトル/;
s/\@appendixsec Icons$/\@appendixsec アイコン/;
s/\@appendixsec Other Display Options$/\@appendixsec その他のディスプレーオプション/;' -i cmdargs.texi

perl -pe '
s/\@appendix X Options and Resources$/\@appendix Xのオプションとリソース/;
s/\@appendixsec X Resources$/\@appendixsec Xリソース/;
s/\@appendixsec Table of X Resources for Emacs$/\@appendixsec EmacsにたいするXリソースの表/;
s/\@appendixsec Lucid Menu And Dialog X Resources$/\@appendixsec Lucidのメニューとダイアログ/;
s/\@appendixsec Motif Menu X Resources$/\@appendixsec MotifメニューのXリソース/;
s/\@appendixsec GTK resources$/\@appendixsec GTKリソース/;
s/\@appendixsubsec GTK Resource Basics$/\@appendixsubsec GTKリソースの基本/;
s/\@appendixsubsec GTK widget names$/\@appendixsubsec GTKウィジェット名/;
s/\@appendixsubsec GTK Widget Names in Emacs$/\@appendixsubsec EmacsでのGTKウィジェット名/;
s/\@appendixsubsec GTK styles$/\@appendixsubsec GTKスタイル/;' -i xresources.texi

perl -pe '
s/\@appendix Emacs 23 Antinews$/\@appendix Emacs 23 アンチニュース/;' -i anti.texi

perl -pe '
s/\@appendix Emacs and Mac OS \/ GNUstep$/\@appendix EmacsとMac OS/;
s/\@section Basic Emacs usage under Mac OS and GNUstep$/\@section Mac OSおよびGNUstepでのEmacsの基本的な使い方/;
s/\@subsection Grabbing environment variables$/\@subsection 環境変数の取得/;
s/\@section Mac \/ GNUstep Customization$/\@section GNUstepでのカスタマイズ/;
s/\@subsection Font and Color Panels$/\@subsection フォントパネルとカラーパネル/;
s/\@section Windowing System Events under Mac OS \/ GNUstep$/\@section Mac OSおよびGNUstepでのウィンドウシステムイベント/;
s/\@section GNUstep Support$/\@section GNUstepにたいするサポート/;' -i macos.texi

perl -pe '
s/\@appendix Emacs and Microsoft Windows\/MS-DOS$/\@appendix EmacsとMicrosoft Windows\/MS-DOS/;
s/\@section How to Start Emacs on MS-Windows$/\@section MS-WindowsでEmacsを開始する方法/;
s/\@section Text Files and Binary Files$/\@section テキストファイルとバイナリーファイル/;
s/\@section File Names on MS-Windows$/\@section MS-Windowsのファイル名/;
s/\@section Emulation of \@code\{ls\} on MS-Windows$/\@section MS-Windowsでの\@code\{ls\}のエミュレーション/;
s/\@section HOME and Startup Directories on MS-Windows$/\@section MS-Windowsでのホームと開始ディレクトリー/;
s/\@section Keyboard Usage on MS-Windows$/\@section MS-Windowsでのキーボードの使用方法/;
s/\@section Mouse Usage on MS-Windows$/\@section MS-Windowsでのマウスの使用方法/;
s/\@section Subprocesses on Windows 9X\/ME and Windows NT\/2K\/XP$/\@section Windows 9X\/MEおよびWindows NT\/2000\/XPでのサブプロセス/;
s/\@section Printing and MS-Windows$/\@section MS-Windowsでの印刷/;
s/\@section Specifying Fonts on MS-Windows$/\@section MS-Windowsでのフォント指定/;
s/\@section Miscellaneous Windows-specific features$/\@section その他のWindows固有の機能/;' -i msdog.texi 

perl -pe '
s/\@section Emacs and MS-DOS$/\@section EmacsとMS-DOS/;
s/\@subsection Keyboard Usage on MS-DOS$/\@subsection MS-DOSでのキーボードの使用方法/;
s/\@subsection Mouse Usage on MS-DOS$/\@subsection MS-DOSでびマウスの使用方法/;
s/\@subsection Display on MS-DOS$/\@subsection MS-DOSでの表示/;
s/\@subsection File Names on MS-DOS$/\@subsection MS-DOSでのファイル名/;
s/\@subsection Printing and MS-DOS$/\@subsection 印刷とMS-DOS/;
s/\@subsection International Support on MS-DOS$/\@subsection MS-DOSでの国際化サポート/;
s/\@subsection Subprocesses on MS-DOS$/\@subsection MS-DOSでのサブプロセス/;' -i msdog-xtra.texi 
