//
//  ToDoListProtocals.swift
//  ToDoApp-VIPER
//
//  Created by Candi Lilun Chiu on 07.08.23.
//

import UIKit

protocol ToDoListViewProtocal: AnyObject {
     
    var presenter: ToDoListPresenterProtocal? { get set }
     
    // PRESENTER -> VIEW
    func showToDo(_ item: ToDoItem)
    func showErrorMessage(_ message: String)
}

protocol ToDoListPresenterProtocal: AnyObject {
     
    var view: ToDoListViewProtocal? { get set }
    var interactor: ToDoListInteractorInputProtocal { get set }
    var router: ToDoListRouterProtocal? { get set }
     
    // VIEW -> PRESENTER
    func viewWillAppear()
    func showToDoDetail(_ item: ToDoItem)
    func addToDo(_ item: ToDoItem)
    func removeToDo(_ item: ToDoItem)
}

protocol ToDoListInteractorInputProtocal: AnyObject {
      
    var presenter: ToDoListInteractorOutputProtocal? { get set }
     
    // PRESENTER -> INTERACTOR
    func retriveToDo()
    func saveToDo(_ item: ToDoItem)
    func deleteToDo(_ item: ToDoItem)
}

protocol ToDoListInteractorOutputProtocal: AnyObject {
     // INTERACTOR -> PRESENTER
    func didRetriveToDos()
    func didAddToDo()
    func didRemoveToDo()
    func onError(message: String)
     
}

protocol ToDoListRouterProtocal: AnyObject {

    static func createToDoListModule() -> UIViewController
    
    //PRESENTER -> ROUTER
    func presentToDoDetailScreen(from view: UIViewController, for item: ToDoItem)
}
