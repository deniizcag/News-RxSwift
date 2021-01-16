//
//  NewsViewModel.swift
//  News-RxSwift
//
//  Created by DenizCagilligecit on 12.01.2021.
//  Copyright © 2021 Deniz Cagilligecit. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa


class NewsViewModel {
    var news = BehaviorRelay<[News]>(value: [])
    
    func fetchNews() {
        
        let response = Bundle.main.decode(NewsArticles.self, from: "sample.json")
        news.accept(response.articles)
        
    }
    
}



