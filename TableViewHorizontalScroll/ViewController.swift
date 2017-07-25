//
//  ViewController.swift
//  TableViewHorizontalScroll
//
//  Created by zhuxuhong on 2017/7/24.
//  Copyright © 2017年 zhuxuhong. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
	override func viewDidLoad() {
		super.viewDidLoad()
		
		tableView.isPagingEnabled = true
		tableView.rowHeight = view.bounds.width
		tableView.separatorStyle = .none
		
		// 旋转
		view.transform = CGAffineTransform(rotationAngle: .pi/2)
	}
	
	override func viewDidAppear(_ animated: Bool) {
		self.tableView.scrollToRow(at: IndexPath.init(row: 9, section: 0), at: .bottom, animated: false)
		
		super.viewDidAppear(animated)
	}

}

extension ViewController{
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 10
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
		
		cell.contentView.transform = CGAffineTransform(rotationAngle: -.pi/2)
		
		return cell
	}
	
}
