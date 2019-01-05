//
//  TableMainViewController.swift
//  BoxOffice
//
//  Created by Lyunho Kim on 05/01/2019.
//  Copyright © 2019 Lyunho Kim. All rights reserved.
//

import UIKit

class TableMainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var movieList: [Movie] = []
    let cellIdentifier: String = "movieTableViewCell"
    
    @IBOutlet var movieTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieTableView.dataSource = self
        movieTableView.delegate = self
        
        
        self.navigationItem.title = "예매율순"
    
        // 필터 버튼 추가
        let filterButton: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(btnFilterPushed))
        self.navigationItem.rightBarButtonItem = filterButton
        
        
        
        // 테스트 데이터
        let test: Movie = Movie()
        test.title = "라이언 일병 구하기"
        test.user_rating = 10.0
        test.date = "2018-12-31"
        movieList.append(test)
        
        movieTableView.reloadData()
        
    }
    
    @IBAction func btnFilterPushed(_ sender: Any) {
        print("right button")
        
        
        // 정렬 조건 alert
        let filterAlert: UIAlertController = UIAlertController(title: "정렬순서", message: "정렬 순서를 선택하세요", preferredStyle: .actionSheet)
        
        filterAlert.addAction(UIAlertAction(title: "예매율순", style: .default, handler: { _ in print("예매율순 선택")}))
        filterAlert.addAction(UIAlertAction(title: "큐레이션순", style: .default, handler: { _ in print("큐레이션순 선택")}))
        filterAlert.addAction(UIAlertAction(title: "개봉일순", style: .default, handler: { _ in print("개봉일순 선택")}))
        
        self.present(filterAlert, animated: true, completion: nil)
        
        
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.movieTableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! MovieTableViewCell
        
        cell.movieTitleLabel.text = movieList[indexPath.row].title
        cell.infoLabel.text = String(format: "평점: %.f", arguments: [movieList[indexPath.row].user_rating!])
        cell.openDateLabel.text = movieList[indexPath.row].date
        
        
        return cell
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
