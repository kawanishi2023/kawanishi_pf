# サイト名  
song writers（仮）

# サイト概要  
楽曲の情報（コード進行や歌詞）を、非公開と公開の２通りで共有することができるツールサイト。

# サイトテーマ  
楽曲の情報（コード進行や歌詞）などの情報共有ツール。  
投稿のステータスは2つに分ける。  
* **非公開**（閲覧にはログインが必要 IDPWを共有することで楽曲情報が共有できる）  
* **公開**（ログインしなくても閲覧可能 IDPWを知らない人とも楽曲情報共有ができる）  

# テーマを選んだ理由  
セッションや作曲時に楽曲情報を共有する決まったツールがないため。  
現状、googledriveやtrelloなど様々な方法で作曲や楽曲の共有をしている。  
バンドによって手法が違うのが面倒なので、情報が一つに集約できれば楽だと感じたため。  

# ターゲットユーザー  
* オリジナル楽曲を作成しているバンド及び活動者
* シンガーソングライター
* 楽曲アレンジをする人
* セッションする人
* 音楽関連部活などの団体　など  

# 主な利用シーン  
楽曲情報を共有するあらゆる場面で使用できます。具体例は下記の通り。
* 作曲時
* セッション前に事前に曲情報を共有しておきたい時
* 部活動などで課題曲を共有するとき
* オーディションなどで事前に曲情報を提出する時　など

# 類似サイト  
Uフレット( https://www.ufret.jp/ )  
特徴：楽曲情報を一般公開することに特化している。一般公開のみ。同じ曲の情報が複数存在しない。原曲情報のみ。気軽に投稿ができない。有料会員のみ投稿編集ができる。無料使用だと広告がすごく多い。 

# 類似サイトと比較した本サイトの特徴  
song writers（仮）  
特徴：楽曲情報を特定の人に公開することに特化している。楽曲を共有する使用方法が非公開・公開の２通りある。  
* **ログイン状態での使用(非公開)・・・固定バンドや部活など固定のメンバーでの使用を想定**  
ログイン権限内で楽曲情報を保管する方法。  
ログインユーザーには編集権限も付与するため、メンバー内でID PWを共有することで全員で１つのデータを編集し、共同作曲にも使用できる。  
* **ログインせずに使用(公開)・・・セッションなどアカウントを共有しない人への共有を想定**  
ID PWなしでに楽曲情報を閲覧可能。ログイン情報を持たない人への共有する際に使用。  
盗作防止のため、一覧での公開はせず、合言葉等の検索でのみヒットする形式を検討  
（使用例：メンバー募集の顔合わせ前の事前楽曲共有/作曲者が１人の場合/セッションでの事前共有での使用/youtubeでのアレンジ動画に対するコード公開など）  

# 類似サイトとの差別化  
ターゲット層が有名曲のコードを見たい人ではなく、曲を作成したい、共有したい人向き。  
一般公開が合言葉検索方式で、一覧方式ではない。  
同曲制限など、投稿の制限がないためUフレットより、投稿に関するハードルが低い。個人制作色が強い。  
バンド内共有ツールとして非公開ステータスで楽曲を貯めていく使い方もできる。  

# 楽曲情報に含まれる情報  
* 曲名
* アーティスト名
* ジャンル
* Capo位置（ギター用）
* BPM
* 曲の主音（キー）
* コード進行と歌詞
* 音源データなどの関係データの添付（任意）
* 合言葉（一般公開の場合のみ使用）
* 公開/非公開

# 余力があれば実装したい機能  
楽曲情報ページ毎にQRコードを生成し、合言葉以外でもQRコードで楽曲の共有ができるようにする。  
もしくは共有用コピペテンプレートを作成する。

# 開発環境
* OS：Linux(CentOS)
* 言語：HTML,CSS,JavaScript,Ruby,SQL
* フレームワーク：Ruby on Rails
* JSライブラリ：jQuery
* IDE：Cloud9

# 使用素材
外部サービスの画像素材・音声素材を使用した場合は、必ずサービス名とURLを明記してください。  
使用しない場合は、使用素材の項目をREADMEから削除してください。  
 
# ロゴ作成
canva(https://www.canva.com/)にてロゴ作成予定
