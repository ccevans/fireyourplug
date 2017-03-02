class Post < ActiveRecord::Base

	has_many :categorizations
	has_many :categories, through: :categorizations 

	scope :art, -> { where(:tag => "Art") }
	scope :music, -> { where(:tag => "Music") }
	scope :food, -> { where(:tag => "Food") }
	scope :nightlife, -> { where(:tag => "Nightlife") }
	scope :drinks, -> { where(:tag => "Drinks") }
	scope :outdoors, -> { where(:tag => "Outdoors") }
	scope :sports, -> { where(:tag => "Sports") }
	scope :theatre, -> { where(:tag => "Theatre") }
	scope :culture, -> { where(:tag => "Culture") }
	scope :fitness, -> { where(:tag => "Fitness") }

	#scope :art, -> (categories) { where(categories: '{1}') }




end
