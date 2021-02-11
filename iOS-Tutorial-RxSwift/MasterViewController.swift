//
//  ViewController.swift
//  iOS-Tutorial-RxSwift
//
//  Created by Siam Wannakosit on 10/2/21.
//

import UIKit
import RxSwift

class MasterViewController: UIViewController, detailsDelegate {
    func detailsDataDidUpdate(_ name: String) {
        print("master view delegate")
        self.welcomeTextLabel.text = "Hello \(name)"
    }
    

    @IBOutlet weak var previewImageView: UIImageView!
    @IBOutlet weak var welcomeTextLabel: UILabel!
    @IBOutlet weak var gotoDetailsViewButton: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func gotoDetailsViewDidTouch(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "detailsViewID") as! DetailsViewController
        viewController.delegate = self
        self.present(viewController, animated: true)
    }
    
}

