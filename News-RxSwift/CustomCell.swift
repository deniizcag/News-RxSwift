//
//  CustomCell.swift
//  News-RxSwift
//
//  Created by DenizCagilligecit on 14.01.2021.
//  Copyright © 2021 Deniz Cagilligecit. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
 
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
          super.awakeFromNib()
      }
    
    func configure(news: News) {
        self.titleLabel.text = news.title
        self.descriptionLabel.text = news.description
        
    }
   

}
