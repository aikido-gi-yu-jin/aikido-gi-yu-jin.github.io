require 'test_helper'

def on_homepage
  visit "/"
end

class UserVisitsHomepage < AcceptanceTest
  def test_shows_carousel
    on_homepage
    assert has_css?("#carousel"), "Carousel should be rendered"
    within("#carousel") do
      assert_content "Aikido Gi Yu Jin"
      assert_content "Bellahouston"
    end
  end

  def test_shows_three_circles
    on_homepage
    assert has_css?("#circles"), "Circles should be rendered"
    within("#circles") do
      assert has_css?("#our_sensei"), "Circles should be rendered"
      assert has_css?("#practice_times"), "Circles should be rendered"
      assert has_css?("#contact"), "Circles should be rendered"
    end
  end

  def test_shows_aikido_feature
    on_homepage
    assert has_css?("#aikido_feature"), "Aikido feature should be rendered"
  end

  def test_shows_suitable_for_all_feature
    on_homepage
    assert has_css?("#suitable_for_all_feature"), "Aikido is suitable for all feature should be rendered"
  end

  def test_shows_demos_feature
    on_homepage
    assert has_css?("#demos_feature"), "Demos feature should be rendered"
  end

  def test_shows_footer
    on_homepage
    assert has_css?("#footer"), "Footer should be rendered"
    within "#footer" do
      assert_content "© 2015 Aikido Gi Yu Jin"
    end
  end
end