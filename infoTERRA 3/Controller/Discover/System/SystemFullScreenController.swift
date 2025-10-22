//
//  SystemFullScreenController.swift
//  infoTERRA 3
//
//  Created by John Padilla on 10/19/25.
//

import UIKit

class SystemFullScreenController: UITableViewController {
    
    //MARK: - Properties
    
    let reusseIdentifier = "id"
    let reuseHeaderId = "reuseHeaderId"
        
    var systemItem : SystemItem?
    

    

    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = systemItem?.title
        
        configureUI()
        configureTableView()
    }
    
    init(systemItem: SystemItem) {
        self.systemItem = systemItem
        super.init(style: .plain)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Helpers
    
    func configureUI() {
        
        dismissButton(selector: #selector(handleDismiss))
    }
    
    func configureTableView() {
        
        tableView.backgroundColor = .white
        tableView.tableFooterView = UIView()
        tableView.separatorStyle = .none
        tableView.allowsSelection = false
        tableView.contentInsetAdjustmentBehavior = .never
        
        tableView.register(SystemCell.self, forCellReuseIdentifier: reusseIdentifier)
        tableView.register(SystemFullScreenHeaderCell.self, forCellReuseIdentifier: reuseHeaderId)
        
        let height = UIApplication.shared.statusBarFrame.height
        tableView.contentInset = .init(top: 0, left: 0, bottom: height, right: 0)

    }

    
    //MARK: - Actions
    
    @objc func handleDismiss() {
        dismiss(animated: true)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.item == 0 {
            
            
            let headerCell = tableView.dequeueReusableCell(withIdentifier: reuseHeaderId, for: indexPath) as!  SystemFullScreenHeaderCell
            
//            headerCell.titleLabel.text = systemItem?.title
            headerCell.descriptionLabel.text = systemItem?.description
            headerCell.subDescriptionLabel.text = systemItem?.subDescription
            headerCell.imageViews.image = systemItem?.image
            
            return headerCell
        
            
//            let headerCell = CategoryHeaderCell()
//            headerCell.systemItem = items[indexPath.row]
//            return headerCell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: reusseIdentifier, for: indexPath) as! SystemCell
            return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        if indexPath.row == 0 {
//            return SystemFullScreenController.cellSize
//            
//        }
        return super.tableView(tableView, heightForRowAt: indexPath)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
