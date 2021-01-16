//
//  News.swift
//  News-RxSwift
//
//  Created by DenizCagilligecit on 12.01.2021.
//  Copyright © 2021 Deniz Cagilligecit. All rights reserved.
//

import Foundation

struct News: Decodable {
    var author: String?
    var title: String
    var description: String?
    var url: String
}
struct NewsArticles: Decodable {
    var articles: [News]
}
