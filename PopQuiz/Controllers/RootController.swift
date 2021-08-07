//
//  RootController.swift
//  PopQuiz
//
//  Created by LeeJaeHyeok on 2021/08/07.
//

import UIKit

class RootController: UIViewController {
    
    // MARK: Properties
    lazy var question: UILabel = {
        let label = UILabel()
        return label
    }()
    
    lazy var quizOne: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    lazy var quizTwo: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    lazy var quizThree: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    lazy var quizFour: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    lazy var quizFive: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    lazy var quizSix: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    lazy var quizSeven: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    lazy var quizEight: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    lazy var quizNine: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    lazy var quizTen: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    lazy var yesButton: UIButton = {
        let button = UIButton()
        button.setTitle("YES", for: UIControl.State.normal)
        button.backgroundColor = .systemBlue
        button.titleLabel?.font = .systemFont(ofSize: 22)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.systemBlue.cgColor
//        button.addTarget(self, action: #selector(calculateButtonTapped), for: UIControl.Event.touchUpInside)
        return button
    }()
    
    lazy var noButton: UIButton = {
        let button = UIButton()
        button.setTitle("NO", for: UIControl.State.normal)
        button.backgroundColor = .systemBlue
        button.titleLabel?.font = .systemFont(ofSize: 22)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.systemBlue.cgColor
//        button.addTarget(self, action: #selector(calculateButtonTapped), for: UIControl.Event.touchUpInside)
        return button
    }()
    
    // MARK: Init
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureViewComponent()
    }
    
    // MARK: Configure
    func configureViewComponent() {
        view.backgroundColor = .systemBackground
        
        view.addSubview(quizOne)
    }
}