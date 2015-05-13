//
//  ArticleHeader.swift
//  KRLX
//
//  Created by Josie Bealle on 13/05/2015.
//  Copyright (c) 2015 KRLXpert. All rights reserved.
//

class ArticleHeader {
    var author : String
    var title : String
    var date : [String]
    var url : String
    let months = ["JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC"]
    init(){
        self.author = ""
        self.title = ""
        self.url = ""
        self.date = [""]
        self.url = ""
    }
    
    init (authorString: String, titleString: String, dateString: String, urlString: String){
        self.author = authorString
        self.title = titleString
        self.url = urlString
        
        var dateArr = split(dateString) {$0 == "-"}
        var monthNum = dateArr[1].toInt()! - 1
        let monthstr = self.months[monthNum]
        
        //[day, MONTH,  year]: ex. ["21", "DEC", "1993"]
        self.date = [dateArr[2], monthstr, dateArr[0]]
        
    }
    func getTitle() -> String{
        return self.title
    }
    func getAuthor() -> String{
        return self.author
    }
    func getDate() -> [String]{
        return self.date
    }
    func getURL() -> String{
        return self.url
    }

}