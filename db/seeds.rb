# -*- coding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
[
  {:country_id => 1 ,    :site_id => 1,    :category_id => 1},
  {:country_id => 2 ,    :site_id => 2,    :category_id => 2},
  {:country_id => 1 ,    :site_id => 3,    :category_id => 3},
  {:country_id => 2 ,    :site_id => 4,    :category_id => 4},
  {:country_id => 1 ,    :site_id => 5,    :category_id => 1},
].each do |attributes|
  Assistance.create(attributes)
end

[
  {:text => "Menu", :assistance_id => 1,    :language_id => 1, :pronunciation => "Menu"},
  {:text => "Menu", :assistance_id => 1,    :language_id => 2,:pronunciation => "Menú"},
  {:text => "¿Hola, Cómo estás?", :assistance_id => 2,    :language_id => 2, :pronunciation => "ola, como estas"},
  {:text => "Hi, How are you?", :assistance_id => 2,    :language_id => 1,:pronunciation => "jay, jou ar iu"},
  {:text => "¿Cuánto cuesta?", :assistance_id => 3,    :language_id => 2, :pronunciation => "cuanto cuesta"},
  {:text => "How much is it?", :assistance_id => 3,    :language_id => 1,:pronunciation => "jou mach is it"},
  {:text => "Donde es el baño", :assistance_id => 4,    :language_id => 2, :pronunciation => "donde esta el banio"},
  {:text => "Where is the bathroom", :assistance_id => 4,    :language_id => 1,:pronunciation => "uer is de batrum"},
  {:text => "What is the lunch", :assistance_id => 5,    :language_id => 1, :pronunciation => "uat is de lonch"},
  {:text => "Qué hay de almuerzo", :assistance_id => 5,    :language_id => 2,:pronunciation => "ke ay de almuerzo"}
].each do |attributes|
  Translation.find_or_create_by_text(attributes)
end
