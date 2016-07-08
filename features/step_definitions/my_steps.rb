Given(/^que abri la aplicacion$/) do
  visit '/'
end

Then(/^debo ver el "(.*?)"$/) do |texto|
  last_response.body.should =~ /#{texto}/m
end

Given(/^introduzco en el campo "(.*?)" el nombre de "(.*?)"$/) do |campo, nombre|
  fill_in(campo, :with => nombre)
end

Given(/^selecciono "(.*?)"$/) do |boton|
  click_button("Facil")
end
