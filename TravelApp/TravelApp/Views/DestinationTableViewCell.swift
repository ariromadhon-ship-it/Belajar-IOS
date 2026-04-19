import UIKit

class DestinationTableViewCell: UITableViewCell {
    
    static let reuseIdentifier = "DestinationCell"
    
    let destinationImageView = UIImageView()
    let nameLabel = UILabel()
    let countryLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        // Configure Image View
        destinationImageView.contentMode = .scaleAspectFill
        destinationImageView.clipsToBounds = true
        destinationImageView.backgroundColor = UIColor.lightGray
        contentView.addSubview(destinationImageView)
        
        // Configure Name Label
        nameLabel.font = UIFont.boldSystemFont(ofSize: 16)
        nameLabel.textColor = .black
        nameLabel.numberOfLines = 0
        contentView.addSubview(nameLabel)
        
        // Configure Country Label
        countryLabel.font = UIFont.systemFont(ofSize: 12)
        countryLabel.textColor = .gray
        contentView.addSubview(countryLabel)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        destinationImageView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        countryLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Image View Constraints
        NSLayoutConstraint.activate([
            destinationImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            destinationImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            destinationImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
            destinationImageView.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        // Name Label Constraints
        NSLayoutConstraint.activate([
            nameLabel.leadingAnchor.constraint(equalTo: destinationImageView.trailingAnchor, constant: 12),
            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12)
        ])
        
        // Country Label Constraints
        NSLayoutConstraint.activate([
            countryLabel.leadingAnchor.constraint(equalTo: destinationImageView.trailingAnchor, constant: 12),
            countryLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 4),
            countryLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12)
        ])
    }
    
    func configure(with destination: Destination) {
        nameLabel.text = destination.name
        countryLabel.text = destination.country
        
        // Set placeholder image
        destinationImageView.image = UIImage(named: destination.imageName) ?? UIImage(named: "placeholder")
    }
}
