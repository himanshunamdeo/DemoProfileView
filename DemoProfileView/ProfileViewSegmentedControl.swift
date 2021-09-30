//
//  ProfileViewSegmentedControl.swift
//  DemoProfileView
//
//  Created by MeTaLlOiD on 30/09/21.
//

import UIKit

private class SegmentControlItem: UIView {
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let itemButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .clear
        return button
    }()
    
    let itemImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    let itemLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let horizontalStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let highlightedView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 2).isActive = true
        view.backgroundColor = .systemBlue
        return view
    }()
    
    let verticalStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private func setupView() {
        
        horizontalStackView.addArrangedSubview(itemImageView)
        horizontalStackView.addArrangedSubview(itemLabel)
        verticalStackView.addArrangedSubview(horizontalStackView)
        verticalStackView.addArrangedSubview(highlightedView)
        
        containerView.addSubview(verticalStackView)
        verticalStackView.topAnchor.constraint(equalToSystemSpacingBelow: containerView.topAnchor, multiplier: 1).isActive = true
        verticalStackView.leftAnchor.constraint(equalToSystemSpacingAfter: containerView.leftAnchor, multiplier: 1).isActive = true
        verticalStackView.bottomAnchor.constraint(equalToSystemSpacingBelow: containerView.bottomAnchor, multiplier: 1).isActive = true
        verticalStackView.rightAnchor.constraint(equalToSystemSpacingAfter: containerView.rightAnchor, multiplier: 1).isActive = true
        
        containerView.addSubview(itemButton)
        itemButton.topAnchor.constraint(equalToSystemSpacingBelow: containerView.topAnchor, multiplier: 1).isActive = true
        itemButton.leftAnchor.constraint(equalToSystemSpacingAfter: containerView.leftAnchor, multiplier: 1).isActive = true
        itemButton.bottomAnchor.constraint(equalToSystemSpacingBelow: containerView.bottomAnchor, multiplier: 1).isActive = true
        itemButton.rightAnchor.constraint(equalToSystemSpacingAfter: containerView.rightAnchor, multiplier: 1).isActive = true
    }
    
    public func updateItem(item: SegmentedControlItem) {
        itemImageView.image = item.logo
        itemLabel.text = item.title
    }
    
    public func addAction(action: UIAction) {
        itemButton.addAction(action, for: UIControl.Event.touchUpInside)
    }
}

typealias SegmentedControlItem = (logo: UIImage?, title: String)

class ProfileViewSegmentedControl: UIView {
    
    var items: [SegmentedControlItem]?
    private var itemsArray = [SegmentControlItem]()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    convenience init(items: [SegmentedControlItem]) {
        self.init()
        self.items = items
        setupView()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    func setupView() {
        guard let items = items else { fatalError("Segmented Control cannot be formed without items") }
        
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        
        for item in items {
            let segmentedControlItem = SegmentControlItem()
            segmentedControlItem.updateItem(item: item)
            segmentedControlItem.addAction(action: UIAction(handler: { action in
                
            }))
            itemsArray.append(segmentedControlItem)
            stackView.addArrangedSubview(segmentedControlItem)
        }
        
    }
}

