
require 'minitest/autorun'
require 'json'

class TestPortfolio < Minitest::Test
  def setup
    file = File.read('./data/portfolio_data.json')
    @data = JSON.parse(file)
  end

  def test_proyectos_cargados
    assert_equal 3, @data["proyectos"].length
  end

  def test_nombre_de_primer_proyecto
    assert_equal "Redes", @data["proyectos"][0]["nombre"]
  end
end
