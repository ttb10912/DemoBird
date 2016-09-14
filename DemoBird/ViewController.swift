//
//  ViewController.swift
//  DemoBird
//
//  Created by TTB10912 on 13/09/2016.
//  Copyright © 2016 TTB10912. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var bird = UIImageView()
    var audioPlayer = AVAudioPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        drawJungle()
        addBird()
        flyUpAndDown()
        playSong()
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
            self.bird.center = CGPointMake(self.view.bounds.size.width - 50, self.view.bounds.size.height - 50 )
            
            //DI XUONG
            
            })
        { (finished) in
            self.bird.transform = CGAffineTransformConcat(CGAffineTransformScale(self.bird.transform,-1,1) , CGAffineTransformMakeRotation(0))
            
            
            
            UIView.animateWithDuration(4, animations: {
                self.bird.center = CGPointMake( 50 , self.view.bounds.size.height - 50 )
                
                
                
                })
            { (finished) in
                self.bird.transform = CGAffineTransformConcat(CGAffineTransformScale(self.bird.transform,-1,1) , CGAffineTransformMakeRotation(-45))
                
                
                UIView.animateWithDuration(4, animations: {
                    self.bird.center = CGPointMake( self.view.bounds.size.width - 50 , 50 )
                    
                    
                    
                    })
                { (finished) in
                    self.bird.transform = CGAffineTransformConcat(CGAffineTransformScale(self.bird.transform,-1,1) , CGAffineTransformMakeRotation(45))
                    
                    UIView.animateWithDuration(4, animations: {
                        self.bird.center = CGPointMake( 50 , 50 )
                        
                        
                        
                        })
                    { (finished) in
                        self.bird.transform = CGAffineTransformIdentity
                        self.flyUpAndDown()
                        
                        
                    }
                    
                }
                
                
            }
   
        }
    }
    func playSong()  {
        let filePath = NSBundle.mainBundle().pathForResource("A+ – Chào Mào Mái Hót", ofType: ".mp3")
        let URL = NSURL (fileURLWithPath: filePath!)
        audioPlayer = try! AVAudioPlayer(contentsOfURL: URL)
        audioPlayer.prepareToPlay()
        audioPlayer.play()
        
        
    }
}

