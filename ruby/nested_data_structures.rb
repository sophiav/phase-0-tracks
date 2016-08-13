# Design a nested Data Structure to represent a real-world construct

sf_districts = {
  mission: {
    restaurants: {
      mexican: 15,
      asian: {
        chinese: 5,
        sushi: 4
      },
      italian: 2
    },
    parks: ['Mission Dollores', 'Kid Power Park']
    },
  castro: {
    restaurants:{
      mexican: 10,
      asian: {
        chinese: 4,
        sushi: 6
      },
      italian: 6
      },
    parks: ['Corona Heights', 'Duboce Park'],
    },
  tenderloin: {
    restaurants: {
      mexican: 9,
      asian: {
        chinese: 6,
        sushi: 8
      },
      italian: 3
    },
    parks: []
  }
}