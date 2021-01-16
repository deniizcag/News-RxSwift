//
//  ViewController.swift
//  News-RxSwift
//
//  Created by DenizCagilligecit on 12.01.2021.
//  Copyright © 2021 Deniz Cagilligecit. All rights reserved.
//

import UIKit
import RxSwift
class ViewController: UIViewController {
    

    let viewModel = NewsViewModel()
    let disposeBag = DisposeBag()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      subscribeViewModel()
       configureTableView()
    }
    
    func subscribeViewModel() {
        viewModel.news.subscribe { (events) in
            DispatchQueue.main.async {
                print(events)
                self.tableView.reloadData()
                
            }
        }.disposed(by: disposeBag)
        viewModel.fetchNews()
        
    }
    
    
    
    func configureTableView() {
        tableView.estimatedRowHeight = 250
        tableView.rowHeight = UITableView.automaticDimension
        tableView.delegate = self
        tableView.dataSource = self
    }


}
extension ViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.news.value.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let textCellIdentifier = "CustomCellIdentifier"

        let news = viewModel.news.value[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: textCellIdentifier,for: indexPath) as! CustomCell
        
        cell.configure(news: news)
        
        return cell
        
    }
   
   

    
}

