//
//  ViewController.swift
//  Social Matter
//
//  Created by Muhammad Azam Baderi on 20/02/2016.
//  Copyright © 2016 Twebble. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var imageView: UIImageView!

  override func viewDidLoad() {
    super.viewDidLoad()
    
    imageView.animationImages = [
      UIImage(named: "0001.png")!,
      UIImage(named: "0002.png")!,
      UIImage(named: "0003.png")!,
      UIImage(named: "0004.png")!,
      UIImage(named: "0005.png")!,
      UIImage(named: "0006.png")!,
      UIImage(named: "0007.png")!,
      UIImage(named: "0008.png")!,
      UIImage(named: "0009.png")!,
      UIImage(named: "0010.png")!,
      UIImage(named: "0011.png")!,
      UIImage(named: "0012.png")!,
      UIImage(named: "0013.png")!,
      UIImage(named: "0014.png")!,
      UIImage(named: "0015.png")!,
      UIImage(named: "0016.png")!,
      UIImage(named: "0017.png")!,
      UIImage(named: "0018.png")!,
      UIImage(named: "0019.png")!,
      UIImage(named: "0020.png")!
    ]
    
    imageView.animationDuration = 3
    imageView.startAnimating()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func handlePan(recognizer:UIPanGestureRecognizer) {
    let translation = recognizer.translationInView(self.view)
    if let view = recognizer.view {
      view.center = CGPoint(x:view.center.x + translation.x,
        y:view.center.y + translation.y)
    }
    recognizer.setTranslation(CGPointZero, inView: self.view)
  }
}

