//
//  ViewController.swift
//  tableView
//
//  Created by Altair on 12.10.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    

var movie = Movie()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        label.text = movie.descriptionOfMovie
        imageView.image = UIImage(named: movie.image)
        
    
        
    }


}

