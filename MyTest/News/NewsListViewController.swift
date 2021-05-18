//
//  NewsListViewController.swift
//  MyTest
//
//  Created by Restu Suryo Pratomo on 18/05/21.
//

import UIKit

class NewsListViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    private var dataArticles: [AnyHashable: Any] = [:]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        // Do any additional setup after loading the view.
        
        let cellNib = UINib(nibName:"ListNewsTableViewCell", bundle: nil)
        self.tableView.register(cellNib, forCellReuseIdentifier: "ListNewsTableViewCell")
        if let url = URL(string: "https://newsapi.org/v2/top-headlines?country=id&apiKey=1b80a3f34bf24bbfa515d9a34fa33d64") {
            URLSession.shared.dataTask(with: url){data, response, error in
                
                guard let data = data, let jsonString = String(data: data, encoding: .utf8), let articelsData:Data = jsonString.data(using: .utf8), let articles = try? JSONSerialization.jsonObject(with: articelsData, options: []) as? [AnyHashable:Any] else{
                   return
                }
               print("articles \(articles)")
                self.dataArticles = articles
            }.resume()
        }
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}


extension NewsListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = self.tableView.dequeueReusableCell(withIdentifier: "ListNewsTableViewCell") as? ListNewsTableViewCell {
            cell.newsTitle.text = ""
            cell.newsContent.text = ""
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArticles.count
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
            return 1
        }
}
