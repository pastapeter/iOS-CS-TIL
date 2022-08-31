//
//  ViewController.swift
//  frameversusbounds
//
//  Created by Jung peter on 8/30/22.
//

import UIKit

class ViewController: UIViewController {
    
    let testView: UIView = {
        let view = UIView(frame: CGRect(x: 200, y: 200, width: 100, height: 120))
        view.backgroundColor = .blue
        return view
    }()
    
    let secondView: UIView = {
        let view = UIView(frame: CGRect(x: 10, y: 10, width: 50, height: 60))
        view.backgroundColor = .orange
        return view
    }()
    
    let thirdView: UIView = {
        let view = UIView(frame: CGRect(x: 20, y: 20, width: 30, height: 30))
        view.backgroundColor = .green
        return view
    }()
    
    let forthView: UIView = {
        let view = UIView(frame: CGRect(x: 30, y: 40, width: 50, height: 60))
        view.backgroundColor = .yellow
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(testView)
        testView.addSubview(secondView)
        secondView.addSubview(forthView)
        secondView.addSubview(thirdView)
        
        print(testView.frame)
        print(secondView.frame)
        print(thirdView.frame)

        testView.transform = CGAffineTransform(rotationAngle: 100)
        
        print(testView.frame)
        print(secondView.frame)
        print(thirdView.frame)
        
//        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//            self.secondView.bounds.origin.x = 30
//            self.secondView.bounds.origin.y = 30
//        }
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            // 바뀌고 나서 그냥 그대로 집어넣는거임
            self.testView.frame = CGRect(x: self.testView.frame.origin.x, y: self.testView.frame.origin.y, width: self.testView.frame.width, height: self.testView.frame.height)
            print(self.testView.frame)
            // 사실 그러면 똑같이 나와야하는데?
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
//            self.testView.transform = .identity
            self.testView.frame = CGRect(x: 200, y: 200, width: 100, height: 120)
        }
        
    }


}

