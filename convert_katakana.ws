map = [
    "ア" :"A",
    "イ" :"I",
    "ウ" :"U",
    "エ" :"E",
    "オ" :"O",
    "カ" :"KA",
    "キ" :"KI",
    "ク" :"KU",
    "ケ" :"KE",
    "コ" :"KO",
    "サ" :"SA",
    "シ" :"SHI",
    "ス" :"SU",
    "セ" :"SE",
    "ソ" :"SO",
    "タ" :"TA",
    "チ" :"CHI",
    "ツ" :"TSU",
    "テ" :"TE",
    "ト" :"TO",
    "ナ" :"NA",
    "ニ" :"NI",
    "ヌ" :"NU",
    "ネ" :"NE",
    "ノ" :"NO",
    "ハ" :"HA",
    "ヒ" :"HI",
    "フ" :"FU",
    "ヘ" :"HE",
    "ホ" :"HO",
    "マ" :"MA",
    "ミ" :"MI",
    "ム" :"MU",
    "メ" :"ME",
    "モ" :"MO",
    "ヤ" :"YA",
    "ユ" :"YU",
    "ヨ" :"YO",
    "ラ" :"RA",
    "リ" :"RI",
    "ル" :"RU",
    "レ" :"RE",
    "ロ" :"RO",
    "ワ" :"WA",
    "ヰ" :"I",
    "ヱ" :"E",
    "ヲ" :"O",
    "ン" :"N",
    "ヴ" :"V",
    "ガ" :"GA",
    "ギ" :"GI",
    "グ" :"GU",
    "ゲ" :"GE",
    "ゴ" :"GO",
    "ザ" :"ZA",
    "ジ" :"JI",
    "ズ" :"ZU",
    "ゼ" :"ZE",
    "ゾ" :"ZO",
    "ダ" :"DA",
    "ヂ" :"JI",
    "ヅ" :"ZU",
    "デ" :"DE",
    "ド" :"DO",
    "バ" :"BA",
    "ビ" :"BI",
    "ブ" :"BU",
    "ベ" :"BE",
    "ボ" :"BO",
    "パ" :"PA",
    "ピ" :"PI",
    "プ" :"PU",
    "ペ" :"PE",
    "ポ" :"PO",
    "キャ" :"KYA",
    "キュ" :"KYU",
    "キョ" :"KYO",
    "シャ" :"SHA",
    "シュ" :"SHU",
    "ショ" :"SHO",
    "チャ" :"CHA",
    "チュ" :"CHU",
    "チョ" :"CHO",
    "ニャ" :"NYA",
    "ニュ" :"NYU",
    "ニョ" :"NYO",
    "ヒャ" :"HYA",
    "ヒュ" :"HYU",
    "ヒョ" :"HYO",
    "ミャ" :"MYA",
    "ミュ" :"MYU",
    "ミョ" :"MYO",
    "ギャ" :"GYA",
    "ギュ" :"GYU",
    "ギョ" :"GYO",
    "ジャ" :"JA",
    "ジュ" :"JU",
    "ジョ" :"JO",
    "ヂャ" :"JA",
    "ヂュ" :"JU",
    "ヂョ" :"JO",
    "ビャ" :"BYA",
    "ビュ" :"BYU",
    "ビョ" :"BYO",
    "ピャ" :"PYA",
    "ピュ" :"PYU",
    "ピョ" :"PYO",
    "ファ" :"FA",
    "ァ" :"A",
    "ィ" :"I",
    "ゥ" :"U",
    "ェ" :"E",
    "ォ" :"O",
    "ッ" :"T",
]

name = convert_kana('たなか', 'KC')

translation = ''

for (letter in name) {
    if (map.has(letter)) {
        translation = translation + map[letter]
    }
}

dump(translation)