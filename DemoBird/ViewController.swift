//
//  ViewController.swift
//  DemoBird
//
//  Created by TTB10912 on 13/09/2016.
//  Copyright © 2016 TTB10912. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var bird = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        drawJungle()
        addBird()
        flyUpAndDown()
//        playSong()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func drawJungle()  {
        let background = UIImageView(image: UIImage(named: "jungle.jpg"))
        background.frame = self.view.bounds
        background.contentMode = .ScaleAspectFill
        self.view.addSubview(background)
        
    }
    func addBird() {
        bird = UIImageView(frame: CGRectMake(0, 0, 110, 68  ))
        bird.animationImages = [ UIImage(named:"bird0.png")! ,
                                 UIImage(named:"bird1.png")! ,
                                 UIImage(named:"bird2.png")! ,
                                 UIImage(named:"bird3.png")! ,
                                 UIImage(named:"bird4.png")! ,
                                 UIImage(named:"bird5.png")! ]
        bird.animationRepeatCount = 0
        bird.animationDuration = 2
        bird.startAnimating()
        self.view.addSubview(bird)
    }
    func flyUpAndDown() {
        UIView.animateWithDuration(4, animations: {
            self.bird.center = CGPointMake(self.view.bounds.size.width , self.view.bounds.size.height )
            
            
            
        })
        { (finished) in
                
        }
        
        
    }
}

