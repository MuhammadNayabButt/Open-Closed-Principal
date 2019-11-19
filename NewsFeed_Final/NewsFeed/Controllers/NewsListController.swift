//
//  NewsListController.swift
//  OCP
//
//  Created by Nayab Butt on 05/11/2019.
//  Copyright © 2019 Nayab Butt. All rights reserved.
//

import UIKit

class NewsListController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var newsCollection : NewsCollectionInterface?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsCollection?.getPosts()?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  : NewsCell? = tableView.dequeueReusableCell(withIdentifier: "NewsCell", for: indexPath) as? NewsCell
        cell?.news = self.newsCollection?.getPosts()?[indexPath.row]
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let news = self.newsCollection?.getPosts()?[indexPath.row]
        self.performSegue(withIdentifier: "goToDetail", sender: news)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDetail" {
            let detailController = segue.destination as? DetailController
            detailController?.news = sender as? NewsInterface
        }
    }
    @IBOutlet weak var newsList: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchNews()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
//    func fetchNews()  {
//        guard let url = URL(string: "https://my-json-server.typicode.com/MuhammadNayabButt/Open-Closed-Principal/db") else {return}
//        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
//        guard let dataResponse = data,
//                  error == nil else {
//                  print(error?.localizedDescription ?? "Response Error")
//                  return }
//            do{
//                //here dataResponse received from a network request
//                let jsonResponse = try JSONSerialization.jsonObject(with:
//                                       dataResponse, options: [])
//                let jsonDecoder = JSONDecoder()
//                print(jsonResponse) //Response result
//                self.newsCollection  = try jsonDecoder.decode(NewsCollection.self, from: dataResponse)
//
//                DispatchQueue.main.async {
//                    self.newsList.reloadData()
//                }
//
//             } catch let parsingError {
//                print("Error", parsingError)
//           }
//        }
//        task.resume()
//    }
    
    func fetchNews()  {
        guard let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=ac13e25687174ec9b34058e6651725b2") else {return}

        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let dataResponse = data,
                error == nil else {
                    print(error?.localizedDescription ?? "Response Error")
                    return }
            do{
                //here dataResponse received from a network request
                let jsonResponse = try JSONSerialization.jsonObject(with:
                    dataResponse, options: [])
                let jsonDecoder = JSONDecoder()
                print(jsonResponse) //Response result
                self.newsCollection  = try jsonDecoder.decode(ArticleCollection.self, from: dataResponse)

                DispatchQueue.main.async {
                    self.newsList.reloadData()
                }

            } catch let parsingError {
                print("Error", parsingError)
            }
        }
        task.resume()
    }

    

}
