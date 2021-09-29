//
//  ViewController.swift
//  navigation Controller
//
//  Created by Shashwat on 29/09/21.
//

import UIKit

class ViewController: UIViewController {
    
    var btn = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        btn.setTitle("click here for present", for: .normal)
        btn.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        btn.setTitleColor(.black, for: .normal)
        btn.backgroundColor = .white
        view.addSubview(btn)
        view.backgroundColor = .systemGray6
        title = "Home view controllers"
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        btn.frame = CGRect(x: view.frame.midX - (view.frame.size.width)/2 + 10, y: view.frame.midY, width: view.frame.size.width-20, height: 50)
    }
    
    @objc func didTapButton(){
        let vc  = secondViewControllers()
        let nav = UINavigationController(rootViewController: vc)
        //nav.pushViewController(vc, animated: true)
        present(nav, animated: true)
    }

}

class secondViewControllers: UIViewController {
    
    var btn = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second Veiw Controller"
        view.backgroundColor = .systemBlue
        btn.setTitle("push another function", for: .normal)
        btn.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        btn.setTitleColor(.black, for: .normal)
        btn.backgroundColor = .white
        view.addSubview(btn)
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "dismiss", style: .done, target: self, action: #selector(dismiss1))
    }
    
    @objc func dismiss1(){
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        btn.frame = CGRect(x: view.frame.midX - (view.frame.size.width - 20)/2, y: view.frame.midY, width: view.frame.size.width-20, height: 50)
    }
    @objc func didTapButton(){
        let vc  = ViewController()
      //  let nav = UINavigationController(rootViewController: vc)
        navigationController?.pushViewController(vc, animated: true)
        //let nav = UINavigationController(rootViewController: vc)
        //nav.pushViewController(vc, animated: true)
        //present(nav, animated: true)
    }
}

