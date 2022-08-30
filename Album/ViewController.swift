//
//  ViewController.swift
//  Album
//
//  Created by Mitya Kim on 8/29/22.
//

import UIKit

class ViewController: UIViewController {
    
    let songs = ["Overture",
                 "The Grid",
                 "The Son of Flynn",
                 "Recognizer",
                 "Armory",
                 "Arena",
                 "Rinzler",
                 "The Game Has Changed",
                 "Outlands",
                 "Adagio for TRON",
                 "Nocturne",
                 "End of Line",
                 "Derezzed",
                 "Fall",
                 "Solar Sailer",
                 "Rectifier",
                 "Disc Wars",
                 "C.L.U.",
                 "Arrival",
                 "Flynn Lives",
                 "TRON Legacy (End Titles)",
                 "Finale",
    ]
    
    static let headerKind = "header-element-kind"
    
    var collectionView = UICollectionView()

    override func viewDidLoad() {
        super.viewDidLoad()
        layout()
    }
}

// MARK: - Layout
extension ViewController {
    func layout() {
        
    }
    
    func createLayout() -> UICollectionViewLayout {
        // listCell layout
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(44))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        let section = NSCollectionLayoutSection(group: group)
        section.interGroupSpacing = 5
        section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10)
        
        // header layout
        let headerFooterSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .estimated(300))
        let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerFooterSize, elementKind: ViewController.headerKind, alignment: .top)
        
        section.boundarySupplementaryItems = [sectionHeader]
        
        let layout = UICollectionViewCompositionalLayout(section: section)
        return layout
    }
}
