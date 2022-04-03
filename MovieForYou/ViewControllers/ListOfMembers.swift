//
//  ListOfMembers.swift
//  MovieForYou
//
//  Created by Яна Иноземцева on 02.04.2022.
//

import UIKit

class ListOfMembers: UITableViewController {

    private var memberList = Member.getMemberList()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = editButtonItem
        editButtonItem.title = "Изменить"
        tableView.rowHeight = 80
        

    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        memberList.count
    }


    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "member", for: indexPath)
        let member = memberList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = member.fullName
        content.image = UIImage(named: member.fullName)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
    
        cell.contentConfiguration = content

        return cell
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let memberDetailsVC = segue.destination as? MoreInformationAboutMembers else { return }
        memberDetailsVC.member = sender as? Member
    }

}

extension ListOfMembers {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let member = memberList[indexPath.row]
        performSegue(withIdentifier: "segueyInDetails", sender: member)
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        .none
    }
    
    override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        false
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let member = memberList.remove(at: sourceIndexPath.row)
        memberList.insert(member, at: destinationIndexPath.row)
    }
    
    override func setEditing (_ editing:Bool, animated:Bool)
    {
        super.setEditing(editing,animated:false)
       self.editButtonItem.title = editing ? "Готово" : "Изменить"
     }
}

