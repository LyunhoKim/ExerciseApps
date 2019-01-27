//
//  ViewController.swift
//  ExpandableTableViewCell
//
//  Created by Lyunho Kim on 27/01/2019.
//  Copyright © 2019 Lyunho Kim. All rights reserved.
//

import UIKit

class ExpandableTableViewCell: UITableViewCell {
    @IBOutlet var userProfileImageView: UIImageView!
    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var commentLabel: UILabel!

}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    struct Content {
        var content: String
        var isExpanded: Bool
    }
    
    

    @IBOutlet var feedTableView: UITableView!
    let cellIdentifier = "expandtableviewcell"
    
    
    
    var contents: [Content] = [Content(content: "short contents", isExpanded: false),
                               Content(content: "long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long contents", isExpanded: false),
                               Content(content: "short contents", isExpanded: false),
                               Content(content: "long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long contents", isExpanded: false),
                               Content(content: "short contents", isExpanded: false),
                               Content(content: "long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long contents", isExpanded: false),
                               Content(content: "short contents", isExpanded: false),
                               Content(content: "long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long contents", isExpanded: false),
                               Content(content: "short contents", isExpanded: false),
                               Content(content: "long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long contents", isExpanded: false),
                               Content(content: "short contents", isExpanded: false),
                               Content(content: "long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long contents", isExpanded: false)]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        feedTableView.dataSource = self
        feedTableView.delegate = self
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contents.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ExpandableTableViewCell
        
        cell.userProfileImageView.image = UIImage(named: "girl")
        cell.userNameLabel.text = "user" + String(indexPath.row)
        
        if contents[indexPath.row].isExpanded == true {
            cell.commentLabel.numberOfLines = 0
        } else {
            cell.commentLabel.numberOfLines = 1
        }
        
        cell.commentLabel.text = contents[indexPath.row].content
        
        
        return cell
        
        
    }

    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        contents[indexPath.row].isExpanded = !(contents[indexPath.row].isExpanded)
        tableView.reloadRows(at: [indexPath], with: .automatic)
        
        // cell이 확장되면서 테이블 뷰가 밀릴 때 시도 해볼 수 있는 방법
        // 1. heightForRowAt 값을 고정값으로 고정
        // 2. tableView.reload()를 사용하여 전체 reload
        // 3. 테이블 뷰 섹션 헤더, 푸터 높이
        //    tableView.estimatedSectionFooterHeight = 0
        //    tableView.estimatedSectionHeaderHeight = 0
        // 4. 애니메이션 효과 완전히 제거
        //    UIView.setAnimationsEnabled(false)
        //    tableView.reloadRows(at: [indexPath], with: .none)
        //    UIView.setAnimationsEnabled(true)
    }


}

