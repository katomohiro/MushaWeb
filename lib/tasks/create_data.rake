namespace :create_data do
  desc "あらかじめいれておくべきデータをDBに作成" 

# heroku run rake create_data:do のように使う

  task :do => :environment do
    # industry
    industries = [
      "IT・インターネット",
      "メーカー",
      "商社",
      "流通・小売・サービス",
      "コンサルティング",
      "マスコミ・メディア",
      "エンターテインメント",
      "金融",
      "建設・不動産",
      "メディカル",
      "インフラ",
      "その他（教育・官公庁）",
     ]
    
    industries.each do |industry|
      Industry.create(name: industry)
    end

    # occupation
    occupations = [
      "経営",
      "管理",
      "マーケティング",
      "営業",
      "コンサルタント",
      "ITコンサルタント",
      "専門職",
      "IT・インターネット",
      "ゲーム",
      "電気・電子",
      "半導体",
      "機械",
      "化学・化粧品・食品",
      "金融",
      "メディカル",
      "建設・不動産",
     ]
    
    occupations.each do |occupation|
      Occupation.create(name: occupation)
    end
    # area
    hokkaido = ["北海道"]
    tohoku = ["青森県", "岩手県", "宮城県", "秋田県", "山形県", "福島県"]
    kanto = ["茨城県", "栃木県", "群馬県", "埼玉県", "千葉県", "東京都", "神奈川県",]
    hokuriku = ["新潟県","富山県", "石川県", "福井県"]
    chubu = ["山梨県", "長野県", "岐阜県", "静岡県", "愛知県","三重県"]
    kinki = ["滋賀県", "京都府", "大阪府", "兵庫県", "奈良県", "和歌山県"]
    chugoku = ["鳥取県", "島根県", "岡山県", "広島県", "山口県"]
    sikoku = ["徳島県", "香川県", "愛媛県","高知県"]
    kyushu = ["福岡県", "佐賀県", "長崎県", "熊本県", "大分県", "宮崎県", "鹿児島県","沖縄県"]
    
    regions = ["北海道","東北","関東","北陸","中部","近畿","中国","四国","九州"]
    areas = [hokkaido,tohoku,kanto,hokuriku,chubu,kinki,chugoku,sikoku,kyushu]
    
    areas.each_with_index do |region, num|
      region.each do |area|
        Area.create(region: region[num], name: area)
      end
    end
    
  end
  
end