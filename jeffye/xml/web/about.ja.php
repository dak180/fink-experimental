<?
$title = "Fink とは";
$cvs_author = '$Author: babayoshihiko $';
$cvs_date = '$Date: 2004/03/03 13:28:12 $';

include "header.inc";
?>


<h1>Fink について</h1>

<h2>Fink とは何ですか?</h2>

<p>
Fink は 
<a href="http://www.opensource.org/">Open Source</a> ソフトウェアなどの Unix の世界を
<a href="http://www.opensource.apple.com/">Darwin</a> や
<a href="http://www.apple.com/macosx/">Mac OS X</a>
で使えるようにするためのプロジェクトです。
これを達成するために、二つのゴールを設定しています。

一つ目のゴールは、オープンソースの Unix ソフトウェアを、 Mac OS X 上でコンパイルと実行するために必要な修正を行ないます。 
(この作業をポートと言います。)
二つ目のゴールは、成果を普通のユーザーが使える形にすることです。 
(この作業をパッケージングと言います。)
我々は、コンパイル済みのバイナリパッケージと自動化されたソースからのビルドシステムを提供します。
</p>
<p>
このために我々は、 <a href="http://www.debian.org/">Debian</a> プロジェクトで使われている 
<code>dpkg</code>, <code>dselect</code> , <code>apt-get</code>.
という パッケージ管理ツールを使っています。
この上に Fink は独自のパッケージマネージャである <code>fink</code> を追加しています。
<code>fink</code> は .deb パッケージのファイルを作成するビルドエンジンとして考えることもできます。
この途中で、オリジナルのソースをインターネットからダウンロードし、必要に応じてパッチを当てます。
そして、パッケージの設定からビルドまでを行います。
最後に、できたパッケージアーカイブを <code>dpkg</code> 
</p>
<p>
Fink は Mac OS X 上で動作するよう設計されているため、基本システムとのインターフェイスを極力避けるポリシーにのっとっています。
結果として、 Fink は独立したディレクトリツリーを採用し、簡単に使えるようにしました。
</p>


<h2>なぜ Fink を使うのですか?</h2>

<p>
Fink で Unix ソフトウェアをインストールするには５つの理由があります。:
</p>

<p>
<b>パワー</b>
Mac OS X には基本的なコマンドラインしか含まれていません。
Fink は Linux や他の Unix 用に開発された様々なツールやグラフィカルなアプリケーションを提供します。
</p>

<p>
<b>利便性</b>
Fink ではコンパイルは完全に自動化されています。
Makefile や configure などのパラメータを気にする必要は一切ありません。
依存性システムは自動的に必要なライブラリがあるか確認します。
通常、パッケージはなるべく多くの機能を含むように設定されます。
</p>

<p>
<b>安全性</b>
Fink は、厳密な不干渉ポリシーによって、 Mac OS X の脆弱な部分は触りません。
Mac OS X をアップデートすることも、 Fink を更新することも、全く問題なく行うことができます。
パッケージシステムは、不要となったソフトウェアの削除も安全に行います。
</p>

<p>
<b>統一感</b>
Fink は雑多なパッケージの集合ではありません。
統一されたディストリビューションです。
インストールされたファイルは予想できる場所にあり、ドキュメントも常に最新です。
サーバープロセスの制御には統合されたインターフェイスが用意されているだけでなく、優秀な裏方に徹しています。
</p>

<p>
<b>柔軟性</b>
必要なプログラムだけをダウンロードしてインストールします。
XFree86 や他の X11 を使うこともできます。
X11 を使いたくない場合、なくても動作するよう設計されています。
</p>


<p>
<a href="index.php">ホームに戻る</a> -
<a href="download/index.php">ダウンロード</a>
</p>


<?
include "footer.inc";
?>