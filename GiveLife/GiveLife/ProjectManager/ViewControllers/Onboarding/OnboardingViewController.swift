//
//  OnboardingViewController.swift
//  GiveLife
//
//  Created by JENIL BHADJA on 01/09/21.
//

import UIKit

class OnboardingViewController: UIViewController {

    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var nextBtn: UIButton!{
        didSet{
            nextBtn.backgroundColor = .red
            nextBtn.layer.cornerRadius = 16
            nextBtn.layer.borderWidth = 2
            nextBtn.layer.borderColor = UIColor.red.cgColor
            }
    }
    @IBOutlet weak var pageControl: UIPageControl!
    
    
    var slides: [OnboardingSlide] = []
    
    var currentPage = 0 {
        didSet {
            pageControl.currentPage = currentPage
            if currentPage == slides.count - 1 {
                nextBtn.setTitle("Get Started", for: .normal)
            } else {
                nextBtn.setTitle("Next", for: .normal)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slides = [
            OnboardingSlide(title: "We Save Lives", description: "Connecting blood donors with recipients.", image: #imageLiteral(resourceName: "slide1_adobespark")),
            OnboardingSlide(title: "Find Blood", description: "We match and connect you with nearby Donors.", image: #imageLiteral(resourceName: "slide2_adobespark")),
            OnboardingSlide(title: "Forever Free", description: "You don't have to pay for anything.", image: #imageLiteral(resourceName: "slide3_adobespark"))
        ]
        
    }
    

    @IBAction func nextBtnClicked(_ sender: UIButton) {
        if currentPage == slides.count - 1 {
            let controller = storyboard?.instantiateViewController(identifier: "HomeViewController") as! UIViewController
            controller.modalPresentationStyle = .fullScreen
            controller.modalTransitionStyle = .flipHorizontal
            present(controller, animated: true, completion: nil)
            print("go to the home page")
        } else {
            currentPage += 1
            let indexPath = IndexPath(item: currentPage, section: 0)
            collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        }
    }
}

extension OnboardingViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OnboardingCollectionViewCell.identifier, for: indexPath)
            as! OnboardingCollectionViewCell
        cell.setup(slides[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        currentPage = Int(scrollView.contentOffset.x / width)
        //pageControl.currentPage = currentPage
    }
}
 
