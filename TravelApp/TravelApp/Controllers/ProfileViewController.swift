import UIKit

class ProfileViewController: UIViewController {
    
    let profileImageView = UIImageView()
    let nameLabel = UILabel()
    let emailLabel = UILabel()
    let bioLabel = UILabel()
    let bioTextView = UITextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = "About Me"
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: nil, action: nil)
        
        setupViews()
        setupConstraints()
        configureContent()
    }
    
    // MARK: - Setup Views
    
    private func setupViews() {
        // Profile Image
        profileImageView.contentMode = .scaleAspectFill
        profileImageView.clipsToBounds = true
        profileImageView.layer.cornerRadius = 60
        profileImageView.backgroundColor = UIColor.lightGray
        view.addSubview(profileImageView)
        
        // Name Label
        nameLabel.font = UIFont.boldSystemFont(ofSize: 24)
        nameLabel.textAlignment = .center
        nameLabel.textColor = .black
        view.addSubview(nameLabel)
        
        // Email Label
        emailLabel.font = UIFont.systemFont(ofSize: 14)
        emailLabel.textAlignment = .center
        emailLabel.textColor = .gray
        view.addSubview(emailLabel)
        
        // Bio Section Title
        bioLabel.font = UIFont.boldSystemFont(ofSize: 16)
        bioLabel.text = "About:"
        bioLabel.textColor = .black
        view.addSubview(bioLabel)
        
        // Bio Text View
        bioTextView.font = UIFont.systemFont(ofSize: 14)
        bioTextView.isScrollEnabled = false
        bioTextView.isEditable = false
        bioTextView.textColor = .darkGray
        view.addSubview(bioTextView)
    }
    
    private func setupConstraints() {
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        bioLabel.translatesAutoresizingMaskIntoConstraints = false
        bioTextView.translatesAutoresizingMaskIntoConstraints = false
        
        // Profile Image Constraints
        NSLayoutConstraint.activate([
            profileImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            profileImageView.widthAnchor.constraint(equalToConstant: 120),
            profileImageView.heightAnchor.constraint(equalToConstant: 120)
        ])
        
        // Name Label Constraints
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 20),
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])
        
        // Email Label Constraints
        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
            emailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            emailLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])
        
        // Bio Label Constraints
        NSLayoutConstraint.activate([
            bioLabel.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 30),
            bioLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            bioLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])
        
        // Bio Text View Constraints
        NSLayoutConstraint.activate([
            bioTextView.topAnchor.constraint(equalTo: bioLabel.bottomAnchor, constant: 8),
            bioTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            bioTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            bioTextView.heightAnchor.constraint(greaterThanOrEqualToConstant: 150)
        ])
    }
    
    // MARK: - Configure Content
    
    private func configureContent() {
        // Update this with your real information
        nameLabel.text = "Ari Romadhon"
        emailLabel.text = "arirahmatromadhon@gmail.com"
        
        let bioText = """
        Hello! I'm a passionate iOS developer and travel enthusiast.

        I created this Travel Destinations app to showcase my iOS development skills, including:
        - Swift programming and MVC architecture
        - Storyboard-based navigation
        - Table View implementation with custom cells
        - Layout Anchors for programmatic UI design
        - Data management and model design

        I love exploring new places and learning new technologies. This app combines both passions!

        Feel free to reach out if you'd like to discuss iOS development or travel recommendations.
        """
        bioTextView.text = bioText
        
        // Set profile image - replace with your photo
        profileImageView.image = UIImage(named: "profile") ?? UIImage(named: "placeholder")
    }
}
