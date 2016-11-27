=begin 

hash = { 
	wat: [
		[ {}, {}, { 
			wut: [ [ 0 ], [
				[ 0 , 1, 2, 3, 4, 5, 6, 7, 8, {	bbq: "bbq", art: "art" }]
				] 
				] 
				}] 
		]
}

puts hash[:wat][2][:wut][1][0][9][:bbq]
=end


arr = [[0,1,2,3,4,{
	secret: {
		unlock: [0,"Hello"]
		} }]]

#puts arr[0][5][:secret][:unlock][1].class
puts arr[0][5][:secret][:unlock][1]