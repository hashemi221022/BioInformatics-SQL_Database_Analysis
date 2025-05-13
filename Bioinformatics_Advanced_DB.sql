-- Create the database
CREATE DATABASE Bioinformatics_Advanced_DB;
USE Bioinformatics_Advanced_DB;

-- Create a table for organisms
CREATE TABLE Organisms (
    OrganismID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Taxonomy VARCHAR(255)
);

-- Create a table for genes
CREATE TABLE Genes (
    GeneID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    OrganismID INT,
    Functions VARCHAR(255),
    FOREIGN KEY (OrganismID) REFERENCES Organisms(OrganismID)
);

-- Create a table for proteins
CREATE TABLE Proteins (
    ProteinID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    GeneID INT,
    Functions VARCHAR(255),
    FOREIGN KEY (GeneID) REFERENCES Genes(GeneID)
);

-- Create a table for sequences
CREATE TABLE Sequences (
    SequenceID INT AUTO_INCREMENT PRIMARY KEY,
    ProteinID INT,
    Sequence TEXT NOT NULL,
    FOREIGN KEY (ProteinID) REFERENCES Proteins(ProteinID)
);

-- Create a table for diseases
CREATE TABLE Diseases (
    DiseaseID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Description TEXT
);

-- Create a linking table for genes and diseases
CREATE TABLE GeneDiseases (
    GeneID INT,
    DiseaseID INT,
    FOREIGN KEY (GeneID) REFERENCES Genes(GeneID),
    FOREIGN KEY (DiseaseID) REFERENCES Diseases(DiseaseID),
    PRIMARY KEY (GeneID, DiseaseID)
);

-- Create a linking table for proteins and diseases
CREATE TABLE ProteinDiseases (
    ProteinID INT,
    DiseaseID INT,
    FOREIGN KEY (ProteinID) REFERENCES Proteins(ProteinID),
    FOREIGN KEY (DiseaseID) REFERENCES Diseases(DiseaseID),
    PRIMARY KEY (ProteinID, DiseaseID)
);

-- Create a table for experiments
CREATE TABLE Experiments (
    ExperimentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Date DATE,
    Researcher VARCHAR(100)
);

-- Create a linking table for genes and experiments
CREATE TABLE GeneExperiments (
    GeneID INT,
    ExperimentID INT,
    FOREIGN KEY (GeneID) REFERENCES Genes(GeneID),
    FOREIGN KEY (ExperimentID) REFERENCES Experiments(ExperimentID),
    PRIMARY KEY (GeneID, ExperimentID)
);

-- Create a linking table for proteins and experiments
CREATE TABLE ProteinExperiments (
    ProteinID INT,
    ExperimentID INT,
    FOREIGN KEY (ProteinID) REFERENCES Proteins(ProteinID),
    FOREIGN KEY (ExperimentID) REFERENCES Experiments(ExperimentID),
    PRIMARY KEY (ProteinID, ExperimentID)
);

-- Create a table for genetic variants
CREATE TABLE Variants (
    VariantID INT AUTO_INCREMENT PRIMARY KEY,
    GeneID INT,
    VariantType VARCHAR(50),
    Description TEXT,
    FOREIGN KEY (GeneID) REFERENCES Genes(GeneID)
);

-- Insert mock data into Organisms
INSERT INTO Organisms (Name, Taxonomy) VALUES
('Homo sapiens', 'Eukaryota; Metazoa; Chordata; Mammalia; Primates'),
('Escherichia coli', 'Bacteria; Proteobacteria; Gammaproteobacteria; Enterobacterales'),
('Saccharomyces cerevisiae', 'Eukaryota; Fungi; Ascomycota; Saccharomycotina; Saccharomycetes');

-- Insert mock data into Genes
INSERT INTO Genes (Name, OrganismID, Functions) VALUES
('BRCA1', 1, 'DNA repair'),
('lacZ', 2, 'Beta-galactosidase production'),
('ACT1', 3, 'Actin protein production'),
('TP53', 1, 'Tumor suppression');

-- Insert mock data into Proteins
INSERT INTO Proteins (Name, GeneID, Functions) VALUES
('BRCA1 Protein', 1, 'Tumor suppression'),
('Beta-galactosidase', 2, 'Lactose metabolism'),
('Actin', 3, 'Cell structure and movement'),
('p53 Protein', 4, 'Apoptosis regulation');

-- Insert mock data into Sequences
INSERT INTO Sequences (ProteinID, Sequence) VALUES
(1, 'MRTNPLHPPY... (truncated for brevity)'),
(2, 'MKPVTLYDVN... (truncated for brevity)'),
(3, 'MSKGEELFTG... (truncated for brevity)'),
(4, 'MADQLTEEQI... (truncated for brevity)');

-- Insert mock data into Diseases
INSERT INTO Diseases (Name, Description) VALUES
('Breast Cancer', 'A malignant tumor that starts in the cells of the breast.'),
('Lactose Intolerance', 'Inability to digest lactose, a sugar found in milk.'),
('Yeast Structural Defect', 'A defect in the cytoskeletal structure of yeast cells.');

-- Link Genes to Diseases
INSERT INTO GeneDiseases (GeneID, DiseaseID) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Link Proteins to Diseases
INSERT INTO ProteinDiseases (ProteinID, DiseaseID) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Insert mock data into Experiments
INSERT INTO Experiments (Name, Date, Researcher) VALUES
('BRCA1 Functional Analysis', '2025-01-15', 'Dr. Smith'),
('Lactose Operon Study', '2024-12-10', 'Dr. Johnson'),
('Yeast Cytoskeleton Dynamics', '2023-07-20', 'Dr. Lee');

-- Link Genes to Experiments
INSERT INTO GeneExperiments (GeneID, ExperimentID) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Link Proteins to Experiments
INSERT INTO ProteinExperiments (ProteinID, ExperimentID) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Insert mock data into Variants
INSERT INTO Variants (GeneID, VariantType, Description) VALUES
(1, 'SNP', 'Single nucleotide polymorphism in BRCA1 associated with breast cancer risk'),
(3, 'Deletion', 'Deletion in ACT1 gene leading to structural defects in yeast');