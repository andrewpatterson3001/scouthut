User.create(type: 'Scout', name: "Charlie Spires", email:
"c@s.com", password_hash: "1234", birthday: "01/01/2000")

User.create(type: 'Scout', name: "Will Eabel", email:
"w@e.com", password_hash: "1234", birthday: "12/12/1997")

User.create(type: 'Scoutmaster', name: "Walter Rush", email:
"w@r.com", password_hash: "1234", birthday: "01/02/1948")

Rank.create(title: "Tenderfoot", descriptive_url: "http://www.boyscouttrail.com/boy-scouts/tenderfoot-scouts.asp", image:"http://www.boyscouttrail.com/i/boyscout/tenderfootbadge.gif")
Rank.create(title: "2nd Class", descriptive_url: "http://www.boyscouttrail.com/boy-scouts/2ndclass-scouts.asp", image:"http://www.boyscouttrail.com/i/boyscout/2ndclassbadge.gif")
Rank.create(title: "1st Class", descriptive_url: "http://www.boyscouttrail.com/boy-scouts/1stclass-scouts.asp", image:"http://www.boyscouttrail.com/i/boyscout/1stclassbadge.gif")
Rank.create(title: "Star", descriptive_url: "http://www.boyscouttrail.com/boy-scouts/star-scouts.asp", image:"http://www.boyscouttrail.com/i/boyscout/starbadge.gif")
Rank.create(title: "Life", descriptive_url: "http://www.boyscouttrail.com/boy-scouts/life-scouts.asp", image:"http://www.boyscouttrail.com/i/boyscout/lifebadge.gif")
Rank.create(title: "Eagle", descriptive_url: "http://www.boyscouttrail.com/boy-scouts/eagle-scouts.asp", image:"http://www.boyscouttrail.com/i/boyscout/eaglebadge.gif")

Skill.create(title: "Archery",descriptive_url: "http://www.boyscouttrail.com/boy-scouts/meritbadges/archery-merit-badge.asp",scoutmaster_id: 1,image: "http://www.boyscouttrail.com/i/boyscout/meritbadges/archery.gif")

Skill.create(title: "Fishing",descriptive_url: "http://www.boyscouttrail.com/boy-scouts/meritbadges/fishing-merit-badge.asp",scoutmaster_id: 1,image: "http://www.boyscouttrail.com/i/boyscout/meritbadges/fishing.gif")

Skill.create(title: "Digital Technology",descriptive_url: "http://boyscouttrail.com/boy-scouts/meritbadges/digital-technology-merit-badge.asp",scoutmaster_id: 1,image: "http://boyscouttrail.com/i/boyscout/meritbadges/digitaltechnology.gif")

Patch.create(evidence:"http://scouthut.com/users/1/ranks/1",rank_id: 1,scout_id: 1)
Patch.create(evidence:"http://scouthut.com/users/1/ranks/2",rank_id: 2,scout_id: 1)
Patch.create(evidence:"http://scouthut.com/users/2/ranks/1",rank_id: 1,scout_id: 2)
Patch.create(evidence:"http://scouthut.com/users/2/ranks/2",rank_id: 2,scout_id: 2)
Patch.create(evidence:"http://scouthut.com/users/2/ranks/3",rank_id: 3,scout_id: 2)

Badge.create(evidence:"http://scouthut.com/users/1/skills/1", skill_id: 1,scout_id: 1)
Badge.create(evidence:"http://scouthut.com/users/2/skills/1", skill_id: 1,scout_id: 2)
Badge.create(evidence:"http://scouthut.com/users/2/skills/2", skill_id: 2,scout_id: 2)
Badge.create(evidence:"http://scouthut.com/users/2/skills/3", skill_id: 3,scout_id: 2)





