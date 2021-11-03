//
//  ViewController.swift
//  StudyAnimation
//
//  Created by 탁제원 on 2021/10/28.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bell: UIView!
    @IBOutlet weak var ringButton: UIButton!
    
    let ringDingDongOption: UIView.AnimationOptions = .curveLinear
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    func animation() {
        UIView.animate(
            withDuration: 2.0,
            delay: 0.5,
            usingSpringWithDamping: 0.2,
            initialSpringVelocity: 5,
            options: ringDingDongOption,
            animations: {
                // 종이 CGFloat.pi * 2 - 0.14 위치에서면 damping 되고 0으로 돌아온다..
                self.bell.transform = CGAffineTransform(rotationAngle: CGFloat.pi * 2 - 0.14)
            },
            completion: {done in
                self.bell.transform = .init(rotationAngle : 0)
            })
    }
    
    
    
    @IBAction func pushRingButton(_ sender: Any) {
        animation()
    }
}

