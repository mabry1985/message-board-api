class Seed

  def self.begin
    seed = Seed.new
    seed.generate_messages_and_groups
  end

  def generate_messages_and_groups

    25.times do |i|
      group = Group.create!(
        title: Faker::Creature::Dog.meme_phrase.titleize
      )

      10.times do |index|
        message = group.message.create!(
          title: Faker::Verb.past_participle,
          author: Faker::Creature::Dog.breed,
          body: Faker::TvShows::TheFreshPrinceOfBelAir.quote
        )
        group.save
        puts "#{i} created"
      end

    end

  end
end
Seed.begin
