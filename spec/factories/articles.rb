FactoryBot.define do
  factory :article do
    title "How To Completely Change #{Faker::Science.element}"
    body {hipsterize.sample}
    user nil
  end
end

def hipsterize
  [
    "Lorem ipsum dolor amet wolf fanny pack hell of in enim gentrify, bicycle rights shoreditch meh. Celiac seitan minim, tempor next level et aliquip kinfolk subway tile. Tumblr kogi tacos, pour-over live-edge subway tile raclette af fingerstache pok pok cardigan occaecat bespoke man bun pork belly. Mlkshk etsy hell of, biodiesel yr yuccie godard austin 90's farm-to-table esse.",

    "Marfa hoodie squid literally id cred hashtag venmo leggings art party vice fingerstache roof party vexillologist pariatur. Ugh celiac hell of sint, vexillologist af ipsum reprehenderit flannel laboris. Narwhal chambray YOLO bushwick. Master cleanse street art in, quis irony tacos before they sold out aliquip tofu 3 wolf moon activated charcoal roof party leggings synth. Ennui health goth glossier, aute cornhole messenger bag lumbersexual polaroid. Stumptown authentic craft beer locavore. Copper mug banh mi offal, tempor literally bespoke jean shorts voluptate tofu.",

    "You probably haven't heard of them occaecat franzen, williamsburg jianbing taxidermy intelligentsia mumblecore consectetur yr YOLO. Scenester tilde ut, gochujang ullamco banh mi nostrud mustache iceland activated charcoal raw denim kickstarter eu sriracha enamel pin. Selfies pug DIY polaroid, cliche crucifix voluptate bicycle rights iPhone you probably haven't heard of them tilde. Locavore quis la croix distillery, jean shorts fam cloud bread gastropub migas mlkshk cupidatat sriracha blog tote bag vexillologist. In master cleanse hell of elit jianbing gluten-free la croix et cornhole biodiesel fashion axe marfa yuccie."
  ]
end
