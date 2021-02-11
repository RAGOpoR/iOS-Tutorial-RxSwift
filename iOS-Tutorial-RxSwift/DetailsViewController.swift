//
//  DetailsViewController.swift
//  iOS-Tutorial-RxSwift
//
//  Created by Siam Wannakosit on 11/2/21.
//
import UIKit
import RxSwift

protocol detailsDelegate {
    func detailsDataDidUpdate(_ name: String)
}

class DetailsViewController: UIViewController, detailsDelegate {

    @IBOutlet weak var sunLooImageView: UIImageView!
    @IBOutlet weak var olympianImageView: UIImageView!
    @IBOutlet weak var sleepyCatImageView: UIImageView!
    
    @IBOutlet weak var sunLooButton: UIButton!
    @IBOutlet weak var olympianButton: UIButton!
    @IBOutlet weak var sleepyCatButton: UIButton!
    
    public var delegate: detailsDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    fileprivate func sendButtonNameWith(_ sender: Any) {
        let currentButton = sender as! UIButton
        let buttonName = currentButton.titleLabel?.text ?? ""
        detailsDataDidUpdate(buttonName)
    }
    
    @IBAction func sunLooDidTouch(_ sender: Any) {
        sendButtonNameWith(sender)
    }
    
    @IBAction func olympianDidTouch(_ sender: Any) {
        sendButtonNameWith(sender)
    }
    
    @IBAction func sleepyCatDidTouch(_ sender: Any) {
        sendButtonNameWith(sender)
    }
    
    func detailsDataDidUpdate(_ name: String) {
        if (self.delegate != nil) {
            self.delegate?.detailsDataDidUpdate(name)
        }
        self.dismiss(animated: true, completion: nil)
        print(name)
    }
}
