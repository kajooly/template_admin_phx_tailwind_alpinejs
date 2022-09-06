defmodule KajoolyTemplateTailwindWeb.TemplateConfig do

  def template_config(assigns) do
    %{
      lang: "es",
      head: %{
        title:  "Kajooly site",
        suffix: " · Phoenix Framework",
        meta_raw: "
          <meta content=\"test\" />
        "
      },
      default_ui: %{
        isSidebarExpanded: true,
        isCompactMode: true,
        isLiquidPage: true
      },
      company: %{
        #isotipo_url: "/images/phoenix.png",
        isotipo: "
          <svg xmlns=\"http://www.w3.org/2000/svg\" fill=\"currentColor\"
          class=\" flex-shrink-0 bi bi-robot\"
          :class=\"isCompactMode ? 'h-6 w-6 mx-1' : 'h-8 w-8 mx-2'\"
          viewBox=\"0 0 16 16\">
            <path d=\"M6 12.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1-.5-.5ZM3 8.062C3 6.76 4.235 5.765 5.53 5.886a26.58 26.58 0 0 0 4.94 0C11.765 5.765 13 6.76 13 8.062v1.157a.933.933 0 0 1-.765.935c-.845.147-2.34.346-4.235.346-1.895 0-3.39-.2-4.235-.346A.933.933 0 0 1 3 9.219V8.062Zm4.542-.827a.25.25 0 0 0-.217.068l-.92.9a24.767 24.767 0 0 1-1.871-.183.25.25 0 0 0-.068.495c.55.076 1.232.149 2.02.193a.25.25 0 0 0 .189-.071l.754-.736.847 1.71a.25.25 0 0 0 .404.062l.932-.97a25.286 25.286 0 0 0 1.922-.188.25.25 0 0 0-.068-.495c-.538.074-1.207.145-1.98.189a.25.25 0 0 0-.166.076l-.754.785-.842-1.7a.25.25 0 0 0-.182-.135Z\"/>
            <path d=\"M8.5 1.866a1 1 0 1 0-1 0V3h-2A4.5 4.5 0 0 0 1 7.5V8a1 1 0 0 0-1 1v2a1 1 0 0 0 1 1v1a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2v-1a1 1 0 0 0 1-1V9a1 1 0 0 0-1-1v-.5A4.5 4.5 0 0 0 10.5 3h-2V1.866ZM14 7.5V13a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V7.5A3.5 3.5 0 0 1 5.5 4h5A3.5 3.5 0 0 1 14 7.5Z\"/>
          </svg>",
        logotipo_text: "NAMAXA", # nil to show logotipo_svg
        logotipo_svg: "",
      },
      blank_page: false,
      top_user_menu: %{
        display: true,
        name_user: "Tron Simmons.",
        email: "user@mail.com.",
        list: [
          %{
            title: "Profile",
            to: "#"
          },
          %{
            title: "Setting",
            to: "#"
          },
          %{
            title: "Log out",
            to: "#"
          }
        ]

      },
      top_notification_menu: %{
        display: true,
        title: "Notification",
        title_empty: "Empty list.",
        to_all: "#",
        title_all: "View all.",
        list: [
          %{
            title: "Cronut distillery selfies, hella shabby chic",
            timestamp: "2022-12-31 23:59:59",
            to: "#"
          },
          %{
            title: "Cronut distillery selfies, hella shabby chic",
            timestamp: "2022-12-31 23:59:59",
            to: "#"
          },
          %{
            title: "Cronut distillery selfies, hella shabby chic",
            timestamp: "2022-12-31 23:59:59",
            to: "#"
          },
        ]

      },
      top_new_menu: %{
        display: true,
        title: "Nuevo",
        title_empty: "Empty list.",
        to_all: "#",
        title_all: "View all.",
        list: [
          %{
            title: "Nueva acta de naciemiento",
            timestamp: "2022-12-31 23:59:59",
            to: "#"
          },
          %{
            title: "Nueva acta de defunción",
            timestamp: "2022-12-31 23:59:59",
            to: "#"
          },
          %{
            title: "Nueva acta de matrimonio",
            timestamp: "2022-12-31 23:59:59",
            to: "#"
          },
          %{
            title: "Nueva acta de Divorcio",
            timestamp: "2022-12-31 23:59:59",
            to: "#"
          },
        ]

      },
      top_apps_menu: %{
        display: false,
        title: "Notification",
        title_empty: "Empty list.",
        to_all: "#",
        title_all: "View all.",
        list: [
          %{
            title: "Cronut distillery selfies, hella shabby chic",
            timestamp: "2022-12-31 23:59:59",
            to: "#"
          },
          %{
            title: "Cronut distillery selfies, hella shabby chic",
            timestamp: "2022-12-31 23:59:59",
            to: "#"
          },
          %{
            title: "Cronut distillery selfies, hella shabby chic",
            timestamp: "2022-12-31 23:59:59",
            to: "#"
          },
        ]

      },
      left_aside: %{
        expand_button: %{
          display: true,
          title: "Contraer menú"
        },
        menu: %{
          display: true,
          list: [
            %{
              display: true,
              title: "Lista de",
              active: nil,
              to: "/layout/list",
              icon: "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"h-6 w-6 flex-shrink-0\" viewBox=\"0 0 20 20\" fill=\"currentColor\">
                <path fill-rule=\"evenodd\" d=\"M3 4a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zm0 4a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zm0 4a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zm0 4a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z\" clip-rule=\"evenodd\" />
                    </svg>"
              },
              %{
                display: true,
                title: "Proyectos",
                active: nil,
                to: "#",
                icon: "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"h-6 w-6 flex-shrink-0\" viewBox=\"0 0 24 24\" fill=\"currentColor\">
                  <path fill-rule=\"evenodd\" d=\"M20.083 15.2l1.202.721a.5.5 0 0 1 0 .858l-8.77 5.262a1 1 0 0 1-1.03 0l-8.77-5.262a.5.5 0 0 1 0-.858l1.202-.721L12 20.05l8.083-4.85zm0-4.7l1.202.721a.5.5 0 0 1 0 .858L12 17.65l-9.285-5.571a.5.5 0 0 1 0-.858l1.202-.721L12 15.35l8.083-4.85zm-7.569-9.191l8.771 5.262a.5.5 0 0 1 0 .858L12 13 2.715 7.429a.5.5 0 0 1 0-.858l8.77-5.262a1 1 0 0 1 1.03 0zM12 3.332L5.887 7 12 10.668 18.113 7 12 3.332z\"
                  clip-rule=\"evenodd\" />
                      </svg>",
                list: [
                  %{
                    display: true,
                    title: "Proyectos",
                    active: nil,
                    to: "#",
                    icon: "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"h-6 w-6 flex-shrink-0\" viewBox=\"0 0 24 24\" fill=\"currentColor\">
                      <path fill-rule=\"evenodd\" d=\"M20.083 15.2l1.202.721a.5.5 0 0 1 0 .858l-8.77 5.262a1 1 0 0 1-1.03 0l-8.77-5.262a.5.5 0 0 1 0-.858l1.202-.721L12 20.05l8.083-4.85zm0-4.7l1.202.721a.5.5 0 0 1 0 .858L12 17.65l-9.285-5.571a.5.5 0 0 1 0-.858l1.202-.721L12 15.35l8.083-4.85zm-7.569-9.191l8.771 5.262a.5.5 0 0 1 0 .858L12 13 2.715 7.429a.5.5 0 0 1 0-.858l8.77-5.262a1 1 0 0 1 1.03 0zM12 3.332L5.887 7 12 10.668 18.113 7 12 3.332z\"
                      clip-rule=\"evenodd\" />
                          </svg>"
                    },
                    %{
                    display: true,
                    title: "Clientes",
                    active: nil,
                    to: "#",
                    icon: "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"h-6 w-6 flex-shrink-0\" viewBox=\"0 0 24 24\" fill=\"currentColor\">
                      <path fill-rule=\"evenodd\" d=\"M12 14v8H4a8 8 0 0 1 8-8zm6 7.5l-2.939 1.545.561-3.272-2.377-2.318 3.286-.478L18 14l1.47 2.977 3.285.478-2.377 2.318.56 3.272L18 21.5zM12 13c-3.315 0-6-2.685-6-6s2.685-6 6-6 6 2.685 6 6-2.685 6-6 6z\"
                      clip-rule=\"evenodd\" />
                          </svg>",
                    list: [
                      %{
                        display: true,
                        title: "Proyectos",
                        active: nil,
                        to: "#",
                        icon: "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"h-6 w-6 flex-shrink-0\" viewBox=\"0 0 24 24\" fill=\"currentColor\">
                          <path fill-rule=\"evenodd\" d=\"M20.083 15.2l1.202.721a.5.5 0 0 1 0 .858l-8.77 5.262a1 1 0 0 1-1.03 0l-8.77-5.262a.5.5 0 0 1 0-.858l1.202-.721L12 20.05l8.083-4.85zm0-4.7l1.202.721a.5.5 0 0 1 0 .858L12 17.65l-9.285-5.571a.5.5 0 0 1 0-.858l1.202-.721L12 15.35l8.083-4.85zm-7.569-9.191l8.771 5.262a.5.5 0 0 1 0 .858L12 13 2.715 7.429a.5.5 0 0 1 0-.858l8.77-5.262a1 1 0 0 1 1.03 0zM12 3.332L5.887 7 12 10.668 18.113 7 12 3.332z\"
                          clip-rule=\"evenodd\" />
                              </svg>"
                        },
                        %{
                        display: true,
                        title: "Clientes",
                        active: nil,
                        to: "#",
                        icon: "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"h-6 w-6 flex-shrink-0\" viewBox=\"0 0 24 24\" fill=\"currentColor\">
                          <path fill-rule=\"evenodd\" d=\"M12 14v8H4a8 8 0 0 1 8-8zm6 7.5l-2.939 1.545.561-3.272-2.377-2.318 3.286-.478L18 14l1.47 2.977 3.285.478-2.377 2.318.56 3.272L18 21.5zM12 13c-3.315 0-6-2.685-6-6s2.685-6 6-6 6 2.685 6 6-2.685 6-6 6z\"
                          clip-rule=\"evenodd\" />
                              </svg>"
                        },
                        %{
                        display: true,
                        title: "Campañas",
                        active: nil,
                        to: "#",
                        icon: "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"h-6 w-6 flex-shrink-0\" viewBox=\"0 0 24 24\" fill=\"currentColor\">
                          <path fill-rule=\"evenodd\" d=\"M21 11.646V21a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1v-9.354A3.985 3.985 0 0 1 2 9V3a1 1 0 0 1 1-1h18a1 1 0 0 1 1 1v6c0 1.014-.378 1.94-1 2.646zM14 9a1 1 0 0 1 2 0 2 2 0 1 0 4 0V4H4v5a2 2 0 1 0 4 0 1 1 0 1 1 2 0 2 2 0 1 0 4 0z\" clip-rule=\"evenodd\" />
                              </svg>"
                        },
                        %{
                        display: true,
                        title: "Intervalos",
                        active: nil,
                        to: "#",
                        icon: "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"h-6 w-6 flex-shrink-0\" viewBox=\"0 0 24 24\" fill=\"currentColor\">
                          <path fill-rule=\"evenodd\" d=\"M12 22C6.477 22 2 17.523 2 12S6.477 2 12 2s10 4.477 10 10-4.477 10-10 10zm0-2a8 8 0 1 0 0-16 8 8 0 0 0 0 16zm1-8h4v2h-6V7h2v5z\" clip-rule=\"evenodd\" />
                              </svg>"
                        },
                      ]
                    },
                    %{
                    display: true,
                    title: "Campañas",
                    active: nil,
                    to: "#",
                    icon: "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"h-6 w-6 flex-shrink-0\" viewBox=\"0 0 24 24\" fill=\"currentColor\">
                      <path fill-rule=\"evenodd\" d=\"M21 11.646V21a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1v-9.354A3.985 3.985 0 0 1 2 9V3a1 1 0 0 1 1-1h18a1 1 0 0 1 1 1v6c0 1.014-.378 1.94-1 2.646zM14 9a1 1 0 0 1 2 0 2 2 0 1 0 4 0V4H4v5a2 2 0 1 0 4 0 1 1 0 1 1 2 0 2 2 0 1 0 4 0z\" clip-rule=\"evenodd\" />
                          </svg>"
                    },
                    %{
                    display: true,
                    title: "Intervalos",
                    active: nil,
                    to: "#",
                    icon: "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"h-6 w-6 flex-shrink-0\" viewBox=\"0 0 24 24\" fill=\"currentColor\">
                      <path fill-rule=\"evenodd\" d=\"M12 22C6.477 22 2 17.523 2 12S6.477 2 12 2s10 4.477 10 10-4.477 10-10 10zm0-2a8 8 0 1 0 0-16 8 8 0 0 0 0 16zm1-8h4v2h-6V7h2v5z\" clip-rule=\"evenodd\" />
                          </svg>"
                    }
                ]
                },
                %{
                display: true,
                expanded: true,
                title: "Clientes",
                active: nil,
                to: "#",
                icon: "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"h-6 w-6 flex-shrink-0\" viewBox=\"0 0 24 24\" fill=\"currentColor\">
                  <path fill-rule=\"evenodd\" d=\"M12 14v8H4a8 8 0 0 1 8-8zm6 7.5l-2.939 1.545.561-3.272-2.377-2.318 3.286-.478L18 14l1.47 2.977 3.285.478-2.377 2.318.56 3.272L18 21.5zM12 13c-3.315 0-6-2.685-6-6s2.685-6 6-6 6 2.685 6 6-2.685 6-6 6z\"
                  clip-rule=\"evenodd\" />
                      </svg>",

                list: [ %{
                    display: true,
                    title: "Clientes",
                    active: nil,
                    to: "#",
                    icon: "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"h-6 w-6 flex-shrink-0\" viewBox=\"0 0 24 24\" fill=\"currentColor\">
                      <path fill-rule=\"evenodd\" d=\"M12 14v8H4a8 8 0 0 1 8-8zm6 7.5l-2.939 1.545.561-3.272-2.377-2.318 3.286-.478L18 14l1.47 2.977 3.285.478-2.377 2.318.56 3.272L18 21.5zM12 13c-3.315 0-6-2.685-6-6s2.685-6 6-6 6 2.685 6 6-2.685 6-6 6z\"
                      clip-rule=\"evenodd\" />
                          </svg>"
                    },
                    %{
                    display: true,
                    title: "Campañas",
                    active: nil,
                    to: "#",
                    icon: "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"h-6 w-6 flex-shrink-0\" viewBox=\"0 0 24 24\" fill=\"currentColor\">
                      <path fill-rule=\"evenodd\" d=\"M21 11.646V21a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1v-9.354A3.985 3.985 0 0 1 2 9V3a1 1 0 0 1 1-1h18a1 1 0 0 1 1 1v6c0 1.014-.378 1.94-1 2.646zM14 9a1 1 0 0 1 2 0 2 2 0 1 0 4 0V4H4v5a2 2 0 1 0 4 0 1 1 0 1 1 2 0 2 2 0 1 0 4 0z\" clip-rule=\"evenodd\" />
                          </svg>"
                    },]
                },
                %{
                display: true,
                title: "Campañas",
                active: nil,
                to: "#",
                icon: "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"h-6 w-6 flex-shrink-0\" viewBox=\"0 0 24 24\" fill=\"currentColor\">
                  <path fill-rule=\"evenodd\" d=\"M21 11.646V21a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1v-9.354A3.985 3.985 0 0 1 2 9V3a1 1 0 0 1 1-1h18a1 1 0 0 1 1 1v6c0 1.014-.378 1.94-1 2.646zM14 9a1 1 0 0 1 2 0 2 2 0 1 0 4 0V4H4v5a2 2 0 1 0 4 0 1 1 0 1 1 2 0 2 2 0 1 0 4 0z\" clip-rule=\"evenodd\" />
                      </svg>"
                },
                %{
                display: true,
                title: "Intervalos",
                active: nil,
                to: "#",
                icon: "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"h-6 w-6 flex-shrink-0\" viewBox=\"0 0 24 24\" fill=\"currentColor\">
                  <path fill-rule=\"evenodd\" d=\"M12 22C6.477 22 2 17.523 2 12S6.477 2 12 2s10 4.477 10 10-4.477 10-10 10zm0-2a8 8 0 1 0 0-16 8 8 0 0 0 0 16zm1-8h4v2h-6V7h2v5z\" clip-rule=\"evenodd\" />
                      </svg>"
                },
                %{
                display: true,
                title: "Categorías",
                active: nil,
                to: "#",
                icon: "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"h-6 w-6 flex-shrink-0\" viewBox=\"0 0 24 24\" fill=\"currentColor\">
                  <path fill-rule=\"evenodd\" d=\"M16.5 2A5.5 5.5 0 0 1 22 7.5V10c0 .888-.386 1.686-1 2.235V17a3.001 3.001 0 0 1-2 2.829V21a1 1 0 0 1-1 1H6a1 1 0 0 1-1-1v-1.17A3.001 3.001 0 0 1 3 17V6a4 4 0 0 1 4-4h9.5zm-7 9H5v6a1 1 0 0 0 .883.993L6 18h12a1 1 0 0 0 .993-.883L19 17v-4h-6.036A3.5 3.5 0 0 1 9.5 16H6v-2h3.5a1.5 1.5 0 0 0 1.493-1.356L11 12.5a1.5 1.5 0 0 0-1.356-1.493L9.5 11zm7-7H7a2 2 0 0 0-1.995 1.85L5 6v3h4.5a3.5 3.5 0 0 1 3.163 2H19a1 1 0 0 0 .993-.883L20 10V7.5a3.5 3.5 0 0 0-3.308-3.495L16.5 4z\" clip-rule=\"evenodd\" />
                      </svg>"
                },
                %{
                display: true,
                title: "Acabados",
                active: nil,
                to: "#",
                icon: "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"h-6 w-6 flex-shrink-0\" viewBox=\"0 0 20 20\" fill=\"currentColor\">
                  <path fill-rule=\"evenodd\" d=\"M11 4h10v2H11V4zm0 4h6v2h-6V8zm0 6h10v2H11v-2zm0 4h6v2h-6v-2zM3 4h6v6H3V4zm2 2v2h2V6H5zm-2 8h6v6H3v-6zm2 2v2h2v-2H5z\" clip-rule=\"evenodd\" />
                      </svg>"
                },
                %{
                display: true,
                title: "Archivos",
                active: nil,
                to: "#",
                icon: "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"h-6 w-6 flex-shrink-0\" viewBox=\"0 0 20 20\" fill=\"currentColor\">
                  <path fill-rule=\"evenodd\" d=\"M9 2.003V2h10.998C20.55 2 21 2.455 21 2.992v18.016a.993.993 0 0 1-.993.992H3.993A1 1 0 0 1 3 20.993V8l6-5.997zM5.83 8H9V4.83L5.83 8zM11 4v5a1 1 0 0 1-1 1H5v10h14V4h-8z\" clip-rule=\"evenodd\" />
                      </svg>"
                },
              %{
                display: true,
                title: "Personas",
                active: nil,
                to: "#",
                icon: "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"h-6 w-6 flex-shrink-0\" viewBox=\"0 0 20 20\" fill=\"currentColor\">
                  <path fill-rule=\"evenodd\" d=\"M4 22a8 8 0 1 1 16 0h-2a6 6 0 1 0-12 0H4zm8-9c-3.315 0-6-2.685-6-6s2.685-6 6-6 6 2.685 6 6-2.685 6-6 6zm0-2c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4z\" clip-rule=\"evenodd\" />
                  </svg>"
                },
              %{
                display: true,
                title: "Roles",
                active: nil,
                to: "#",
                icon: "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"h-6 w-6 flex-shrink-0\" viewBox=\"0 0 24 24\" fill=\"currentColor\">
                  <path fill-rule=\"evenodd\" d=\"M12 14v2a6 6 0 0 0-6 6H4a8 8 0 0 1 8-8zm0-1c-3.315 0-6-2.685-6-6s2.685-6 6-6 6 2.685 6 6-2.685 6-6 6zm0-2c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm9 6h1v5h-8v-5h1v-1a3 3 0 0 1 6 0v1zm-2 0v-1a1 1 0 0 0-2 0v1h2z\" clip-rule=\"evenodd\" />
                      </svg>"
                },
              %{
                display: true,
                title: "Recursos",
                active: nil,
                to: "#",
                icon: "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"h-6 w-6 flex-shrink-0\" viewBox=\"0 0 24 24\" fill=\"currentColor\">
                  <path fill-rule=\"evenodd\" d=\"M2 22a8 8 0 1 1 16 0h-2a6 6 0 1 0-12 0H2zm8-9c-3.315 0-6-2.685-6-6s2.685-6 6-6 6 2.685 6 6-2.685 6-6 6zm0-2c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm8.284 3.703A8.002 8.002 0 0 1 23 22h-2a6.001 6.001 0 0 0-3.537-5.473l.82-1.824zm-.688-11.29A5.5 5.5 0 0 1 21 8.5a5.499 5.499 0 0 1-5 5.478v-2.013a3.5 3.5 0 0 0 1.041-6.609l.555-1.943z\" />
                      </svg>"
                },
              %{
                display: true,
                title: "Departamentos",
                active: nil,
                to: "#",
                icon: "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"h-6 w-6 flex-shrink-0\" viewBox=\"0 0 24 24\" fill=\"currentColor\">
                  <path fill-rule=\"evenodd\" d=\"M16.5 13.202L13 15.535v3.596L19.197 15 16.5 13.202zM14.697 12L12 10.202 9.303 12 12 13.798 14.697 12zM20 10.869L18.303 12 20 13.131V10.87zM19.197 9L13 4.869v3.596l3.5 2.333L19.197 9zM7.5 10.798L11 8.465V4.869L4.803 9 7.5 10.798zM4.803 15L11 19.131v-3.596l-3.5-2.333L4.803 15zM4 13.131L5.697 12 4 10.869v2.262zM2 9a1 1 0 0 1 .445-.832l9-6a1 1 0 0 1 1.11 0l9 6A1 1 0 0 1 22 9v6a1 1 0 0 1-.445.832l-9 6a1 1 0 0 1-1.11 0l-9-6A1 1 0 0 1 2 15V9z\" clip-rule=\"evenodd\" />
                      </svg>"
                },
              %{
                display: true,
                title: "Tags",
                active: nil,
                to: "#",
                icon: "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"h-6 w-6 flex-shrink-0\" viewBox=\"0 0 24 24\" fill=\"currentColor\">
                  <path fill-rule=\"evenodd\" d=\"M5 2h14a1 1 0 0 1 1 1v19.143a.5.5 0 0 1-.766.424L12 18.03l-7.234 4.536A.5.5 0 0 1 4 22.143V3a1 1 0 0 1 1-1zm13 2H6v15.432l6-3.761 6 3.761V4zM8 9h8v2H8V9z\" clip-rule=\"evenodd\" />
                      </svg>"
                },
                %{
                  display: true,
                  title: "Proyectos",
                  active: nil,
                  to: "#",
                  icon: "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"h-6 w-6 flex-shrink-0\" viewBox=\"0 0 24 24\" fill=\"currentColor\">
                    <path fill-rule=\"evenodd\" d=\"M20.083 15.2l1.202.721a.5.5 0 0 1 0 .858l-8.77 5.262a1 1 0 0 1-1.03 0l-8.77-5.262a.5.5 0 0 1 0-.858l1.202-.721L12 20.05l8.083-4.85zm0-4.7l1.202.721a.5.5 0 0 1 0 .858L12 17.65l-9.285-5.571a.5.5 0 0 1 0-.858l1.202-.721L12 15.35l8.083-4.85zm-7.569-9.191l8.771 5.262a.5.5 0 0 1 0 .858L12 13 2.715 7.429a.5.5 0 0 1 0-.858l8.77-5.262a1 1 0 0 1 1.03 0zM12 3.332L5.887 7 12 10.668 18.113 7 12 3.332z\"
                    clip-rule=\"evenodd\" />
                        </svg>"
                  },
                  %{
                  display: true,
                  title: "Clientes",
                  active: nil,
                  to: "#",
                  icon: "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"h-6 w-6 flex-shrink-0\" viewBox=\"0 0 24 24\" fill=\"currentColor\">
                    <path fill-rule=\"evenodd\" d=\"M12 14v8H4a8 8 0 0 1 8-8zm6 7.5l-2.939 1.545.561-3.272-2.377-2.318 3.286-.478L18 14l1.47 2.977 3.285.478-2.377 2.318.56 3.272L18 21.5zM12 13c-3.315 0-6-2.685-6-6s2.685-6 6-6 6 2.685 6 6-2.685 6-6 6z\"
                    clip-rule=\"evenodd\" />
                        </svg>"
                  },
                  %{
                  display: true,
                  title: "Campañas",
                  active: nil,
                  to: "#",
                  icon: "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"h-6 w-6 flex-shrink-0\" viewBox=\"0 0 24 24\" fill=\"currentColor\">
                    <path fill-rule=\"evenodd\" d=\"M21 11.646V21a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1v-9.354A3.985 3.985 0 0 1 2 9V3a1 1 0 0 1 1-1h18a1 1 0 0 1 1 1v6c0 1.014-.378 1.94-1 2.646zM14 9a1 1 0 0 1 2 0 2 2 0 1 0 4 0V4H4v5a2 2 0 1 0 4 0 1 1 0 1 1 2 0 2 2 0 1 0 4 0z\" clip-rule=\"evenodd\" />
                        </svg>"
                  },
                  %{
                  display: true,
                  title: "Intervalos",
                  active: nil,
                  to: "#",
                  icon: "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"h-6 w-6 flex-shrink-0\" viewBox=\"0 0 24 24\" fill=\"currentColor\">
                    <path fill-rule=\"evenodd\" d=\"M12 22C6.477 22 2 17.523 2 12S6.477 2 12 2s10 4.477 10 10-4.477 10-10 10zm0-2a8 8 0 1 0 0-16 8 8 0 0 0 0 16zm1-8h4v2h-6V7h2v5z\" clip-rule=\"evenodd\" />
                        </svg>"
                  },
                  %{
                  display: true,
                  title: "Categorías",
                  active: nil,
                  to: "#",
                  icon: "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"h-6 w-6 flex-shrink-0\" viewBox=\"0 0 24 24\" fill=\"currentColor\">
                    <path fill-rule=\"evenodd\" d=\"M16.5 2A5.5 5.5 0 0 1 22 7.5V10c0 .888-.386 1.686-1 2.235V17a3.001 3.001 0 0 1-2 2.829V21a1 1 0 0 1-1 1H6a1 1 0 0 1-1-1v-1.17A3.001 3.001 0 0 1 3 17V6a4 4 0 0 1 4-4h9.5zm-7 9H5v6a1 1 0 0 0 .883.993L6 18h12a1 1 0 0 0 .993-.883L19 17v-4h-6.036A3.5 3.5 0 0 1 9.5 16H6v-2h3.5a1.5 1.5 0 0 0 1.493-1.356L11 12.5a1.5 1.5 0 0 0-1.356-1.493L9.5 11zm7-7H7a2 2 0 0 0-1.995 1.85L5 6v3h4.5a3.5 3.5 0 0 1 3.163 2H19a1 1 0 0 0 .993-.883L20 10V7.5a3.5 3.5 0 0 0-3.308-3.495L16.5 4z\" clip-rule=\"evenodd\" />
                        </svg>"
                  },
                  %{
                  display: true,
                  title: "Acabados",
                  active: nil,
                  to: "#",
                  icon: "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"h-6 w-6 flex-shrink-0\" viewBox=\"0 0 20 20\" fill=\"currentColor\">
                    <path fill-rule=\"evenodd\" d=\"M11 4h10v2H11V4zm0 4h6v2h-6V8zm0 6h10v2H11v-2zm0 4h6v2h-6v-2zM3 4h6v6H3V4zm2 2v2h2V6H5zm-2 8h6v6H3v-6zm2 2v2h2v-2H5z\" clip-rule=\"evenodd\" />
                        </svg>"
                  },
                  %{
                  display: true,
                  title: "Archivos",
                  active: nil,
                  to: "#",
                  icon: "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"h-6 w-6 flex-shrink-0\" viewBox=\"0 0 20 20\" fill=\"currentColor\">
                    <path fill-rule=\"evenodd\" d=\"M9 2.003V2h10.998C20.55 2 21 2.455 21 2.992v18.016a.993.993 0 0 1-.993.992H3.993A1 1 0 0 1 3 20.993V8l6-5.997zM5.83 8H9V4.83L5.83 8zM11 4v5a1 1 0 0 1-1 1H5v10h14V4h-8z\" clip-rule=\"evenodd\" />
                        </svg>"
                  },
                %{
                  display: true,
                  title: "Personas",
                  active: nil,
                  to: "#",
                  icon: "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"h-6 w-6 flex-shrink-0\" viewBox=\"0 0 20 20\" fill=\"currentColor\">
                    <path fill-rule=\"evenodd\" d=\"M4 22a8 8 0 1 1 16 0h-2a6 6 0 1 0-12 0H4zm8-9c-3.315 0-6-2.685-6-6s2.685-6 6-6 6 2.685 6 6-2.685 6-6 6zm0-2c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4z\" clip-rule=\"evenodd\" />
                    </svg>"
                  },
                %{
                  display: true,
                  title: "Roles",
                  active: nil,
                  to: "#",
                  icon: "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"h-6 w-6 flex-shrink-0\" viewBox=\"0 0 24 24\" fill=\"currentColor\">
                    <path fill-rule=\"evenodd\" d=\"M12 14v2a6 6 0 0 0-6 6H4a8 8 0 0 1 8-8zm0-1c-3.315 0-6-2.685-6-6s2.685-6 6-6 6 2.685 6 6-2.685 6-6 6zm0-2c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm9 6h1v5h-8v-5h1v-1a3 3 0 0 1 6 0v1zm-2 0v-1a1 1 0 0 0-2 0v1h2z\" clip-rule=\"evenodd\" />
                        </svg>"
                  },
                %{
                  display: true,
                  title: "Recursos",
                  active: nil,
                  to: "#",
                  icon: "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"h-6 w-6 flex-shrink-0\" viewBox=\"0 0 24 24\" fill=\"currentColor\">
                    <path fill-rule=\"evenodd\" d=\"M2 22a8 8 0 1 1 16 0h-2a6 6 0 1 0-12 0H2zm8-9c-3.315 0-6-2.685-6-6s2.685-6 6-6 6 2.685 6 6-2.685 6-6 6zm0-2c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm8.284 3.703A8.002 8.002 0 0 1 23 22h-2a6.001 6.001 0 0 0-3.537-5.473l.82-1.824zm-.688-11.29A5.5 5.5 0 0 1 21 8.5a5.499 5.499 0 0 1-5 5.478v-2.013a3.5 3.5 0 0 0 1.041-6.609l.555-1.943z\" />
                        </svg>"
                  },
                %{
                  display: true,
                  title: "Departamentos",
                  active: nil,
                  to: "#",
                  icon: "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"h-6 w-6 flex-shrink-0\" viewBox=\"0 0 24 24\" fill=\"currentColor\">
                    <path fill-rule=\"evenodd\" d=\"M16.5 13.202L13 15.535v3.596L19.197 15 16.5 13.202zM14.697 12L12 10.202 9.303 12 12 13.798 14.697 12zM20 10.869L18.303 12 20 13.131V10.87zM19.197 9L13 4.869v3.596l3.5 2.333L19.197 9zM7.5 10.798L11 8.465V4.869L4.803 9 7.5 10.798zM4.803 15L11 19.131v-3.596l-3.5-2.333L4.803 15zM4 13.131L5.697 12 4 10.869v2.262zM2 9a1 1 0 0 1 .445-.832l9-6a1 1 0 0 1 1.11 0l9 6A1 1 0 0 1 22 9v6a1 1 0 0 1-.445.832l-9 6a1 1 0 0 1-1.11 0l-9-6A1 1 0 0 1 2 15V9z\" clip-rule=\"evenodd\" />
                        </svg>"
                  },
                %{
                  display: true,
                  title: "Tags",
                  active: nil,
                  to: "#",
                  icon: "<svg xmlns=\"http://www.w3.org/2000/svg\" class=\"h-6 w-6 flex-shrink-0\" viewBox=\"0 0 24 24\" fill=\"currentColor\">
                    <path fill-rule=\"evenodd\" d=\"M5 2h14a1 1 0 0 1 1 1v19.143a.5.5 0 0 1-.766.424L12 18.03l-7.234 4.536A.5.5 0 0 1 4 22.143V3a1 1 0 0 1 1-1zm13 2H6v15.432l6-3.761 6 3.761V4zM8 9h8v2H8V9z\" clip-rule=\"evenodd\" />
                        </svg>"
                  },
          ]},
        options: %{
          title: "Settings",
          display: true,
          isCompactMode: %{
            title_on: "Vista amplia",
            title_off: "Vista Compacta",
            display: true
          },
          isSidebarExpanded: %{
            title_on: "Menu contraido",
            title_off: "Menu extendido",
            display: true
          },
          isLiquidPage: %{
            title_on: "Contenido liquido",
            title_off: "Contenido fijo",
            display: true
          }
        }
      },
      footer: %{
        display: false,
        raw: "<a href=\"#\" class=\"text-blue-600 hover:underline\">Phoneix framework</a> with <a href=\"https://tailwindcss.com/\" class=\"text-teal-400 hover:underline\">Tailwind CSS</a> by boscotron, <a href=\"https://kajooly.com/\" class=\"text-blue-600 hover:underline\">Kajooly</a> with love"
      },
      cookies: %{
        display: false

      }
    }
  end
end
