//
//  ViewController.swift
//  Stone - Swift Test
//
//  Created by Lucas Pinto on 20/03/22.
//

import UIKit

class MainController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let info = ItemManager()
    var tyle: [ItemModel] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        Task{
            do {
                let albuns = try await info.asyncGetData()
                tyle = albuns
            } catch {
                print("request failed")
            }
        }
        // Do any additional setup after loading the view.
    }


}

extension MainController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tyle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}



