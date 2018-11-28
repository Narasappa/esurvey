# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


 states= { 'AP' => 'Andhra Pradesh',
 'AR' => 'Arunachal Pradesh',
 'AS' => 'Assam',
 'BR' => 'Bihar',
 'CT' => 'Chhattisgarh',
 'GA' => 'Goa',
 'GJ' => 'Gujarat',
 'HR' => 'Haryana',
 'HP' => 'Himachal Pradesh',
 'JK' => 'Jammu & Kashmir',
 'JH' => 'Jharkhand',
 'KA' => 'Karnataka',
 'KL' => 'Kerala',
 'MP' => 'Madhya Pradesh',
 'MH' => 'Maharashtra',
 'MN' => 'Manipur',
 'ML' => 'Meghalaya',
 'MZ' => 'Mizoram',
 'NL' => 'Nagaland',
 'OR' => 'Odisha',
 'PB' => 'Punjab',
 'RJ' => 'Rajasthan',
 'SK' => 'Sikkim',
 'TN' => 'Tamil Nadu',
 'TR' => 'Tripura',
 'UK' => 'Uttarakhand',
 'UP' => 'Uttar Pradesh',
 'WB' => 'West Bengal', 
 'AN' => 'Andaman & Nicobar',
 'CH' => 'Chandigarh',
 'DN' => 'Dadra and Nagar Haveli',
 'DD' => 'Daman & Diu',
 'DL' => 'Delhi',
 'LD' => 'Lakshadweep',
 'PY' => 'Puducherry'}

 #states.each { |key,value|
 
# State.create(:state_name=>value,:state_code=> key)
 #}


 mp_constituency =[
'Bagalkot',
 'Bangalore Central',
 'Bangalore North',
 'Bangalore Rural',
 'Bangalore South',
 'Belgaum',
 'Bellary',
 'Bidar',
 'Bijapur',
 'Chamarajanagar',
 'Chikballapur',
 'Chikkodi',
 'Chitradurga',
 'Dakshina Kannada',
 'Davanagere',
 'Dharwad',
 'Gulbarga',
 'Hassan',
 'Haveri',
 'Kolar',
 'Koppal',
 'Mandya',
 'Mysore',
 'Raichur',
 'Shimoga',
 'Tumkur',
 'Udupi Chikmagalur',
 'Uttara Kannada']
#mp_constituency.each do |cnmae|
 #MpConstituency.create(:constituency_name=>cnmae,:state_id=>12)
#end


mla_constituencies=[
'Afzalpur',
 'Aland',
 'Anekal',
 'Arabhavi',
 'Arkalgud',
 'Arsikere',
 'Athani',
 'Aurad',
 'B.T.M. Layout',
 'Babaleshwar',
 'Badami',
 'Bagalkot',
 'Bagepalli',
 'Bailhongal',
 'Bangalore South',
 'Bangarapet',
 'Bantval',
 'Basavakalyan',
 'Basavana Bagevadi',
 'Basavanagudi',
 'Belgaum Dakshin',
 'Belgaum Rural',
 'Belgaum Uttar',
 'Bellary',
 'Bellary City',
 'Belthangady',
 'Belur',
 'Bhadravati',
 'Bhalki',
 'Bhatkal',
 'Bidar',
 'Bidar South',
 'Bijapur City',
 'Bilgi',
 'Bommanahalli',
 'Byadgi',
 'Byatarayanapura',
 'Byndoor',
 'C. V. Raman Nagar',
 'Challakere',
 'Chamaraja',
 'Chamrajanagar',
 'Chamrajpet',
 'Chamundeshwari',
 'Channagiri',
 'Channapatna',
 'Chickpet',
 'Chikkaballapur',
 'Chikkodi-Sadalga',
 'Chikmagalur',
 'Chiknayakanhalli',
 'Chincholi',
 'Chintamani',
 'Chitradurga',
 'Chittapur',
 'Dasarahalli',
 'Davanagere North',
 'Davanagere South',
 'Devadurga',
 'Devanahalli',
 'Devar Hippargi',
 'Dharwad',
 'Doddaballapur',
 'Gadag',
 'Gandhi Nagar',
 'Gangawati',
 'Gauribidanur',
 'Gokak',
 'Govindraj Nagar',
 'Gubbi',
 'Gulbarga Dakshin',
 'Gulbarga Rural',
 'Gulbarga Uttar',
 'Gundlupet',
 'Gurmitkal',
 'Hadagalli',
 'Hagaribommanahalli',
 'Haliyal',
 'Hangal',
 'Hanur',
 'Harapanahalli',
 'Harihar',
 'Hassan',
 'Haveri',
 'Hebbal',
 'Heggadadevankote',
 'Hirekerur',
 'Hiriyur',
 'Holalkere',
 'Holenarasipur',
 'Homnabad',
 'Honnali',
 'Hosadurga',
 'Hosakote',
 'Hubli-Dharwad-Central',
 'Hubli-Dharwad-East',
 'Hubli-Dharwad-West',
 'Hukkeri',
 'Hungund',
 'Hunsur',
 'Indi',
 'Jagalur',
 'Jamkhandi',
 'Jayanagar',
 'Jevargi',
 'K. R. Pura',
 'Kadur',
 'Kagwad',
 'Kalghatgi',
 'Kampli',
 'Kanakagiri',
 'Kanakapura',
 'Kaup',
 'Karkal',
 'Karwar',
 'Khanapur',
 'Kittur',
 'Kolar',
 'Kolar Gold Field',
 'Kollegal',
 'Koppal',
 'Koratagere',
 'Krishnaraja',
 'Krishnarajanagara',
 'Krishnarajpet',
 'Kudachi',
 'Kudligi',
 'Kumta',
 'Kundapura',
 'Kundgol',
 'Kunigal',
 'Kushtagi',
 'Lingsugur',
 'Maddur',
 'Madhugiri',
 'Madikeri',
 'Magadi',
 'Mahadevapura',
 'Mahalakshmi Layout',
 'Malavalli',
 'Malleshwaram',
 'Malur',
 'Mandya',
 'Mangalore',
 'Mangalore City South',
 'Mangalore City North',
 'Manvi',
 'Maski',
 'Mayakonda',
 'Melukote',
 'Molakalmuru',
 'Moodabidri',
 'Muddebihal',
 'Mudhol',
 'Mudigere',
 'Mulbagal',
 'Nagamangala',
 'Nagthan',
 'Nanjangud',
 'Narasimharaja',
 'Nargund',
 'Navalgund',
 'Nelamangala',
 'Nippani',
 'Padmanaba Nagar',
 'Pavagada',
 'Periyapatna',
 'Pulakeshinagar',
 'Puttur',
 'Raichur',
 'Raichur Rural',
 'Rajaji Nagar',
 'Rajarajeshwarinagar',
 'Ramanagaram',
 'Ramdurg',
 'Ranibennur',
 'Raybag',
 'Ron',
 'Sagar',
 'Sakleshpur',
 'Sandur',
 'Sarvagnanagar',
 'Saundatti Yellamma',
 'Sedam',
 'Shahapur',
 'Shanti Nagar',
 'Shiggaon',
 'Shikaripura',
 'Shimoga',
 'Shimoga Rural',
 'Shirahatti',
 'Shivajinagar',
 'Shorapur',
 'Shravanabelagola',
 'Shrirangapattana',
 'Sidlaghatta',
 'Sindgi',
 'Sindhanur',
 'Sira',
 'Sirsi',
 'Siruguppa',
 'Sorab',
 'Sringeri',
 'Srinivaspur',
 'Sullia',
 'T.Narasipur',
 'Tarikere',
 'Terdal',
 'Tiptur',
 'Tirthahalli',
 'Tumkur City',
 'Tumkur Rural',
 'Turuvekere',
 'Udupi',
 'Varuna',
 'Vijaynagar',
 'Vijayanagara',
 'Virajpet',
 'Yadgiri',
 'Yelahanka',
 'Yelburga',
 'Yellapur',
 'Yemkanmardi',
 'Yeshvanthapura']

 #mla_constituencies.each do |mla|
 # MlaConstituency.create(:constituency_name=>mla,:state_id=>12)
 #end



  mla_towns=['Aladakatti',
 'Aralihonda',
 'Arebasankoppa',
 'Astakatti',
 'B.Shigigatti',
 'Bagadageri',
 'Bammigatti',
 'Bangittigudihal',
 'Basavarsikoppa',
 'Beeravalli',
 'Begur',
 'Belavantra',
 'Bendalgatti',
 'Bhogenagarkoppa',
 'Bisaralli',
 'Bullanaikanahulikatti',
 'Chalamatti',
 'Dasanur',
 'Dastikoppa',
 'Devalingikoppa',
 'Devikoppa',
 'Dhulikoppa',
 'Dhummawad',
 'Dimbavalli',
 'Dyamapur',
 'Dyavankonda',
 'G. Basavankoppa',
 'Galagi',
 'Galaginakatti',
 'Gambyapur',
 'Ganjigatti',
 'Guddad Hulikatti',
 'Hanamapur',
 'Harogeri',
 'Hasarambi',
 'Hatakinhal',
 'Hindasgeri',
 'Hirehonnihalli',
 'Hulaginakoppa',
 'Hulakoppa',
 'Hullambi',
 'Jammihal',
 'Jinnur',
 'Junjanbail',
 'K. Hunishikatti',
 'Kadankoppa',
 'Kalakundi',
 'Kamadhenu',
 'Kandli',
 'Kannenaikankoppa',
 'Karlakoppa',
 'Kudalgi',
 'Kurankoppa',
 'Lingankoppa',
 'Madkihonnihalli',
 'Malkankoppa',
 'Masalikatti',
 'Mishrikoti',
 'Mukkall',
 'Muttagi',
 'Naganur',
 'Neerasagar',
 'Nehru Nagar',
 'Nelliharvi',
 'Parasapur',
 'Rajajinagar',
 'Rajivanagar',
 'Ramanal',
 'Rangapur',
 'Sangameshwar',
 'Sangatikoppa',
 'Sangedevarkoppa',
 'Shiddanabhavi',
 'Shivanagar',
 'Shivanapur',
 'Singanahalli',
 'Solargoppa',
 'Somanakoppa',
 'Sulikatti',
 'Surasettikoppa',
 'Tabakadhonnihalli',
 'Tambur',
 'Tavargeri',
 'Tumarikoppa',
 'Ugginakeri',
 'Yalavadal',
 'Yammihatti']
 mla_towns.each do |mla_town|
  #MlaTown.create(:town_name=>mla_town,:state_id=>12,:mla_constituency_id=>109)
 end

 params = {"interview"=>{"name"=>"10b", "mobile_number"=>"10b", "voter_id"=>"10c", "survey_id"=>"6", "mla_town_id"=>"1", "user_id"=>"7", "survey_results_attributes"=>{"0"=>{"question_id"=>"31", "survey_marks"=>"1"}, "1"=>{"question_id"=>"32", "survey_marks"=>"2"}, "2"=>{"question_id"=>"33", "survey_marks"=>"3"}, "3"=>{"question_id"=>"34", "survey_marks"=>"4"}, "4"=>{"question_id"=>"35", "survey_marks"=>"5"}, "5"=>{"question_id"=>"41", "survey_marks"=>"6"}, "6"=>{"question_id"=>"42", "survey_marks"=>"7"}, "7"=>{"question_id"=>"43", "survey_marks"=>"8"}, "8"=>{"question_id"=>"44", "survey_marks"=>"9"}, "9"=>{"question_id"=>"45", "survey_marks"=>"10"}}}}
 
 	#MlaTown.all.each do |mla_town|
 	#	for i in 1..10
  #params["interview"]['mla_town_id'] = mla_town.id
  #@interview = Interview.new(params["interview"])
  #@interview.save
  #end
 #end

 params = {"interview"=>{"name"=>"10 merit scaled", "mobile_number"=>"10 merit scaled", "voter_id"=>"10 merit scaled", "survey_id"=>"8", "mla_town_id"=>"1", "user_id"=>"7", "survey_results_attributes"=>{"0"=>{"question_id"=>"46", "survey_marks"=>"1"}, "1"=>{"question_id"=>"47", "survey_marks"=>"1"}, "2"=>{"question_id"=>"48", "survey_marks"=>"1"}, "3"=>{"question_id"=>"49", "survey_marks"=>"1"}, "4"=>{"question_id"=>"50", "survey_marks"=>"1"}, "5"=>{"question_id"=>"51", "survey_marks"=>"0"}, "6"=>{"question_id"=>"52", "survey_marks"=>"0"}, "7"=>{"question_id"=>"53", "survey_marks"=>"0"}, "8"=>{"question_id"=>"54", "survey_marks"=>"0"}, "9"=>{"question_id"=>"55", "survey_marks"=>"0"}}}}
 MlaTown.all.each do |mla_town|
 		for i in 1..10
  params["interview"]['mla_town_id'] = mla_town.id
  @interview = Interview.new(params["interview"])
  @interview.save
  end
end