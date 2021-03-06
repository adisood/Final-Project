namespace :export do
  task :seeds_format => :environment do
    PennCourse.order(:id).all.each do |penncourse|
      puts "PennCourse.create(#{penncourse.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
    
    Recommendation.order(:id).all.each do |recommendation|
      puts "Recommendation.create(#{recommendation.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end

    PennCourseRecommendation.order(:id).all.each do |penncourserecommendation|
      puts "PennCourseRecommendation.create(#{penncourserecommendation.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end

  end
end
