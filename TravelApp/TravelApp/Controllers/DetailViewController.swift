import UIKit

class DetailViewController: UIViewController {
    
    var destination: Destination?
    
    // MARK: - Views (using Layout Anchors)
    
    let scrollView = UIScrollView()
    let contentView = UIView()
    
    let imageView = UIImageView()
    let nameLabel = UILabel()
    let countryLabel = UILabel()
    let descriptionLabel = UILabel()
    let bestTimeLabel = UILabel()
    let bestTimeValueLabel = UILabel()
    let budgetLabel = UILabel()
    let budgetValueLabel = UILabel()
    let attractionsLabel = UILabel()
    let attractionsTextView = UITextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = "Destination Details"
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: nil, action: nil)
        
        setupViews()
        setupConstraints()
        configureWithDestination()
    }
    
    // MARK: - Setup Views
    
    private func setupViews() {
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        // Image View
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.backgroundColor = UIColor.lightGray
        contentView.addSubview(imageView)
        
        // Name Label
        nameLabel.font = UIFont.boldSystemFont(ofSize: 28)
        nameLabel.textColor = .black
        nameLabel.numberOfLines = 0
        contentView.addSubview(nameLabel)
        
        // Country Label
        countryLabel.font = UIFont.systemFont(ofSize: 16)
        countryLabel.textColor = .gray
        contentView.addSubview(countryLabel)
        
        // Description Label
        descriptionLabel.font = UIFont.systemFont(ofSize: 14)
        descriptionLabel.textColor = .darkGray
        descriptionLabel.numberOfLines = 0
        contentView.addSubview(descriptionLabel)
        
        // Best Time Label
        bestTimeLabel.font = UIFont.boldSystemFont(ofSize: 16)
        bestTimeLabel.text = "Best Time to Visit:"
        contentView.addSubview(bestTimeLabel)
        
        bestTimeValueLabel.font = UIFont.systemFont(ofSize: 14)
        bestTimeValueLabel.numberOfLines = 0
        contentView.addSubview(bestTimeValueLabel)
        
        // Budget Label
        budgetLabel.font = UIFont.boldSystemFont(ofSize: 16)
        budgetLabel.text = "Estimated Budget:"
        contentView.addSubview(budgetLabel)
        
        budgetValueLabel.font = UIFont.systemFont(ofSize: 14)
        budgetValueLabel.numberOfLines = 0
        contentView.addSubview(budgetValueLabel)
        
        // Attractions Label
        attractionsLabel.font = UIFont.boldSystemFont(ofSize: 16)
        attractionsLabel.text = "Top Attractions:"
        contentView.addSubview(attractionsLabel)
        
        // Attractions Text View
        attractionsTextView.font = UIFont.systemFont(ofSize: 14)
        attractionsTextView.isScrollEnabled = false
        attractionsTextView.isEditable = false
        attractionsTextView.isSelectable = false
        attractionsTextView.textColor = .darkGray
        contentView.addSubview(attractionsTextView)
    }
    
    private func setupConstraints() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        imageView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        countryLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        bestTimeLabel.translatesAutoresizingMaskIntoConstraints = false
        bestTimeValueLabel.translatesAutoresizingMaskIntoConstraints = false
        budgetLabel.translatesAutoresizingMaskIntoConstraints = false
        budgetValueLabel.translatesAutoresizingMaskIntoConstraints = false
        attractionsLabel.translatesAutoresizingMaskIntoConstraints = false
        attractionsTextView.translatesAutoresizingMaskIntoConstraints = false
        
        // Scroll View Constraints
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        // Content View Constraints
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
        
        // Image View Constraints
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 250)
        ])
        
        // Name Label Constraints
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 16),
            nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
        ])
        
        // Country Label Constraints
        NSLayoutConstraint.activate([
            countryLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
            countryLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            countryLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
        ])
        
        // Description Label Constraints
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: countryLabel.bottomAnchor, constant: 16),
            descriptionLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            descriptionLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
        ])
        
        // Best Time Label Constraints
        NSLayoutConstraint.activate([
            bestTimeLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 20),
            bestTimeLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            bestTimeLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
        ])
        
        // Best Time Value Label Constraints
        NSLayoutConstraint.activate([
            bestTimeValueLabel.topAnchor.constraint(equalTo: bestTimeLabel.bottomAnchor, constant: 4),
            bestTimeValueLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            bestTimeValueLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
        ])
        
        // Budget Label Constraints
        NSLayoutConstraint.activate([
            budgetLabel.topAnchor.constraint(equalTo: bestTimeValueLabel.bottomAnchor, constant: 16),
            budgetLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            budgetLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
        ])
        
        // Budget Value Label Constraints
        NSLayoutConstraint.activate([
            budgetValueLabel.topAnchor.constraint(equalTo: budgetLabel.bottomAnchor, constant: 4),
            budgetValueLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            budgetValueLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
        ])
        
        // Attractions Label Constraints
        NSLayoutConstraint.activate([
            attractionsLabel.topAnchor.constraint(equalTo: budgetValueLabel.bottomAnchor, constant: 16),
            attractionsLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            attractionsLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
        ])
        
        // Attractions Text View Constraints
        NSLayoutConstraint.activate([
            attractionsTextView.topAnchor.constraint(equalTo: attractionsLabel.bottomAnchor, constant: 4),
            attractionsTextView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            attractionsTextView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            attractionsTextView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
            attractionsTextView.heightAnchor.constraint(greaterThanOrEqualToConstant: 100)
        ])
    }
    
    // MARK: - Configure with Destination
    
    private func configureWithDestination() {
        guard let destination = destination else { return }
        
        nameLabel.text = destination.name
        countryLabel.text = destination.country
        descriptionLabel.text = destination.description
        bestTimeValueLabel.text = destination.bestTimeToVisit
        budgetValueLabel.text = destination.estimatedBudget
        
        let attractionsText = destination.attractions.enumerated().map { (index, attraction) -> String in
            return "\(index + 1). \(attraction)"
        }.joined(separator: "\n")
        attractionsTextView.text = attractionsText
        
        // Set placeholder image
        imageView.image = UIImage(named: destination.imageName) ?? UIImage(named: "placeholder")
    }
}
