defmodule KajoolyTemplateTailwindWeb.LayoutsLive.FakeDb do

  def list() do
    [
      %{
        title: "CAFÉ GILA CÁPSULAS 8X10",
        subtitle: "CG-PS-10052",
        created_by: "SARA BAUTISTA",
        created: "2022-06-07T22:45:00",
        status: "REDD",
        state: "ABIERTO",
        update: "2022-06-07T22:45:00",
        to: "#"
      },
      %{
        title: "CAFÉ GILA CÁPSULAS 8X10",
        subtitle: "CG-PS-10052",
        created_by: "SARA BAUTISTA",
        created: "2022-06-05T22:45:00",
        status: "REDD",
        state: "ABIERTO",
        update: "2022-06-05T22:45:00",
        to: "#"
      },
      %{
        title: "CAFÉ GILA CÁPSULAS 8X10",
        subtitle: "CG-PS-10052",
        created_by: "SARA BAUTISTA",
        created: "2022-06-03T22:45:00",
        status: "REDD",
        state: "ABIERTO",
        update: "2022-06-03T22:45:00",
        to: "#"
      },
      %{
        title: "CAFÉ GILA CÁPSULAS 8X10",
        subtitle: "CG-PS-10052",
        created_by: "SARA BAUTISTA",
        created: "2022-06-02T22:45:00",
        status: "REDD",
        state: "ABIERTO",
        update: "2022-06-02T22:45:00",
        to: "#"
      },
      %{
        title: "CAFÉ GILA CÁPSULAS 8X10",
        subtitle: "CG-PS-10052",
        created_by: "SARA BAUTISTA",
        created: "2022-05-07T22:45:00",
        status: "REDD",
        state: "ABIERTO",
        update: "2022-05-07T22:45:00",
        to: "#"
      },
      %{
        title: "CAFÉ GILA CÁPSULAS 8X10",
        subtitle: "CG-PS-10052",
        created_by: "SARA BAUTISTA",
        created: "2022-05-03T22:45:00",
        status: "REDD",
        state: "ABIERTO",
        update: "2022-05-03T22:45:00",
        to: "#"
      },
      %{
        title: "CAFÉ GILA CÁPSULAS 8X10",
        subtitle: "CG-PS-10052",
        created_by: "SARA BAUTISTA",
        created: "2022-06-07T22:45:00",
        status: "REDD",
        state: "ABIERTO",
        update: "2022-06-07T22:45:00",
        to: "#"
      },
      %{
        title: "CAFÉ GILA CÁPSULAS 8X10",
        subtitle: "CG-PS-10052",
        created_by: "SARA BAUTISTA",
        created: "2022-06-07T22:45:00",
        status: "REDD",
        state: "ABIERTO",
        update: "2022-06-07T22:45:00",
        to: "#"
      },
      %{
        title: "CAFÉ GILA CÁPSULAS 8X10",
        subtitle: "CG-PS-10052",
        created_by: "SARA BAUTISTA",
        created: "2022-06-07T22:45:00",
        status: "REDD",
        state: "ABIERTO",
        update: "2022-06-07T22:45:00",
        to: "#"
      },
      %{
        title: "CAFÉ GILA CÁPSULAS 8X10",
        subtitle: "CG-PS-10052",
        created_by: "SARA BAUTISTA",
        created: "2022-06-07T22:45:00",
        status: "REDD",
        state: "ABIERTO",
        update: "2022-06-07T22:45:00",
        to: "#"
      }
    ]
  end
 def  accordion() do

    [
      %{
        title: "Titulo 1",
        expanded: "true",
        list: [
          %{
            title: "Título 1.1",
            to: "#",
          },
          %{
            title: "Título 1.2",
            to: "#",
          },
        ]
      },
      %{
        title: "Titulo 2",
        class: "",
        list: [
          %{
            title: "Titulo 2.1",
            to: "#",
            class: ""
          },
          %{
            title: "Titulo 2.2",
            to: "#",
            class: ""
          }
        ]
      },
      %{
        title: "Titulo 3",
        expanded: "true",
        list: [
          %{
            title: "Título 3.1",
            expanded: "true",
            list: [
              %{
                title: "Título 3.1.1",
                to: "#"
              },
              %{
                title: "Título 3.1.2",
                list: [
                  %{
                    title: "Título 3.1.1",
                    expanded: "true",
                    list: [
                      %{
                        title: "Título 3.1.1.1",
                        to: "#"
                      },
                      %{
                        title: "Título 3.1.1.2",
                        to: "#"
                      }
                    ]
                  }]
              }
            ]
          },
          %{
            title: "Título 3.2",
            expanded: "true",
            list: [
              %{
                title: "Título 3.2.1",
                to: "#"
              },
              %{
                title: "Título 3.2.2",
                to: "#"
              }
            ]
          },
        ]
      },
    ]

 end
end
