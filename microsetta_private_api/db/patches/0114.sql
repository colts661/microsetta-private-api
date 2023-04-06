-- Update translations for survey questions
UPDATE ag.survey_question SET japanese = 'どれくらいの頻度でプロバイオティクスや乳酸菌を服用していますか？' WHERE american = 'How frequently do you take a probiotic?';
UPDATE ag.survey_question SET japanese = 'どれくらいの頻度でビタミンB複合体、葉酸塩または葉酸を服用していますか？' WHERE american = 'How frequently do you take Vitamin B complex, folate or folic acid?';
UPDATE ag.survey_question SET japanese = '抗生物質を投与された動物の肉／乳製品を食べますか？' WHERE american = 'Do you eat meat/dairy products from animals treated with antibiotics?';
UPDATE ag.survey_question SET japanese = '私は過去____の間に居住国以外に旅行したことがある。' WHERE american = 'I have traveled outside of my country of residence in the past _________.';
UPDATE ag.survey_question SET japanese = 'あなたの同居人でこの研究に参加している人はいますか？' WHERE american = 'Are any of your roommates participating in this study?';
UPDATE ag.survey_question SET japanese = '水泳用プール／お風呂の使用頻度を教えてください。' WHERE american = 'How often do you use a swimming pool/hot tub?';
UPDATE ag.survey_question SET japanese = '私は過去___の間に抗生物質を服用しました。' WHERE american = 'I have taken antibiotics in the last ____________.';
UPDATE ag.survey_question SET japanese = '私は過去___の間にインフルエンザのワクチンを接種しました。' WHERE american = 'I have received a flu vaccine in the last ____________.';
UPDATE ag.survey_question SET japanese = '怖い夢や悪夢を見ることがありますか？' WHERE american = 'Do you have vivid and/or frightening dreams?';
UPDATE ag.survey_question SET japanese = '1週間のうち、1日に全粒粉を2食分以上を摂取する頻度はどのくらいですか？ （1食分＝100％全粒粉パン1枚、高繊維シリアル、オートミールなどの全粒シリアル1カップ、全粒クラッカー3～4枚、玄米や全粒パスタ1/2カップ）' WHERE american = 'In an average week, how often do you eat at least 2 servings of whole grains in a day?';
UPDATE ag.survey_question SET japanese = '1日に2～3食分以上の果物を摂取する頻度はどのくらいですか？ (1食分 =　果物1/2カップ、中くらいの大きさの果物1個、4 オンスの100%フルーツジュース)。' WHERE american = 'In an average week, how often to you consume at least 2-3 servings of fruit in a day?  (1 serving = 1/2 cup fruit; 1 medium sized fruit; 4 oz. 100% fruit juice.)';
UPDATE ag.survey_question SET japanese = '1週間のうち、1日に2-3食分以上のでんぷん質野菜と非でんぷん質野菜を摂取する頻度はどのくらいですか？でんぷん質野菜の例としては、白イモ、トウモロコシ、エンドウ豆、キャベツなどが挙げられます。非でんぷん質野菜の例としては、生の葉野菜、キュウリ、トマト、ピーマン、ブロッコリー、ケールなどがあります。（ 1食分＝野菜/じゃがいも1/2カップ、生の葉野菜1カップ）' WHERE american = 'In an average week, how often do you consume at least 2-3 servings of starchy and non-starchy vegetables. Examples of starchy vegetables include white potatoes, corn, peas and cabbage.  Examples of non-starchy vegetables include raw leafy greens, cucumbers, tomatoes, peppers, broccoli, and kale. (1 serving = ½ cup vegetables/potatoes; 1 cup leafy raw vegetables)';
UPDATE ag.survey_question SET japanese = '1 週間に何種類の植物（野菜、果物、穀物）を食べますか?例えばにんじん、じゃがいも、玉ねぎが入ったスープを消費した場合、 3 種類の野菜とみなします。多穀物パンを消費した場合、それぞれの穀物を数えてください。' WHERE american = 'In an average week, how many different plant species do you eat? e.g. If you consume a can of soup that contains carrots, potatoes, and onion, you can count this as 3 different plants; If you consume multi-grain bread, each different grain counts as a plant.';
UPDATE ag.survey_question SET japanese = '１週間のうち、1日に2食分以上の牛乳やチーズを摂取する頻度はどのくらいですか？（ 1食分＝牛乳またはヨーグルト1カップ、チーズ1.5～2オンス）' WHERE american = 'In an average week, how often do you consume at least 2 servings of milk or cheese a day?  (1 serving = 1 cup milk or yogurt; 1 1/2 - 2 ounces cheese)';
UPDATE ag.survey_question SET japanese = 'あなたの微生物に関連する食習慣や生活習慣があれば記入してください。' WHERE american = 'Please write anything else about yourself that you think could affect your personal microorganisms.';
UPDATE ag.survey_question SET japanese = '過去____の間にビール、ワイン、アルコールを除いた発酵食品を摂取する頻度や量が大幅に（2倍以上）増加しました。' WHERE american = 'Excluding beer, wine, and alcohol, I have significantly increased (i.e. more than doubled) my intake of fermented foods in frequency or quantity within the last ____.';
UPDATE ag.survey_question SET japanese = '以下の発酵食品/飲料のいずれかを自宅で製造して摂取していますか？該当するものをすべて選択し、記載されていないものは「その他」にすべて記入してください。' WHERE american = 'Do you produce any of the following fermented foods/beverages at home for personal consumption? Check all that apply.';
UPDATE ag.survey_question SET japanese = 'その他、発酵食品について記載することがあればご記入ください。' WHERE american = 'Volunteer more information about this activity.';
UPDATE ag.survey_question SET japanese = '1週間のうち、ラード、バター、ギーはどれくらいの頻度で使用・調理していますか？' WHERE american = 'In a given week, how often do you use or cook with lard, butter or ghee?';
UPDATE ag.survey_question SET japanese = '1週間のうち、ココナッツオイル、パームオイル、パームカーネルオイルをどれくらいの頻度で使用していますか？' WHERE american = 'In a given week, how often do you use or cook with coconut, palm or palm kernel oil?';
UPDATE ag.survey_question SET japanese = '1週間のうち、マーガリンや植物性ショートニングをどれくらいの頻度で使用していますか？' WHERE american = 'In a given week, how often do you use or cook with margarine or (vegetable) shortening?';
UPDATE ag.survey_question SET japanese = 'ほうれん草、ふだん草、ビーツまたはビーツの葉、オクラ、キノア、アマランス、蕎麦、小麦ふすままたは胚芽、ふすまシリアル、チアシード、ルバーブ、ダークチョコレートやココア粉末（> 70％）、又はナッツ（アーモンド、ピーナッツ、ピーカン、カシュー、ヘーゼルナッツ）などのシュウ酸塩が豊富な食品を平均してどれくらいの頻度で摂取していますか? ' WHERE american = 'On average, how often do you consume oxalate-rich foods, such as spinach, Swiss chard, beetroot or beet greens, okra, quinoa, amaranth, buckwheat, wheat bran or germ, Bran cereal, chia seeds, rhubarb, dark chocolate or cocoa powder (>70%), and nuts such as almonds, peanuts, pecans, cashews, and hazelnuts?';


-- Update translations for survey responses
UPDATE ag.survey_response SET japanese = '不明' WHERE american = 'Unspecified';
UPDATE ag.survey_response SET japanese = '肉と野菜両方食べる' WHERE american = 'Omnivore';
UPDATE ag.survey_response SET japanese = '肉と野菜両方食べるが、赤身肉は食べない' WHERE american = 'Omnivore but do not eat red meat';
UPDATE ag.survey_response SET japanese = 'ベジタリアン（菜食主義）' WHERE american = 'Vegetarian';
UPDATE ag.survey_response SET japanese = 'ビーガン（完全菜食主義）' WHERE american = 'Vegan';
UPDATE ag.survey_response SET japanese = 'ペットボトル・ミネラルウォーター' WHERE american = 'Bottled';
UPDATE ag.survey_response SET japanese = 'ろ過水' WHERE american = 'Filtered';
UPDATE ag.survey_response SET japanese = '分からない' WHERE american = 'Not sure';
UPDATE ag.survey_response SET japanese = '私は1年以上現在地で暮らしている' WHERE american = 'I have lived in my current state of residence for more than a year.';
UPDATE ag.survey_response SET japanese = '1回未満' WHERE american = 'Less than one';
UPDATE ag.survey_response SET japanese = '1回' WHERE american = 'One';
UPDATE ag.survey_response SET japanese = '2回' WHERE american = 'Two';
UPDATE ag.survey_response SET japanese = '3回' WHERE american = 'Three';
UPDATE ag.survey_response SET japanese = '4回' WHERE american = 'Four';
UPDATE ag.survey_response SET japanese = '5回以上' WHERE american = 'Five or more';
UPDATE ag.survey_response SET japanese = '分からない' WHERE american = 'I don''t know, I do not have a point of reference';
UPDATE ag.survey_response SET japanese = '医療従事者（医師、医師助手）に診断されたことがある' WHERE american = 'Diagnosed by a medical professional (doctor, physician assistant)';
UPDATE ag.survey_response SET japanese = '代替医療の医師に診断されたことがある' WHERE american = 'Diagnosed by an alternative medicine practitioner';
UPDATE ag.survey_response SET japanese = '自己診断したことがある' WHERE american = 'Self-diagnosed';
UPDATE ag.survey_response SET japanese = '固形食と粉ミルク/母乳の両方を食べている' WHERE american = 'I eat both solid food and formula/breast milk';


UPDATE ag.survey_response SET japanese = '' WHERE american = '';
