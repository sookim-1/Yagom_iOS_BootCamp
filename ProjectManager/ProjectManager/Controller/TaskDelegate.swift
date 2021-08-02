//
//  TaskDelegate.swift
//  ProjectManager
//
//  Created by 배은서 on 2021/07/29.
//

import Foundation

protocol TaskDelegate: AnyObject {
    func addTask(_ taskAlertViewController: TaskAlertViewController, task: Task)
    func patchTask(title: String,
                   content: String,
                   deadLine: Date,
                   category: TaskType
                   )
}
