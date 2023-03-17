defmodule KajoolyTemplateTailwindWeb.GenericLive.Colors do

  import Phoenix.LiveView
  import Phoenix.LiveView.Helpers
    @doc """

    Colors

    Live Controler code:

      import KajoolyTemplateTailwindWeb.GenericLive.Color



    iex> rand_color_leter("R")

    %{color: "#008400", border_color: "#00C600"}

  """
  def rand_color_leter(letter) do
    ltt = String.slice(letter, 0,1)
    #Color default
    out = %{color: "#000084", border_color: "#0000c6", class: "primary" , tw: "blue" }
    #Case color letter
    out = if Enum.member?(["F", "G", "Q", "W", "E"], String.capitalize(ltt)) do
      %{color: "#848400", border_color: "#C6c600", class: "warning", tw: "orange" }
    else out end

     out = if Enum.member?([ "A", "S", "B", "H", "V"], String.capitalize(ltt)) do
      %{color: "#000084", border_color: "#0000c6", class: "primary", tw: "indigo" }
    else out end

    out = if Enum.member?(["R", "T", "N"], String.capitalize(ltt)) do
      %{color: "#008400", border_color: "#00C600", class: "success", tw: "green" }
    else out end

    out = if Enum.member?([ "Y", "X", "L", "Q"], String.capitalize(ltt)) do
      %{color: "#d63384", border_color: "#801f4f", class: "pink", tw: "pink" }
    else out end

    out = if Enum.member?(["U", "I", "O", "Z"], String.capitalize(ltt)) do
      %{color: "#8540f5", border_color: "#3d0a91", class: "danger", tw: "red" }
    else out end

     out = if Enum.member?([ "J", "K", "M"], String.capitalize(ltt)) do
      %{color: "#840084", border_color: "#C600c6", class: "purple", tw: "purple" }
    else out end

    out = if Enum.member?(["P", "Ñ", "D", "C"], String.capitalize(ltt)) do
      %{color: "#008484", border_color: "#00C6c6", class: "info", tw_bg: "sky", tw_ring: "sky" }
    else out end


    out
  end

end
