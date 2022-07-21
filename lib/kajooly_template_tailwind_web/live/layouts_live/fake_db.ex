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

  def members_access() do
    [
      %{
        title: "Boscotron",
        subtitle_a: "boscotron",
        subtitle_b: "Admin",
        to: "#boscotron-link",
        to_edit: "#boscotron-link-edit",
        to_remove: "#boscotron-link-remove"
      },
      %{
        title: "KaJoos",
        subtitle_a: "@kajoos | 6 members",
        subtitle_b: "Write",
        to: "#boscotron-link",
        to_edit: "#boscotron-link-edit",
        to_remove: "#boscotron-link-remove"
      }
    ]
  end

  def recent_files() do
    [
      %{
        name: "Nombre del archivo 1",
        description: "Archivo XML",
        ext: "pdf",
        to: "#"
      },
      %{
        name: "Nombre del archivo 2",
        description: "Archivo PDF",
        ext: "pdf",
        to: "#"
      },
      %{
        name: "Nombre del archivo 3",
        description: "Archivo IMG",
        ext: "pdf",
        to: "#"
      },
      %{
        name: "Nombre del archivo 4",
        description: "Archivo XLSX",
        ext: "pdf",
        to: "#"
      }
    ]
  end

    def files() do
      [
        %{
          name: "Nombre del archivo 1",
          description: "Archivo XML",
          ext: "xml",
          date: "2022-02-31",
          share: false,
          to: "#"
        },
        %{
          name: "Nombre del archivo 2",
          description: "Archivo PDF",
          ext: "pdf",
          date: "2022-02-31",
          share: false,
          to: "#"
        },
        %{
          name: "Nombre del archivo 3",
          description: "Archivo IMG",
          ext: "img",
          date: "2022-02-31",
          share: true,
          to: "#"
        },
        %{
          name: "Nombre del archivo 4",
          description: "Archivo XLSX",
          ext: "xls",
          date: "2022-02-31",
          share: false,
          to: "#"
        },
        %{
          name: "Nombre del archivo 1",
          description: "Archivo doc",
          ext: "doc",
          date: "2022-02-31",
          share: false,
          to: "#"
        },
        %{
          name: "Nombre del archivo 2",
          description: "Archivo docx",
          ext: "docx",
          date: "2022-02-31",
          share: false,
          to: "#"
        },
        %{
          name: "Nombre del archivo 3",
          description: "Archivo IMG",
          ext: "png",
          date: "2022-02-31",
          share: true,
          to: "#"
        },
        %{
          name: "Nombre del archivo 4",
          description: "Archivo XLSX",
          ext: "xlsx",
          date: "2022-02-31",
          share: false,
          to: "#"
        },
        %{
          name: "Nombre del archivo 1",
          description: "Archivo XML",
          ext: "jpg",
          date: "2022-02-31",
          share: false,
          to: "#"
        },
        %{
          name: "Nombre del archivo 2",
          description: "Archivo PDF",
          ext: "jpge",
          date: "2022-02-31",
          share: false,
          to: "#"
        }

      ]
    end

    def notifications() do
      [
        %{
          title: "Ventas",
          subtitle: "Solicitud de brief",
          created_by: "SARA BAUTISTA",
          created: "2022-09-07T22:45:00",
          status: "SIN_LEER",
          state: "ABIERTO",
          update: "2022-06-07T22:45:00",
          to: "#",
          active: true
        },
        %{
          title: "Ventas",
          subtitle: "Solicitud de brief",
          created_by: "SARA BAUTISTA",
          created: "2022-08-07T22:45:00",
          status: "SIN_LEER",
          state: "ABIERTO",
          update: "2022-06-07T22:45:00",
          to: "#",
          active: true
        },
        %{
          title: "REDD",
          subtitle: "Asignación de disañador a ZXC-ZX-234",
          created_by: "SARA BAUTISTA",
          created: "2022-06-07T22:45:00",
          status: "SIN_LEER",
          state: "ABIERTO",
          update: "2022-07-07T22:45:00",
          to: "#",
          active: true
        },
        %{
          title: "Cotizaciones",
          subtitle: "Cotzacion de QWE-AS-1234 terminada",
          created_by: "SARA BAUTISTA",
          created: "2022-06-07T22:45:00",
          status: "SIN_LEER",
          state: "ABIERTO",
          update: "2022-06-07T22:45:00",
          to: "#",
          active: true
        },
        %{
          title: "Ventas",
          subtitle: "Asignación de disañador a ZXC-ZX-234",
          created_by: "SARA BAUTISTA",
          created: "2022-06-07T22:45:00",
          status: "SIN_LEER",
          state: "ABIERTO",
          update: "2022-06-07T22:45:00",
          to: "#",
          active: true
        },
        %{
          title: "Ventas",
          subtitle: "Solicitud de brief",
          created_by: "SARA BAUTISTA",
          created: "2022-06-07T22:45:00",
          status: "SIN_LEER",
          state: "ABIERTO",
          update: "2022-06-07T22:45:00",
          to: "#",
          active: true
        },
        %{
          title: "Cotizaciones",
          subtitle: "Cotzacion de QWE-AS-1234 terminada a ZXC-ZX-234",
          created_by: "SARA BAUTISTA",
          created: "2022-06-07T22:45:00",
          status: "SIN_LEER",
          state: "ABIERTO",
          update: "2022-06-07T22:45:00",
          to: "#",
          active: false
        },
        %{
          title: "Cotizaciones",
          subtitle: "Cotzacion de QWE-AS-1234 terminada",
          created_by: "SARA BAUTISTA",
          created: "2022-05-07T22:45:00",
          status: "SIN_LEER",
          state: "ABIERTO",
          update: "2022-05-07T22:45:00",
          to: "#",
          active: false
        },
        %{
          title: "Ventas",
          subtitle: "Asignación de disañador a ZXC-ZX-234",
          created_by: "SARA BAUTISTA",
          created: "2022-04-07T22:45:00",
          status: "SIN_LEER",
          state: "ABIERTO",
          update: "2022-04-07T22:45:00",
          to: "#",
          active: false
        },
        %{
          title: "Cotizaciones",
          subtitle: "Cotzacion de QWE-AS-1234 terminada",
          created_by: "SARA BAUTISTA",
          created: "2022-03-07T22:45:00",
          status: "SIN_LEER",
          state: "ABIERTO",
          update: "2022-03-07T22:45:00",
          to: "#",
          active: false
        },
        %{
          title: "Ventas",
          subtitle: "Asignación de disañador a ZXC-ZX-234",
          created_by: "SARA BAUTISTA",
          created: "2022-02-07T22:45:00",
          status: "SIN_LEER",
          state: "ABIERTO",
          update: "2022-02-07T22:45:00",
          to: "#",
          active: false
        },
      ]
    end

    def issues() do
      [
        %{
          title: "[ FRONT ] < AUTH > - Vista de Settings del Auth con boton de regreso ",
          subtitle: "#5",
          created_by: "SARA BAUTISTA",
          created: "2022-06-07T22:45:00",
          status: "REDD",
          state: "ABIERTO",
          update: "2022-06-07T22:45:00",
          to: "#"
        },
        %{
          title: "[ FRONT ] < AUTH > - Vista de Settings del Auth con boton de regreso ",
          subtitle: "#5",
          created_by: "SARA BAUTISTA",
          created: "2022-06-07T22:45:00",
          status: "REDD",
          state: "ABIERTO",
          update: "2022-06-07T22:45:00",
          to: "#"
        },
        %{
          title: "[ FRONT ] < AUTH > - Vista de Settings del Auth con boton de regreso ",
          subtitle: "#5",
          created_by: "SARA BAUTISTA",
          created: "2022-06-07T22:45:00",
          status: "REDD",
          state: "ABIERTO",
          update: "2022-06-07T22:45:00",
          to: "#"
        },
        %{
          title: "[ FRONT ] < AUTH > - Vista de Settings del Auth con boton de regreso ",
          subtitle: "#5",
          created_by: "SARA BAUTISTA",
          created: "2022-06-07T22:45:00",
          status: "REDD",
          state: "ABIERTO",
          update: "2022-06-07T22:45:00",
          to: "#"
        },
        %{
          title: "[ FRONT ] < AUTH > - Vista de Settings del Auth con boton de regreso ",
          subtitle: "#5",
          created_by: "SARA BAUTISTA",
          created: "2022-06-07T22:45:00",
          status: "REDD",
          state: "ABIERTO",
          update: "2022-06-07T22:45:00",
          to: "#"
        },
        %{
          title: "[ FRONT ] < AUTH > - Vista de Settings del Auth con boton de regreso ",
          subtitle: "#5",
          created_by: "SARA BAUTISTA",
          created: "2022-06-07T22:45:00",
          status: "REDD",
          state: "ABIERTO",
          update: "2022-06-07T22:45:00",
          to: "#"
        },
      ]
    end
  end
