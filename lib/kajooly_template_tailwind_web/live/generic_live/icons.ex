defmodule KajoolyTemplateTailwindWeb.GenericLive.Icons do
  import Phoenix.LiveView
  import Phoenix.LiveView.Helpers
  import KajoolyTemplateTailwindWeb.GenericLive.Colors
  import KajoolyTemplateTailwindWeb.GenericLive.Text

  @doc """

    Icons

    Live Controler code:

      import KajoolyTemplateTailwindWeb.GenericLive.Icons

    ## Examples
      Normal SVG
        <.icons_dots_vertical></.icons_dots_vertical>

        <.icons_person_circle></.icons_person_circle>

      Special SVG


      +++ name_user +++
          <.name_user text="BK" />
          <.name_user class="me-3" text="Nombre" width="89" height="89"/>
          <.name_user  text="Nombre Completo"/>

      List Normal SVG:

        <.icons_dots_vertical></.icons_dots_vertical>


    """



  def name_user(assigns) do
    text =  text_to_two_char(assigns[:text])
    cicle_color =   assigns[:cicle_color] || rand_color_leter(text)[:color]
    border_color =  assigns[:border_color] || rand_color_leter(text)[:border_color]
    border_size =   assigns[:border_size] || "1.2001"
    text_color =    assigns[:text_color] || "#f4ffffdd"
    width =   assigns[:width] || "32"
    height =  assigns[:height] || "32"
    class =   assigns[:class]||""
    id = assigns[:id] || gen_id_key()
    ~H"""
      <svg
        width={width}
        height={height}
        class={class}
        viewBox="0 0 16.933333 16.933334"
        version="1.1"
        id={id}
        inkscape:version="1.1.1 (c3084ef, 2021-09-22)"
        sodipodi:docname="user_circle.svg"
        xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
        xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
        xmlns="http://www.w3.org/2000/svg"
        xmlns:svg="http://www.w3.org/2000/svg">
        <sodipodi:namedview
          id={"namedview12517#{id}"}
          pagecolor="#505050"
          bordercolor="#ffffff"
          borderopacity="1"
          inkscape:pageshadow="0"
          inkscape:pageopacity="0"
          inkscape:pagecheckerboard="1"
          inkscape:document-units="mm"
          showgrid="false"
          units="px"
          inkscape:zoom="3.4066218"
          inkscape:cx="27.153"
          inkscape:cy="25.244951"
          inkscape:window-width="1386"
          inkscape:window-height="679"
          inkscape:window-x="0"
          inkscape:window-y="25"
          inkscape:window-maximized="0"
          inkscape:current-layer={"layer1#{id}"} />
        <defs
          id={"defs12512#{id}"}>
          <filter
            inkscape:collect="always"
            style="color-interpolation-filters:sRGB"
            id={"filter11352#{id}"}
            x="-0.010374064"
            y="-0.016006365"
            width="1.0207481"
            height="1.0320127">
            <feGaussianBlur
              inkscape:collect="always"
              stdDeviation="0.098723798"
              id={"feGaussianBlur11354#{id}"} />
          </filter>
        </defs>
        <g
          inkscape:label="Capa 1"
          inkscape:groupmode="layer"
          id={"layer1#{id}"}>
          <ellipse
            style={"fill:#{cicle_color};stroke:#{border_color};stroke-width:#{border_size};stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1;fill-opacity:1"}
            id={"path8295#{id}"}
            cx="8.4657431"
            cy="8.4657431"
            rx="7.9593506"
            ry="7.9531631" />
          <text
            xml:space="preserve"
            style={"font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:20.3599px;line-height:1.25;font-family:sans-serif;-inkscape-font-specification:'sans-serif, Normal';font-variant-ligatures:normal;font-variant-caps:normal;font-variant-numeric:normal;font-variant-east-asian:normal;letter-spacing:-1px;opacity:0.8;fill:#{text_color};fill-opacity:1;stroke:none;filter:url(#filter11352#{id})"}
            x="2.2092044"
            y="23.6318"
            id={"text1713#{id}"}
            transform="matrix(0.42059316,0,0,0.44182358,2.0728769,1.3151794)"><tspan
              sodipodi:role="line"
              id={"tspan1711#{id}"}
              x="2.2092044"
              y="23.6318"
              style={"font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:20.3599px;font-family:sans-serif;-inkscape-font-specification:'sans-serif, Normal';font-variant-ligatures:normal;font-variant-caps:normal;font-variant-numeric:normal;font-variant-east-asian:normal;fill:#{text_color};fill-opacity:1"}
              dx="-0.059999999"><%= text %></tspan></text>
        </g>
      </svg>
    """
  end
  def icons_dots_vertical(assigns) do
    ~H"""
      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-three-dots-vertical" viewBox="0 0 16 16">
        <path d="M9.5 13a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z"/>
      </svg>
    """
  end

  def icons_plus_lg(assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_plus_lg#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"currentColor"}
     class={"bi bi-plus-lg #{assigns[:class]}"} viewBox="0 0 16 16">
      <path fill-rule="evenodd" d="M8 2a.5.5 0 0 1 .5.5v5h5a.5.5 0 0 1 0 1h-5v5a.5.5 0 0 1-1 0v-5h-5a.5.5 0 0 1 0-1h5v-5A.5.5 0 0 1 8 2Z"/>
    </svg>
    """
  end

  def icons_person_circle(assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg"  id={assigns[:id]||"icons_plus_lg#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"currentColor"} class={"bi bi-person-circle #{assigns[:class]} "} viewBox="0 0 16 16">
      <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
      <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
    </svg>
    """
  end

  def icons_search(assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
      <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
    </svg>
    """
  end

  @spec icons_plus(any) :: Phoenix.LiveView.Rendered.t()
  def icons_plus(assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus" viewBox="0 0 16 16">
      <path fill-rule="evenodd" d="M8 3.5a.5.5 0 0 1 .5.5v4a.5.5 0 0 1-.5.5H4a.5.5 0 0 1 0-1h3.5V4a.5.5 0 0 1 .5-.5z"/>
      <path fill-rule="evenodd" d="M7.5 8a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1H8.5V12a.5.5 0 0 1-1 0V8z"/>
    </svg>
    """
  end

  def icons_close(assigns) do
    ~H"""
      <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_close#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"currentColor"} class={"bi bi-x #{assigns[:class]}"} viewBox="0 0 16 16">
        <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
      </svg>
    """
  end

  def icons_check_circle(assigns) do
    ~H"""
      <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_check_circle#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"currentColor"} class={"bi bi-check2-circle #{assigns[:class]}"} viewBox="0 0 16 16">
        <path d="M2.5 8a5.5 5.5 0 0 1 8.25-4.764.5.5 0 0 0 .5-.866A6.5 6.5 0 1 0 14.5 8a.5.5 0 0 0-1 0 5.5 5.5 0 1 1-11 0z"/>
        <path d="M15.354 3.354a.5.5 0 0 0-.708-.708L8 9.293 5.354 6.646a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l7-7z"/>
      </svg>
    """
  end

  def icons_person_badge (assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_person_badge#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"currentColor"}  class={"bi bi-person-badge #{assigns[:class]}"} viewBox="0 0 16 16">
      <path d="M6.5 2a.5.5 0 0 0 0 1h3a.5.5 0 0 0 0-1h-3zM11 8a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
      <path d="M4.5 0A2.5 2.5 0 0 0 2 2.5V14a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V2.5A2.5 2.5 0 0 0 11.5 0h-7zM3 2.5A1.5 1.5 0 0 1 4.5 1h7A1.5 1.5 0 0 1 13 2.5v10.795a4.2 4.2 0 0 0-.776-.492C11.392 12.387 10.063 12 8 12s-3.392.387-4.224.803a4.2 4.2 0 0 0-.776.492V2.5z"/>
    </svg>
    """
  end
  @spec icons_pencil_square(any) :: Phoenix.LiveView.Rendered.t()
  def icons_pencil_square (assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_pencil_square#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"currentColor"}  class={"bi bi-pencil-square #{assigns[:class]}"} viewBox="0 0 16 16">
      <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
      <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
    </svg>
    """
  end
  def icons_people_fill (assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_people_fill#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"currentColor"} class={"bi bi-people-fill #{assigns[:class]}"} viewBox="0 0 16 16">
      <path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
      <path fill-rule="evenodd" d="M5.216 14A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216z"/>
      <path d="M4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z"/>
    </svg>
    """
  end

  def icons_lock_fill (assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_lock_fill#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"currentColor"}  class={"bi bi-lock-fill #{assigns[:class]}"} viewBox="0 0 16 16">
      <path d="M8 1a2 2 0 0 1 2 2v4H6V3a2 2 0 0 1 2-2zm3 6V3a3 3 0 0 0-6 0v4a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2z"/>
    </svg>
    """
  end
  def icons_unlock_fill (assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_unlock_fill#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"currentColor"}  class={"bi bi-unlock-fill #{assigns[:class]}"} viewBox="0 0 16 16">
      <path d="M11 1a2 2 0 0 0-2 2v4a2 2 0 0 1 2 2v5a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V9a2 2 0 0 1 2-2h5V3a3 3 0 0 1 6 0v4a.5.5 0 0 1-1 0V3a2 2 0 0 0-2-2z"/>
    </svg>
    """
  end
  def icons_person_rolodex (assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_unlock_fill#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"currentColor"}  class={"bi bi-person-rolodex #{assigns[:class]} "} viewBox="0 0 16 16">
      <path d="M8 9.05a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5Z"/>
      <path d="M1 1a1 1 0 0 0-1 1v11a1 1 0 0 0 1 1h.5a.5.5 0 0 0 .5-.5.5.5 0 0 1 1 0 .5.5 0 0 0 .5.5h9a.5.5 0 0 0 .5-.5.5.5 0 0 1 1 0 .5.5 0 0 0 .5.5h.5a1 1 0 0 0 1-1V3a1 1 0 0 0-1-1H6.707L6 1.293A1 1 0 0 0 5.293 1H1Zm0 1h4.293L6 2.707A1 1 0 0 0 6.707 3H15v10h-.085a1.5 1.5 0 0 0-2.4-.63C11.885 11.223 10.554 10 8 10c-2.555 0-3.886 1.224-4.514 2.37a1.5 1.5 0 0 0-2.4.63H1V2Z"/>
    </svg>
    """
  end

  def icons_outline_gear (assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_unlock_fill#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"currentColor"} class={"bi bi-gear #{assigns[:class]} "} viewBox="0 0 16 16">
      <path d="M8 4.754a3.246 3.246 0 1 0 0 6.492 3.246 3.246 0 0 0 0-6.492zM5.754 8a2.246 2.246 0 1 1 4.492 0 2.246 2.246 0 0 1-4.492 0z"/>
      <path d="M9.796 1.343c-.527-1.79-3.065-1.79-3.592 0l-.094.319a.873.873 0 0 1-1.255.52l-.292-.16c-1.64-.892-3.433.902-2.54 2.541l.159.292a.873.873 0 0 1-.52 1.255l-.319.094c-1.79.527-1.79 3.065 0 3.592l.319.094a.873.873 0 0 1 .52 1.255l-.16.292c-.892 1.64.901 3.434 2.541 2.54l.292-.159a.873.873 0 0 1 1.255.52l.094.319c.527 1.79 3.065 1.79 3.592 0l.094-.319a.873.873 0 0 1 1.255-.52l.292.16c1.64.893 3.434-.902 2.54-2.541l-.159-.292a.873.873 0 0 1 .52-1.255l.319-.094c1.79-.527 1.79-3.065 0-3.592l-.319-.094a.873.873 0 0 1-.52-1.255l.16-.292c.893-1.64-.902-3.433-2.541-2.54l-.292.159a.873.873 0 0 1-1.255-.52l-.094-.319zm-2.633.283c.246-.835 1.428-.835 1.674 0l.094.319a1.873 1.873 0 0 0 2.693 1.115l.291-.16c.764-.415 1.6.42 1.184 1.185l-.159.292a1.873 1.873 0 0 0 1.116 2.692l.318.094c.835.246.835 1.428 0 1.674l-.319.094a1.873 1.873 0 0 0-1.115 2.693l.16.291c.415.764-.42 1.6-1.185 1.184l-.291-.159a1.873 1.873 0 0 0-2.693 1.116l-.094.318c-.246.835-1.428.835-1.674 0l-.094-.319a1.873 1.873 0 0 0-2.692-1.115l-.292.16c-.764.415-1.6-.42-1.184-1.185l.159-.291A1.873 1.873 0 0 0 1.945 8.93l-.319-.094c-.835-.246-.835-1.428 0-1.674l.319-.094A1.873 1.873 0 0 0 3.06 4.377l-.16-.292c-.415-.764.42-1.6 1.185-1.184l.292.159a1.873 1.873 0 0 0 2.692-1.115l.094-.319z"/>
    </svg>
  """
  end

  def icons_arrow_left (assigns) do
    ~H"""

      <svg xmlns="http://www.w3.org/2000/svg"  id={assigns[:id]||"icons_unlock_fill#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"currentColor"} class={"bi bi-arrow-left  #{assigns[:class]} "} viewBox="0 0 16 16">
        <path fill-rule="evenodd" d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8z"/>
      </svg>
    """
  end

  def icons_window_stack (assigns) do
    ~H"""
      <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_unlock_fill#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"currentColor"}  class={"bi bi-window-stack  #{assigns[:class]} "} viewBox="0 0 16 16">
        <path d="M4.5 6a.5.5 0 1 0 0-1 .5.5 0 0 0 0 1ZM6 6a.5.5 0 1 0 0-1 .5.5 0 0 0 0 1Zm2-.5a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0Z"/>
        <path d="M12 1a2 2 0 0 1 2 2 2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2 2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h10ZM2 12V5a2 2 0 0 1 2-2h9a1 1 0 0 0-1-1H2a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1Zm1-4v5a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V8H3Zm12-1V5a1 1 0 0 0-1-1H4a1 1 0 0 0-1 1v2h12Z"/>
      </svg>
    """
  end


  def icons_eye (assigns) do
    ~H"""
      <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_unlock_fill#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"currentColor"}  class={"bi bi-eye #{assigns[:class]} "} viewBox="0 0 16 16">
        <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
        <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
      </svg>
    """
  end

  def icons_exclamation_triangle_fill (assigns) do
    ~H"""
      <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_unlock_fill#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"currentColor"}  class={"bi bi-exclamation-triangle-fill  #{assigns[:class]}"} viewBox="0 0 16 16">
        <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
      </svg>
    """
  end

  def icons_trash (assigns) do
    ~H"""
      <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_unlock_fill#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"currentColor"}  class={"bi bi-trash  #{assigns[:class]}"} viewBox="0 0 16 16">
        <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
        <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
      </svg>
    """
  end
  def icons_key (assigns) do
    ~H"""
      <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_unlock_fill#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"currentColor"} class={"bi bi-key  #{assigns[:class]}"} viewBox="0 0 16 16">
        <path d="M0 8a4 4 0 0 1 7.465-2H14a.5.5 0 0 1 .354.146l1.5 1.5a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0L13 9.207l-.646.647a.5.5 0 0 1-.708 0L11 9.207l-.646.647a.5.5 0 0 1-.708 0L9 9.207l-.646.647A.5.5 0 0 1 8 10h-.535A4 4 0 0 1 0 8zm4-3a3 3 0 1 0 2.712 4.285A.5.5 0 0 1 7.163 9h.63l.853-.854a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 0 1 .708 0l.646.647.793-.793-1-1h-6.63a.5.5 0 0 1-.451-.285A3 3 0 0 0 4 5z"/>
        <path d="M4 8a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/>
      </svg>

    """
  end
  def icons_door_open (assigns) do
    ~H"""
      <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_unlock_fill#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"currentColor"} class={"bi bi-door-open  #{assigns[:class]}"} viewBox="0 0 16 16">
        <path d="M8.5 10c-.276 0-.5-.448-.5-1s.224-1 .5-1 .5.448.5 1-.224 1-.5 1z"/>
        <path d="M10.828.122A.5.5 0 0 1 11 .5V1h.5A1.5 1.5 0 0 1 13 2.5V15h1.5a.5.5 0 0 1 0 1h-13a.5.5 0 0 1 0-1H3V1.5a.5.5 0 0 1 .43-.495l7-1a.5.5 0 0 1 .398.117zM11.5 2H11v13h1V2.5a.5.5 0 0 0-.5-.5zM4 1.934V15h6V1.077l-6 .857z"/>
      </svg>
    """
  end


  def icons_body_text (assigns) do
    ~H"""
      <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_unlock_fill#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"currentColor"} class={"bi bi-body-text #{assigns[:class]}"} viewBox="0 0 16 16">
        <path fill-rule="evenodd" d="M0 .5A.5.5 0 0 1 .5 0h4a.5.5 0 0 1 0 1h-4A.5.5 0 0 1 0 .5Zm0 2A.5.5 0 0 1 .5 2h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5Zm9 0a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5Zm-9 2A.5.5 0 0 1 .5 4h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1-.5-.5Zm5 0a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5Zm7 0a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1-.5-.5Zm-12 2A.5.5 0 0 1 .5 6h6a.5.5 0 0 1 0 1h-6a.5.5 0 0 1-.5-.5Zm8 0a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5Zm-8 2A.5.5 0 0 1 .5 8h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5Zm7 0a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5Zm-7 2a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 0 1h-8a.5.5 0 0 1-.5-.5Zm0 2a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5Zm0 2a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5Z"/>
      </svg>
    """
  end


  def icons_signpost (assigns) do
    ~H"""
      <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_unlock_fill#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"currentColor"} class={"bi bi-signpost-2 #{assigns[:class]}"} viewBox="0 0 16 16">
        <path d="M7 1.414V2H2a1 1 0 0 0-1 1v2a1 1 0 0 0 1 1h5v1H2.5a1 1 0 0 0-.8.4L.725 8.7a.5.5 0 0 0 0 .6l.975 1.3a1 1 0 0 0 .8.4H7v5h2v-5h5a1 1 0 0 0 1-1V8a1 1 0 0 0-1-1H9V6h4.5a1 1 0 0 0 .8-.4l.975-1.3a.5.5 0 0 0 0-.6L14.3 2.4a1 1 0 0 0-.8-.4H9v-.586a1 1 0 0 0-2 0zM13.5 3l.75 1-.75 1H2V3h11.5zm.5 5v2H2.5l-.75-1 .75-1H14z"/>
      </svg>
    """
  end

  def icons_shop (assigns) do
    ~H"""
      <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_unlock_fill#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"currentColor"} class={"bi bi-shop #{assigns[:class]}"} viewBox="0 0 16 16">
        <path d="M2.97 1.35A1 1 0 0 1 3.73 1h8.54a1 1 0 0 1 .76.35l2.609 3.044A1.5 1.5 0 0 1 16 5.37v.255a2.375 2.375 0 0 1-4.25 1.458A2.371 2.371 0 0 1 9.875 8 2.37 2.37 0 0 1 8 7.083 2.37 2.37 0 0 1 6.125 8a2.37 2.37 0 0 1-1.875-.917A2.375 2.375 0 0 1 0 5.625V5.37a1.5 1.5 0 0 1 .361-.976l2.61-3.045zm1.78 4.275a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 1 0 2.75 0V5.37a.5.5 0 0 0-.12-.325L12.27 2H3.73L1.12 5.045A.5.5 0 0 0 1 5.37v.255a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0zM1.5 8.5A.5.5 0 0 1 2 9v6h1v-5a1 1 0 0 1 1-1h3a1 1 0 0 1 1 1v5h6V9a.5.5 0 0 1 1 0v6h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1V9a.5.5 0 0 1 .5-.5zM4 15h3v-5H4v5zm5-5a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1h-2a1 1 0 0 1-1-1v-3zm3 0h-2v3h2v-3z"/>
      </svg>
    """
  end

  def icons_shield_lock (assigns) do
    ~H"""
      <svg xmlns="http://www.w3.org/2000/svg"  id={assigns[:id]||"icons_unlock_fill#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"currentColor"}  class={"bi bi-shield-lock #{assigns[:class]}"} viewBox="0 0 16 16">
        <path d="M5.338 1.59a61.44 61.44 0 0 0-2.837.856.481.481 0 0 0-.328.39c-.554 4.157.726 7.19 2.253 9.188a10.725 10.725 0 0 0 2.287 2.233c.346.244.652.42.893.533.12.057.218.095.293.118a.55.55 0 0 0 .101.025.615.615 0 0 0 .1-.025c.076-.023.174-.061.294-.118.24-.113.547-.29.893-.533a10.726 10.726 0 0 0 2.287-2.233c1.527-1.997 2.807-5.031 2.253-9.188a.48.48 0 0 0-.328-.39c-.651-.213-1.75-.56-2.837-.855C9.552 1.29 8.531 1.067 8 1.067c-.53 0-1.552.223-2.662.524zM5.072.56C6.157.265 7.31 0 8 0s1.843.265 2.928.56c1.11.3 2.229.655 2.887.87a1.54 1.54 0 0 1 1.044 1.262c.596 4.477-.787 7.795-2.465 9.99a11.775 11.775 0 0 1-2.517 2.453 7.159 7.159 0 0 1-1.048.625c-.28.132-.581.24-.829.24s-.548-.108-.829-.24a7.158 7.158 0 0 1-1.048-.625 11.777 11.777 0 0 1-2.517-2.453C1.928 10.487.545 7.169 1.141 2.692A1.54 1.54 0 0 1 2.185 1.43 62.456 62.456 0 0 1 5.072.56z"/>
        <path d="M9.5 6.5a1.5 1.5 0 0 1-1 1.415l.385 1.99a.5.5 0 0 1-.491.595h-.788a.5.5 0 0 1-.49-.595l.384-1.99a1.5 1.5 0 1 1 2-1.415z"/>
      </svg>
    """
  end

  def icons_archive (assigns) do
    ~H"""
      <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_unlock_fill#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"currentColor"} class={"bi bi-archive #{assigns[:class]}"} viewBox="0 0 16 16">
        <path d="M0 2a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1v7.5a2.5 2.5 0 0 1-2.5 2.5h-9A2.5 2.5 0 0 1 1 12.5V5a1 1 0 0 1-1-1V2zm2 3v7.5A1.5 1.5 0 0 0 3.5 14h9a1.5 1.5 0 0 0 1.5-1.5V5H2zm13-3H1v2h14V2zM5 7.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5z"/>
      </svg>
    """
  end


  def icons_ticket_detailed (assigns) do
    ~H"""
      <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_unlock_fill#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"currentColor"} class={"bi bi-ticket-detailed #{assigns[:class]}"} viewBox="0 0 16 16">
      <path d="M4 5.5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5Zm0 5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5ZM5 7a1 1 0 0 0 0 2h6a1 1 0 1 0 0-2H5Z"/>
        <path d="M0 4.5A1.5 1.5 0 0 1 1.5 3h13A1.5 1.5 0 0 1 16 4.5V6a.5.5 0 0 1-.5.5 1.5 1.5 0 0 0 0 3 .5.5 0 0 1 .5.5v1.5a1.5 1.5 0 0 1-1.5 1.5h-13A1.5 1.5 0 0 1 0 11.5V10a.5.5 0 0 1 .5-.5 1.5 1.5 0 1 0 0-3A.5.5 0 0 1 0 6V4.5ZM1.5 4a.5.5 0 0 0-.5.5v1.05a2.5 2.5 0 0 1 0 4.9v1.05a.5.5 0 0 0 .5.5h13a.5.5 0 0 0 .5-.5v-1.05a2.5 2.5 0 0 1 0-4.9V4.5a.5.5 0 0 0-.5-.5h-13Z"/>
      </svg>
    """
  end

  def icons_caret_down_fill (assigns) do
    ~H"""
      <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_unlock_fill#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"currentColor"}  class={"bi bi-caret-down-fill #{assigns[:class]}"} viewBox="0 0 16 16">
        <path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"/>
      </svg>
    """
  end

  def icons_home (assigns) do
    ~H"""
    <svg  id={assigns[:id]||"icons_unlock_fill#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"currentColor"}  class={" #{assigns[:class]}"} fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path d="M10.707 2.293a1 1 0 00-1.414 0l-7 7a1 1 0 001.414 1.414L4 10.414V17a1 1 0 001 1h2a1 1 0 001-1v-2a1 1 0 011-1h2a1 1 0 011 1v2a1 1 0 001 1h2a1 1 0 001-1v-6.586l.293.293a1 1 0 001.414-1.414l-7-7z"></path></svg>
    """
  end
  def icons_chevron_right (assigns) do
    ~H"""
    <svg  id={assigns[:id]||"icons_unlock_fill#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"currentColor"}  class={" #{assigns[:class]}"} viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z" clip-rule="evenodd"></path></svg>
    """
  end
  def icons_view_list (assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_unlock_fill#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"currentColor"}  class={" #{assigns[:class]}"}  viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path stroke-linecap="round" stroke-linejoin="round" d="M4 6h16M4 10h16M4 14h16M4 18h16" /></svg>
    """
  end
  def icons_users (assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg"  id={assigns[:id]||"icons_unlock_fill#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"currentColor"}  class={" #{assigns[:class]}"}  fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path fill="transparent" stroke-linecap="round" stroke-linejoin="round" d="M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197M13 7a4 4 0 11-8 0 4 4 0 018 0z" /></svg>
    """
  end
  def icons_upload (assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_upload#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"currentColor"}  class={" #{assigns[:class]}"}  viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
      <path stroke-linecap="round" stroke-linejoin="round" d="M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-8l-4-4m0 0L8 8m4-4v12" />
    </svg>
    """
  end
  def icons_document_text (assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_document_text#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"currentColor"}  class={" #{assigns[:class]}"}  viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
      <path stroke-linecap="round" style="fill: #33333333;" stroke-linejoin="round" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z" />
    </svg>
    """
  end
  def icons_document (assigns) do
    ~H"""
      <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_document#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"currentColor"}  class={" #{assigns[:class]}"} viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
        <path stroke-linecap="round" style="fill: #33333333;" stroke-linejoin="round" d="M7 21h10a2 2 0 002-2V9.414a1 1 0 00-.293-.707l-5.414-5.414A1 1 0 0012.586 3H7a2 2 0 00-2 2v14a2 2 0 002 2z" />
      </svg>
    """
  end
  def icons_clock (assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_clock#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"currentColor"}  class={" #{assigns[:class]}"} viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
      <path stroke-linecap="round" style="fill: #33333333;" stroke-linejoin="round" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
    </svg>
    """
  end
  def icons_star (assigns) do
    ~H"""
      <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_star#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"currentColor"}  class={" #{assigns[:class]}"} viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
        <path stroke-linecap="round" stroke-linejoin="round" d="M11.049 2.927c.3-.921 1.603-.921 1.902 0l1.519 4.674a1 1 0 00.95.69h4.915c.969 0 1.371 1.24.588 1.81l-3.976 2.888a1 1 0 00-.363 1.118l1.518 4.674c.3.922-.755 1.688-1.538 1.118l-3.976-2.888a1 1 0 00-1.176 0l-3.976 2.888c-.783.57-1.838-.197-1.538-1.118l1.518-4.674a1 1 0 00-.363-1.118l-3.976-2.888c-.784-.57-.38-1.81.588-1.81h4.914a1 1 0 00.951-.69l1.519-4.674z" />
      </svg>
    """
  end
  def icons_x_octagon (assigns) do
    ~H"""
      <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_x_octagon#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"currentColor"}  class={" #{assigns[:class]}"} viewBox="0 0 16 16">
        <path d="M4.54.146A.5.5 0 0 1 4.893 0h6.214a.5.5 0 0 1 .353.146l4.394 4.394a.5.5 0 0 1 .146.353v6.214a.5.5 0 0 1-.146.353l-4.394 4.394a.5.5 0 0 1-.353.146H4.893a.5.5 0 0 1-.353-.146L.146 11.46A.5.5 0 0 1 0 11.107V4.893a.5.5 0 0 1 .146-.353L4.54.146zM5.1 1 1 5.1v5.8L5.1 15h5.8l4.1-4.1V5.1L10.9 1H5.1z"></path>
        <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"></path>
      </svg>
    """
  end
  def icons_bell (assigns) do
    ~H"""
      <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_bell#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"none"}  class={" #{assigns[:class]}"}  viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
        <path stroke-linecap="round" stroke-linejoin="round" d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9" />
      </svg>
    """
  end
  def icons_calendar (assigns) do
    ~H"""
      <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_calendar#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"none"}  class={" #{assigns[:class]}"} viewBox="0 0 24 24" stroke={assigns[:stroke]||"currentColor"} stroke-width="2">
        <path stroke-linecap="round" stroke-linejoin="round" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z" />
      </svg>
    """
  end
  def icons_chevron_double_down (assigns) do
    ~H"""
      <svg xmlns="http://www.w3.org/2000/svg"  id={assigns[:id]||"icons_chevron_double_down#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"none"}  class={" #{assigns[:class]}"} viewBox="0 0 24 24" stroke={assigns[:stroke]||"currentColor"} stroke-width="2">
        <path stroke-linecap="round" stroke-linejoin="round" d="M19 13l-7 7-7-7m14-8l-7 7-7-7" />
      </svg>
    """
  end
  def icons_chevron_double_up (assigns) do
    ~H"""
      <svg xmlns="http://www.w3.org/2000/svg"  id={assigns[:id]||"icons_chevron_double_up#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"none"}  class={" #{assigns[:class]}"} viewBox="0 0 24 24" stroke={assigns[:stroke]||"currentColor"} stroke-width="2">
        <path stroke-linecap="round" stroke-linejoin="round" d="M5 11l7-7 7 7M5 19l7-7 7 7" />
      </svg>
    """
  end
  def icons_chevron_double_left (assigns) do
    ~H"""
      <svg xmlns="http://www.w3.org/2000/svg"  id={assigns[:id]||"icons_chevron_double_left#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"none"}  class={" #{assigns[:class]}"} viewBox="0 0 24 24" stroke={assigns[:stroke]||"currentColor"} stroke-width="2">
        <path stroke-linecap="round" stroke-linejoin="round" d="M11 19l-7-7 7-7m8 14l-7-7 7-7" />
      </svg>
    """
  end
  def icons_chevron_double_right (assigns) do
    ~H"""
      <svg xmlns="http://www.w3.org/2000/svg"  id={assigns[:id]||"icons_chevron_double_right#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"none"}  class={" #{assigns[:class]}"} viewBox="0 0 24 24" stroke={assigns[:stroke]||"currentColor"} stroke-width="2">
        <path stroke-linecap="round" stroke-linejoin="round" d="M13 5l7 7-7 7M5 5l7 7-7 7" />
      </svg>
    """
  end
  def icons_external_link (assigns) do
    ~H"""
      <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_external_link#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"none"}  class={" #{assigns[:class]}"} viewBox="0 0 24 24" stroke={assigns[:stroke]||"currentColor"} stroke-width="2">
        <path stroke-linecap="round" stroke-linejoin="round" d="M10 6H6a2 2 0 00-2 2v10a2 2 0 002 2h10a2 2 0 002-2v-4M14 4h6m0 0v6m0-6L10 14" />
      </svg>
    """
  end
  def icons_device_phone_mobile (assigns) do
    ~H"""
      <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_device_phone_mobile#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"none"}  class={" #{assigns[:class]}"} viewBox="0 0 24 24" stroke={assigns[:stroke]||"currentColor"}>
        <path stroke-linecap="round" stroke-linejoin="round" d="M10.5 1.5H8.25A2.25 2.25 0 006 3.75v16.5a2.25 2.25 0 002.25 2.25h7.5A2.25 2.25 0 0018 20.25V3.75a2.25 2.25 0 00-2.25-2.25H13.5m-3 0V3h3V1.5m-3 0h3m-3 18.75h3" />
      </svg>
    """
  end
  def icons_squares_plus (assigns) do
    ~H"""
      <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_squares_plus#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"none"}  class={" #{assigns[:class]}"} viewBox="0 0 24 24" stroke={assigns[:stroke]||"currentColor"}>
        <path stroke-linecap="round" stroke-linejoin="round" d="M13.5 16.875h3.375m0 0h3.375m-3.375 0V13.5m0 3.375v3.375M6 10.5h2.25a2.25 2.25 0 002.25-2.25V6a2.25 2.25 0 00-2.25-2.25H6A2.25 2.25 0 003.75 6v2.25A2.25 2.25 0 006 10.5zm0 9.75h2.25A2.25 2.25 0 0010.5 18v-2.25a2.25 2.25 0 00-2.25-2.25H6a2.25 2.25 0 00-2.25 2.25V18A2.25 2.25 0 006 20.25zm9.75-9.75H18a2.25 2.25 0 002.25-2.25V6A2.25 2.25 0 0018 3.75h-2.25A2.25 2.25 0 0013.5 6v2.25a2.25 2.25 0 002.25 2.25z" />
      </svg>
    """
  end

  def icons_ticket (assigns) do
    ~H"""
      <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_ticket#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"none"}  class={" #{assigns[:class]}"} viewBox="0 0 24 24" stroke={assigns[:stroke]||"currentColor"}>
        <path stroke-linecap="round" stroke-linejoin="round" d="M16.5 6v.75m0 3v.75m0 3v.75m0 3V18m-9-5.25h5.25M7.5 15h3M3.375 5.25c-.621 0-1.125.504-1.125 1.125v3.026a2.999 2.999 0 010 5.198v3.026c0 .621.504 1.125 1.125 1.125h17.25c.621 0 1.125-.504 1.125-1.125v-3.026a2.999 2.999 0 010-5.198V6.375c0-.621-.504-1.125-1.125-1.125H3.375z" />
      </svg>

    """
  end

  def icons_document_arrow_down (assigns) do
    ~H"""
      <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_document_arrow_down#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"none"}  class={" #{assigns[:class]}"} viewBox="0 0 24 24" stroke={assigns[:stroke]||"currentColor"}>
        <path stroke-linecap="round" stroke-linejoin="round" d="M19.5 14.25v-2.625a3.375 3.375 0 00-3.375-3.375h-1.5A1.125 1.125 0 0113.5 7.125v-1.5a3.375 3.375 0 00-3.375-3.375H8.25m.75 12l3 3m0 0l3-3m-3 3v-6m-1.5-9H5.625c-.621 0-1.125.504-1.125 1.125v17.25c0 .621.504 1.125 1.125 1.125h12.75c.621 0 1.125-.504 1.125-1.125V11.25a9 9 0 00-9-9z" />
      </svg>
    """
  end

  def icons_whatsapp (assigns) do
    ~H"""
      <svg xmlns="http://www.w3.org/2000/svg"  id={assigns[:id]||"icons_whatsapp#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"none"}  class={" #{assigns[:class]}"} viewBox="0 0 24 24" stroke={assigns[:stroke]||"currentColor"}>    <path d="M 12.011719 2 C 6.5057187 2 2.0234844 6.478375 2.0214844 11.984375 C 2.0204844 13.744375 2.4814687 15.462563 3.3554688 16.976562 L 2 22 L 7.2324219 20.763672 C 8.6914219 21.559672 10.333859 21.977516 12.005859 21.978516 L 12.009766 21.978516 C 17.514766 21.978516 21.995047 17.499141 21.998047 11.994141 C 22.000047 9.3251406 20.962172 6.8157344 19.076172 4.9277344 C 17.190172 3.0407344 14.683719 2.001 12.011719 2 z M 12.009766 4 C 14.145766 4.001 16.153109 4.8337969 17.662109 6.3417969 C 19.171109 7.8517969 20.000047 9.8581875 19.998047 11.992188 C 19.996047 16.396187 16.413812 19.978516 12.007812 19.978516 C 10.674812 19.977516 9.3544062 19.642812 8.1914062 19.007812 L 7.5175781 18.640625 L 6.7734375 18.816406 L 4.8046875 19.28125 L 5.2851562 17.496094 L 5.5019531 16.695312 L 5.0878906 15.976562 C 4.3898906 14.768562 4.0204844 13.387375 4.0214844 11.984375 C 4.0234844 7.582375 7.6067656 4 12.009766 4 z M 8.4765625 7.375 C 8.3095625 7.375 8.0395469 7.4375 7.8105469 7.6875 C 7.5815469 7.9365 6.9355469 8.5395781 6.9355469 9.7675781 C 6.9355469 10.995578 7.8300781 12.182609 7.9550781 12.349609 C 8.0790781 12.515609 9.68175 15.115234 12.21875 16.115234 C 14.32675 16.946234 14.754891 16.782234 15.212891 16.740234 C 15.670891 16.699234 16.690438 16.137687 16.898438 15.554688 C 17.106437 14.971687 17.106922 14.470187 17.044922 14.367188 C 16.982922 14.263188 16.816406 14.201172 16.566406 14.076172 C 16.317406 13.951172 15.090328 13.348625 14.861328 13.265625 C 14.632328 13.182625 14.464828 13.140625 14.298828 13.390625 C 14.132828 13.640625 13.655766 14.201187 13.509766 14.367188 C 13.363766 14.534188 13.21875 14.556641 12.96875 14.431641 C 12.71875 14.305641 11.914938 14.041406 10.960938 13.191406 C 10.218937 12.530406 9.7182656 11.714844 9.5722656 11.464844 C 9.4272656 11.215844 9.5585938 11.079078 9.6835938 10.955078 C 9.7955938 10.843078 9.9316406 10.663578 10.056641 10.517578 C 10.180641 10.371578 10.223641 10.267562 10.306641 10.101562 C 10.389641 9.9355625 10.347156 9.7890625 10.285156 9.6640625 C 10.223156 9.5390625 9.737625 8.3065 9.515625 7.8125 C 9.328625 7.3975 9.131125 7.3878594 8.953125 7.3808594 C 8.808125 7.3748594 8.6425625 7.375 8.4765625 7.375 z"/></svg>
    """
  end
  def icons_current_dollar (assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" id={assigns[:id]||"icons_current_dollar#{gen_id_key()}"} width={assigns[:width]||"16"} height={assigns[:height]||"16"} fill={assigns[:fill]||"none"}  class={" #{assigns[:class]}"} viewBox="0 0 24 24" stroke={assigns[:stroke]||"currentColor"}>
      <path stroke-linecap="round" stroke-linejoin="round" d="M12 6v12m-3-2.818l.879.659c1.171.879 3.07.879 4.242 0 1.172-.879 1.172-2.303 0-3.182C13.536 12.219 12.768 12 12 12c-.725 0-1.45-.22-2.003-.659-1.106-.879-1.106-2.303 0-3.182s2.9-.879 4.006 0l.415.33M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
    </svg>

    """
  end
end
