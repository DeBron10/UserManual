CREATE TABLE manual_index (
  index_id INT AUTO_INCREMENT PRIMARY KEY,
  index_name VARCHAR(255) NOT NULL
);

CREATE TABLE manual_subindex (
  subindex_id INT AUTO_INCREMENT PRIMARY KEY,
  index_id INT,
  subindex_name VARCHAR(255) NOT NULL,
  FOREIGN KEY (index_id) REFERENCES manual_index(index_id)
);

CREATE TABLE manual_content (
  content_id INT AUTO_INCREMENT PRIMARY KEY,
  subindex_id INT,
  content_text TEXT NOT NULL,
  FOREIGN KEY (subindex_id) REFERENCES manual_subindex(subindex_id)
);


INSERT INTO manual_index (index_name)
VALUES 
  ('Getting Started'),
  ('Installation Guide'),
  ('User Manual');


INSERT INTO manual_subindex (index_id, subindex_name)
VALUES 
  (1, 'Introduction'),
  (1, 'System Requirements'),
  (2, 'Windows Installation'),
  (2, 'Linux Installation'),
  (3, 'Dashboard Overview'),
  (3, 'Settings Page');


INSERT INTO manual_content (subindex_id, content_text)
VALUES 
  (1, 'This section introduces the product and its purpose.'),
  (2, 'Minimum 4GB RAM, 2GHz processor, and 500MB disk space required.'),
  (3, 'Step-by-step guide to install on Windows.'),
  (4, 'Step-by-step guide to install on Linux.'),
  (5, 'Overview of the main dashboard and key metrics.'),
  (6, 'Detailed description of each setting and its effect.');

