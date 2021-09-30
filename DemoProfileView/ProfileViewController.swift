//
//  ProfileViewController.swift
//  DemoProfileView
//
//  Created by MeTaLlOiD on 29/09/21.
//

import UIKit

let staticticsFontSize = 11.0

class ProfileViewController: UIViewController {

    //MARK: - UIElements
    
    //MARK: Navigation View
    let windowTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Profile"
        label.font = UIFont.systemFont(ofSize: 25, weight: UIFont.Weight.bold)
        return label
    }()
    
    let favoriteButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "favorite"), for: UIControl.State.normal)
        button.widthAnchor.constraint(equalToConstant: 20).isActive = true
        button.heightAnchor.constraint(equalToConstant: 22).isActive = true
        return button
    }()
    
    let menuButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "menu"), for: UIControl.State.normal)
        button.widthAnchor.constraint(equalToConstant: 20).isActive = true
        button.heightAnchor.constraint(equalToConstant: 22).isActive = true
        return button
    }()
    
    let navigationStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.backgroundColor = .white
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 15
        return stackView
    }()
    
    let navigationView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    
    //MARK: Profile Identity View
    
    let fullNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Peter Croutch"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.heightAnchor.constraint(equalToConstant: 18).isActive = true
        return label
    }()
    
    let verifiedUserImage: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "verified"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.widthAnchor.constraint(equalToConstant: 9).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 11).isActive = true
        return imageView
    }()
    
    let fillerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let verifiedUserStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.backgroundColor = .white
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 1
        return stackView
    }()
    
    let profileIDLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "@peter_croutch"
        return label
    }()
    
    let fullnameStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.backgroundColor = .white
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 5
        return stackView
    }()
    
    let profileIDStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.backgroundColor = .white
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 10
        return stackView
    }()
    
    //MARK: Social Media View
    
    let facebookButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "facebook"), for: UIControl.State.normal)
        button.widthAnchor.constraint(equalToConstant: 20).isActive = true
        button.heightAnchor.constraint(equalToConstant: 20).isActive = true
        return button
    }()
    
    let instagramButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "Instagram"), for: UIControl.State.normal)
        button.widthAnchor.constraint(equalToConstant: 20).isActive = true
        button.heightAnchor.constraint(equalToConstant: 20).isActive = true
        return button
    }()
    
    let twitterButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "twitter"), for: UIControl.State.normal)
        button.widthAnchor.constraint(equalToConstant: 20).isActive = true
        button.heightAnchor.constraint(equalToConstant: 20).isActive = true
        return button
    }()
    
    let websiteButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "globe"), for: UIControl.State.normal)
        button.widthAnchor.constraint(equalToConstant: 20).isActive = true
        button.heightAnchor.constraint(equalToConstant: 20).isActive = true
        return button
    }()
    
    let socialMediaStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.backgroundColor = .white
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 30
        return stackView
    }()
    
    let identityAndSocialMediaStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.backgroundColor = .white
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 30
        return stackView
    }()
    
    //MARK: Profile Pic View
    
    let profilePicImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "ProfilePic"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        return imageView
    }()
    
    let profilePicStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.backgroundColor = .white
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 30
        return stackView
    }()
    
    //MARK: Statistics View
    
    let followersLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Followers"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: staticticsFontSize, weight: UIFont.Weight.thin)
        return label
    }()
    
    let numberOfFollowersLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "14M"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.bold)
        return label
    }()
    
    let followersStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.backgroundColor = .white
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 5
        return stackView
    }()
    
    let followingLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Following"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: staticticsFontSize, weight: UIFont.Weight.thin)
        return label
    }()
    
    let numberOfFollowingLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "560"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.bold)
        return label
    }()
    
    let followingStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.backgroundColor = .white
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 5
        return stackView
    }()
    
    let hostedShowsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hosted Shows"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: staticticsFontSize, weight: UIFont.Weight.thin)
        return label
    }()
    
    let numberOfhostedShowsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "26"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.bold)
        return label
    }()
    
    let hostedShowsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.backgroundColor = .white
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 5
        return stackView
    }()
    
    let guestHostsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Guest Hosts"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: staticticsFontSize, weight: UIFont.Weight.thin)
        return label
    }()
    
    let numberOfGuestHostsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "15"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.bold)
        return label
    }()
    
    let GuestHostsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.backgroundColor = .white
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 5
        return stackView
    }()
    
    let statisticsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.backgroundColor = .white
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        return stackView
    }()
    
    //MARK: Professional Details View
    
    let professionalDetailsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.text = "BBC Podcast \nDulwich Hamlet Football Club"
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.regular)
        return label
    }()
    
    let logoContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 253/255, green: 237/255, blue: 179/255, alpha: 1.0)
        view.layer.cornerRadius = 15
        view.layer.masksToBounds = true
        view.heightAnchor.constraint(equalToConstant: 60).isActive = true
        return view
    }()
    
    let embassadorImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "nike")
        imageView.widthAnchor.constraint(equalToConstant: 51).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 19).isActive = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let fcImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "FCLogo")
        imageView.widthAnchor.constraint(equalToConstant: 25).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 35).isActive = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let logoStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.backgroundColor = .clear
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.alignment = .center
        stackView.spacing = 70
        return stackView
    }()
    
    let professionalDetailsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.backgroundColor = .white
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        return stackView
    }()
    
    //MARK:  Activity View
    
//    let segmentedControl: ProfileViewSegmentedControl = {
//        let segmentedControl = ProfileViewSegmentedControl()
//        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
//        return segmentedControl
//    }()
//
//    func addActivityView() {
//        view.addSubview(segmentedControl)
//
//        segmentedControl.topAnchor.constraint(equalToSystemSpacingBelow: professionalDetailsStackView.bottomAnchor, multiplier: 2).isActive = true
//        segmentedControl.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1).isActive = true
//        view.trailingAnchor.constraint(equalToSystemSpacingAfter: segmentedControl.trailingAnchor, multiplier: 1).isActive = true
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        populateView()
        
    }
    
    func populateView() {
        addNavigationView()
        addProfileIdentityView()
        addSocialMediaView()
        addProfilePicView()
        addStatisticsView()
        addProfessionalDetailsView()
//        addActivityView()
    }
    
    func addNavigationView() {
        view.addSubview(navigationView)
        navigationStackView.addArrangedSubview(windowTitleLabel)
        navigationStackView.addArrangedSubview(favoriteButton)
        navigationStackView.addArrangedSubview(menuButton)
        
        navigationView.addSubview(navigationStackView)
        navigationStackView.leadingAnchor.constraint(equalTo: navigationView.leadingAnchor, constant: 0).isActive = true
        navigationStackView.trailingAnchor.constraint(equalTo: navigationView.trailingAnchor, constant: 0).isActive = true
        navigationStackView.centerYAnchor.constraint(equalTo: navigationView.centerYAnchor, constant: 0).isActive = true
        
        let layout = view.layoutMarginsGuide
        
        navigationView.leadingAnchor.constraint(equalToSystemSpacingAfter: layout.leadingAnchor, multiplier: 2).isActive = true
        layout.trailingAnchor.constraint(equalToSystemSpacingAfter: navigationView.trailingAnchor, multiplier: 2).isActive = true
        navigationView.topAnchor.constraint(equalToSystemSpacingBelow: layout.topAnchor, multiplier: 2).isActive = true
        navigationView.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    func addProfileIdentityView() {
        
        view.addSubview(profileIDStackView)
        verifiedUserStackView.addArrangedSubview(verifiedUserImage)
        verifiedUserStackView.addArrangedSubview(fillerView)
        fullnameStackView.addArrangedSubview(fullNameLabel)
        fullnameStackView.addArrangedSubview(verifiedUserStackView)
        profileIDStackView.addArrangedSubview(fullnameStackView)
        profileIDStackView.addArrangedSubview(profileIDLabel)
        
    }
    
    func addSocialMediaView() {
        socialMediaStackView.addArrangedSubview(twitterButton)
        socialMediaStackView.addArrangedSubview(instagramButton)
        socialMediaStackView.addArrangedSubview(facebookButton)
        socialMediaStackView.addArrangedSubview(websiteButton)
        
        let fillerView: UIView = getfillerView()
        
        fullnameStackView.addArrangedSubview(fillerView)
        identityAndSocialMediaStackView.addArrangedSubview(profileIDStackView)
        identityAndSocialMediaStackView.addArrangedSubview(socialMediaStackView)
        
        view.addSubview(identityAndSocialMediaStackView)
        
    }
    
    func addProfilePicView() {
        let fillerView: UIView = getfillerView()
        
        profilePicStackView.addArrangedSubview(identityAndSocialMediaStackView)
        profilePicStackView.addArrangedSubview(fillerView)
        profilePicStackView.addArrangedSubview(profilePicImageView)
        
        
        view.addSubview(profilePicStackView)
        
        let layout = view.layoutMarginsGuide
        profilePicStackView.leadingAnchor.constraint(equalToSystemSpacingAfter: layout.leadingAnchor, multiplier: 2).isActive = true
        profilePicStackView.topAnchor.constraint(equalToSystemSpacingBelow: navigationView.bottomAnchor, multiplier: 2).isActive = true
        layout.trailingAnchor.constraint(equalToSystemSpacingAfter: profilePicStackView.trailingAnchor, multiplier: 2).isActive = true
        
    }
    
    func getfillerView() -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
    
    func addStatisticsView() {
        followersStackView.addArrangedSubview(numberOfFollowersLabel)
        followersStackView.addArrangedSubview(followersLabel)
        followingStackView.addArrangedSubview(numberOfFollowingLabel)
        followingStackView.addArrangedSubview(followingLabel)
        hostedShowsStackView.addArrangedSubview(numberOfhostedShowsLabel)
        hostedShowsStackView.addArrangedSubview(hostedShowsLabel)
        GuestHostsStackView.addArrangedSubview(numberOfGuestHostsLabel)
        GuestHostsStackView.addArrangedSubview(guestHostsLabel)
        
        statisticsStackView.addArrangedSubview(followersStackView)
        statisticsStackView.addArrangedSubview(followingStackView)
        statisticsStackView.addArrangedSubview(hostedShowsStackView)
        statisticsStackView.addArrangedSubview(GuestHostsStackView)
        
        view.addSubview(statisticsStackView)
        
        let layout = view.layoutMarginsGuide
        statisticsStackView.topAnchor.constraint(equalToSystemSpacingBelow: profilePicStackView.bottomAnchor, multiplier: 4).isActive = true
        statisticsStackView.leadingAnchor.constraint(equalToSystemSpacingAfter: layout.leadingAnchor, multiplier: 1).isActive = true
        layout.trailingAnchor.constraint(equalToSystemSpacingAfter: statisticsStackView.trailingAnchor, multiplier: 1).isActive = true
    }

    func addProfessionalDetailsView() {
        logoStackView.addArrangedSubview(embassadorImageView)
        logoStackView.addArrangedSubview(fcImageView)
        logoContainerView.addSubview(logoStackView)
        logoStackView.centerXAnchor.constraint(equalToSystemSpacingAfter: logoContainerView.centerXAnchor, multiplier: 1).isActive = true
        logoStackView.centerYAnchor.constraint(equalToSystemSpacingBelow: logoContainerView.centerYAnchor, multiplier: 1).isActive = true
        professionalDetailsStackView.addArrangedSubview(professionalDetailsLabel)
        professionalDetailsStackView.addArrangedSubview(logoContainerView)
        
        let layout = view.layoutMarginsGuide
        
        view.addSubview(professionalDetailsStackView)
        professionalDetailsStackView.topAnchor.constraint(equalToSystemSpacingBelow: statisticsStackView.bottomAnchor, multiplier: 2).isActive = true
        professionalDetailsStackView.leadingAnchor.constraint(equalToSystemSpacingAfter: layout.leadingAnchor, multiplier: 2).isActive = true
        layout.trailingAnchor.constraint(equalToSystemSpacingAfter: professionalDetailsStackView.trailingAnchor, multiplier: 2).isActive = true
        
    }
}

