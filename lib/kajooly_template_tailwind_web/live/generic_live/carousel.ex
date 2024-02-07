defmodule KajoolyTemplateTailwindWeb.GenericLive.Carousel do
  #import Phoenix.LiveView.Helpers
  use Phoenix.Component

  alias Phoenix.LiveView.JS

  @doc """

  Carousel

  Live Controler code:

    import KajoolyTemplateTailwindWeb.GenericLive.Carousel

  ## Examples

    <.carousel
      buttons={[
          %{
            title: "Borrador",
            to: "#",
            borderradius: "left",
            border: "border-red-500 dark:border-red-500",
            class: "border-b-4"
          }
        ]}
    />
    ---
    <.carousel>
      <buttons {%{
            to: "#",
            borderradius: "left",
            border: "border-red-500 dark:border-red-500",
            class: "border-b-4"
          }} >
        Título del botón
      </.buttons>
    </.carousel>

  """
  def carousel(assigns) do
    ~H"""
    <div id="default-carousel" class="relative" data-carousel="static">
        <!-- Carousel wrapper -->
        <div class="overflow-hidden relative h-32 rounded-lg md:h-32 mb-4 ">
            <!-- Item 1 -->
            <%= for pg <- assigns[:list]  do %>
                <div class="flex mx-4 px-2">
                <div class="duration-700 ease-in-out mx-10 md:mx-20 absolute inset-0 transition-all transform translate-x-0 z-20 bg-white rounded-lg border border-gray-200 shadow-md dark:bg-gray-800 dark:border-gray-700" data-carousel-item="">

                    <div class="p-5">
                        <a href="#">
                            <h5 class="mb-2 text-xl font-bold tracking-tight text-gray-900 dark:text-white"><%= pg.name %></h5>
                        </a>
                        <p class="mb-1 font-normal text-gray-700 dark:text-gray-400"><%= pg.description %></p>
                        <a href="#" class="inline-flex items-center py-1.5 px-3 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                            Abrir
                            <svg aria-hidden="true" class="ml-2 -mr-1 w-4 h-4" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
                        </a>
                    </div>
                </div>
                </div>

            <% end %>
            </div>
            <!-- Slider controls -->
            <button type="button" class="flex absolute top-0 left-0 z-30 justify-center items-center px-4 h-full cursor-pointer group focus:outline-none" data-carousel-prev="">
                <span class="inline-flex justify-center items-center w-8 h-8 rounded-full sm:w-10 sm:h-10 bg-white/30 dark:bg-gray-800/30 group-hover:bg-white/50 dark:group-hover:bg-gray-800/60 group-focus:ring-4 group-focus:ring-white dark:group-focus:ring-gray-800/70 group-focus:outline-none">
                    <svg aria-hidden="true" class="w-5 h-5 text-white sm:w-6 sm:h-6 dark:text-gray-800" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7"></path></svg>
                    <span class="sr-only">Previous</span>
                </span>
            </button>
            <button type="button" class="flex absolute top-0 right-0 z-30 justify-center items-center px-4 h-full cursor-pointer group focus:outline-none" data-carousel-next="">
                <span class="inline-flex justify-center items-center w-8 h-8 rounded-full sm:w-10 sm:h-10 bg-white/30 dark:bg-gray-800/30 group-hover:bg-white/50 dark:group-hover:bg-gray-800/60 group-focus:ring-4 group-focus:ring-white dark:group-focus:ring-gray-800/70 group-focus:outline-none">
                    <svg aria-hidden="true" class="w-5 h-5 text-white sm:w-6 sm:h-6 dark:text-gray-800" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"></path></svg>
                    <span class="sr-only">Next</span>
                </span>
            </button>
        </div>

    """
  end

end
