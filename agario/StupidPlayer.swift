//
//  StupidPlayer.swift
//  agario
//
//  Created by Ming on 9/22/15.
//
//

import SpriteKit

class StupidPlayer : Player {
    override init(playerName name : String, parentNode parent : SKNode) {
        super.init(playerName: name, parentNode: parent)
        self.position = randomPosition()
        self.move(randomPosition())
        scheduleRunRepeat(self, time: 5.0) {
            self.move(randomPosition())
        }
        scheduleRunRepeat(self, time: 60.0) {
            self.split()
        }
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}