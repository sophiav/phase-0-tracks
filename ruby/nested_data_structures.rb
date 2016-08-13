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


# Find how many parks 'castro' neighborhood has
sf_districts[:castro][:parks].length

# Find out how many sushi places mission has
sf_districts[:mission][:restaurants][:asian][:sushi]

# Change the number of italian restaurants in castro to 10
p sf_districts[:castro][:restaurants][:italian]
sf_districts[:castro][:restaurants][:italian] = 10
p sf_districts[:castro][:restaurants][:italian]

# Add a new park in the 'tenderloin'
sf_districts[:tenderloin][:parks].push('Tenderloin Park')
p sf_districts[:tenderloin][:parks]

# A new greek restaurant opened in the mission. Add it to the list
sf_districts[:mission][:restaurants].store(:greek, 1)


