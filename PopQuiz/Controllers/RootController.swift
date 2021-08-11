//
//  RootController.swift
//  PopQuiz
//
//  Created by LeeJaeHyeok on 2021/08/07.
//

import UIKit

class RootController: UIViewController {
//    let one: String = "애니메이션 '이웃집 토토로'에서 \n토토로는 어른에게는 보이지 않는다." //YES
//    let two: String = "달걀은 어린 닭이 낳은 것일수록 \n그 크기가 크다." //NO
//    let three: String = "무리한 다이어트는 생리불순 및 \n골다공증을 유발할 수 있다." //YES
//    let four: String = "꺼벙이란 꿩의 새끼를 뜻한다." //YES
//    let five: String = "인질이 인질범들에게 동화되어 \n경찰들을 적대시하는 현상을 가리켜 \n스톡홀름 증후군이라고 한다." //YES
//    let six: String = "물고기도 기침을 한다." //YES
//    let seven: String = "TV를 가까이서 보면 시력이 나빠진다." //NO
//    let eight: String = "닭도 왼발잡이, 오른발잡이가 있다." //YES
//    let nine: String = "만화 '검정 고무신'의 배경시대는 1990년대이다." //YES
//    let ten: String = "다이아몬드는 고온의 열에도 타지 않는다." //NO
    
    let arr: [String?] = ["애니메이션 '이웃집 토토로'에서 \n토토로는 어른에게는 보이지 않는다.", "달걀은 어린 닭이 낳은 것일수록 \n그 크기가 크다.",
                         "무리한 다이어트는 생리불순 및 \n골다공증을 유발할 수 있다.", "꺼벙이란 꿩의 새끼를 뜻한다.",
                         "인질이 인질범들에게 동화되어 \n경찰들을 적대시하는 현상을 가리켜 \n스톡홀름 증후군이라고 한다.", "물고기도 기침을 한다.",
                         "TV를 가까이서 보면 시력이 나빠진다.", "닭도 왼발잡이, 오른발잡이가 있다.", "만화 '검정 고무신'의 \n배경시대는 1990년대이다.",
                         "다이아몬드는 고온의 열에도 타지 않는다."]
    var index = 0
    
    lazy var startButton: UIButton = {
        let button = UIButton()
        button.setTitle("START", for: UIControl.State.normal)
        button.backgroundColor = .systemIndigo
        button.titleLabel?.font = UIFont.systemFont(ofSize: 28, weight: UIFont.Weight.bold)
        button.setTitleColor(UIColor.white, for: UIControl.State.normal)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 6
        button.layer.borderColor = UIColor.systemBlue.cgColor
        button.addTarget(self, action: #selector(startButtonTapped), for: UIControl.Event.touchUpInside)
        return button
    }()
    
    // MARK: Properties
    lazy var question: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 24, weight: UIFont.Weight.heavy)
        label.numberOfLines = 3
        return label
    }()
    
    lazy var yesButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("YES", for: UIControl.State.normal)
        button.backgroundColor = .systemIndigo
        button.titleLabel?.font = UIFont.systemFont(ofSize: 22, weight: UIFont.Weight.bold)
        button.setTitleColor(UIColor.white, for: UIControl.State.normal)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 6
        button.layer.borderColor = UIColor.systemBlue.cgColor
        button.addTarget(self, action: #selector(yesButtonTapped), for: UIControl.Event.touchUpInside)
        return button
    }()
    
    lazy var noButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("NO", for: UIControl.State.normal)
        button.backgroundColor = .systemIndigo
        button.titleLabel?.font = UIFont.systemFont(ofSize: 22, weight: UIFont.Weight.bold)
        button.setTitleColor(UIColor.white, for: UIControl.State.normal)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 6
        button.layer.borderColor = UIColor.systemBlue.cgColor
        button.addTarget(self, action: #selector(noButtonTapped), for: UIControl.Event.touchUpInside)
        return button
    }()
    
    lazy var progressView: UIProgressView = {
        let pv = UIProgressView()
        pv.progressViewStyle = .default
        pv.progressTintColor = .green
        pv.trackTintColor = .lightGray
        pv.layer.cornerRadius = 50
        pv.setProgress(0.0, animated: true)
        return pv
    }()
    
    // MARK: Selectors
    @objc func startButtonTapped() {
        startButton.layer.isHidden = true
        startButton.isEnabled = false
        
        yesButtonTapped()
        progressView.progress = 0.0
    }
    
    @objc func yesButtonTapped() {
        
        if index <= 9 {
            question.text = arr[index]
            index = index + 1
            progressView.progress += 0.1
        } else if index > 9 {
            index = 0
            question.text = arr[index]
            index = index + 1
            progressView.progress += 0.1
        }
        
        if progressView.progress == 1 {
            progressView.progress = 0.0
        }
    }
    
    @objc func noButtonTapped() {
        
        if index <= 9 {
            question.text = arr[index]
            index = index + 1
            progressView.progress += 0.1
        } else if index > 9 {
            index = 0
            question.text = arr[index]
            index = index + 1
            progressView.progress += 0.1
        }
        
        if progressView.progress == 1 {
            progressView.progress = 0.0
        }
    }
    
    // MARK: Init
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureViewComponent() // view 요소 함수 호출
    }
    
    // MARK: Configure
    func configureViewComponent() {
        view.backgroundColor = .systemIndigo
        
        view.addSubview(startButton)
        startButton.translatesAutoresizingMaskIntoConstraints = false
        startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        startButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        startButton.widthAnchor.constraint(equalToConstant: 350).isActive = true
        startButton.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        
        view.addSubview(question)
        question.translatesAutoresizingMaskIntoConstraints = false
        question.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        question.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(yesButton)
        yesButton.translatesAutoresizingMaskIntoConstraints = false
        yesButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30).isActive = true
        yesButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        yesButton.widthAnchor.constraint(equalToConstant: view.frame.width - 235).isActive = true
        yesButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        view.addSubview(noButton)
        noButton.translatesAutoresizingMaskIntoConstraints = false
        noButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30).isActive = true
        noButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        noButton.widthAnchor.constraint(equalToConstant: view.frame.width - 235).isActive = true
        noButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        view.addSubview(progressView)
        progressView.translatesAutoresizingMaskIntoConstraints = false
        progressView.topAnchor.constraint(equalTo: yesButton.bottomAnchor, constant: 15).isActive = true
        progressView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        progressView.widthAnchor.constraint(equalToConstant: view.frame.width - 50).isActive = true
        progressView.heightAnchor.constraint(equalToConstant: 10).isActive = true
    }
}
