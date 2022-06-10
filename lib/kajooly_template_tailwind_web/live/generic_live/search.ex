defmodule KajoolyTemplateTailwindWeb.GenericLive.Search do
  import Phoenix.LiveView
  import Phoenix.LiveView.Helpers
  import KajoolyTemplateTailwindWeb.GenericLive.Button

  @doc """

  Search


  Live Controler code:

    import KajoolyTemplateTailwindWeb.GenericLive.Search


  ## Examples

    <.button_group
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
    <.button_group>
      <buttons {%{
            to: "#",
            borderradius: "left",
            border: "border-red-500 dark:border-red-500",
            class: "border-b-4"
          }} >
        Título del botón
      </.buttons>
    </.button_group>

  """
  def title_search(assigns) do
    ~H"""

    <div class="flex" x-data="{ openSearch: false, isCompactMode: $persist(false).as('isCompactMode') }">
      <div
        class="flex-1 my-auto "
          :class=" !openSearch ? '':'hidden' "
          >
          <span
          :class=" isCompactMode ? 'text-lg' : 'text-2xl' "
          >
          <%= render_slot(@title) %>
          </span>
        </div>
        <div
          :class=" !openSearch ? '':'hidden' "
          class="flex-0"
          >
        <button type="button" class="text-purple-600 hover:text-white border border-purple-600 hover:bg-purple-500 focus:ring-4 focus:outline-none focus:ring-purple-300 font-medium rounded-lg text-sm px-4  text-center mr-2  dark:border-yellow-300 dark:text-yellow-300 dark:hover:text-gray-600 dark:hover:bg-yellow-400 dark:focus:ring-yellow-900 "
        :class=" isCompactMode ? 'max-h-8 py-1.5' : 'max-h-10 py-2.5 mb-1'"
        @click="openSearch = !openSearch"

        >
            <svg class="w-5 h-5 " fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path></svg>
        </button>

        </div>
        <div
          :class=" openSearch ? '':'hidden' "
          class="flex-1"

          x-transition:enter="transition ease-out duration-100"
          x-transition:enter-start="transform opacity-0 scale-95"
          x-transition:enter-end="transform opacity-100 scale-100"
          x-transition:leave="transition ease-in duration-75"
          x-transition:leave-start="transform opacity-100 scale-100"
          x-transition:leave-end="transform opacity-0 scale-95"
          >
            <label for="default-search" class="mb- 2 text-xs font-medium text-gray-900 sr-only dark:text-gray-300">Buscar</label>
            <div class="relative">
              <div class="flex absolute inset-y-0 pt-3 left-0  pl-3 pointer-events-none">
                  <svg class="w-4 h-4 text-gray-500 dark:text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path></svg>
              </div>
              <%= render_slot(@inner_block) %>
            </div>

        </div>
        <div
          :class=" openSearch ? '':'hidden' "
          class="flex-0"
          :class=" isCompactMode ? '' : 'pt-2'"
          x-transition:enter="transition ease-out duration-100"
          x-transition:enter-start="transform opacity-0 scale-95"
          x-transition:enter-end="transform opacity-100 scale-100"
          x-transition:leave="transition ease-in duration-75"
          x-transition:leave-start="transform opacity-100 scale-100"
          x-transition:leave-end="transform opacity-0 scale-95"
          >
            <button type="button" class="text-yellow-400 hover:text-white border border-yellow-400 hover:bg-yellow-500 focus:ring-4 focus:outline-none focus:ring-yellow-300 font-medium rounded-lg text-sm px-4 text-center mr-2  dark:border-yellow-300 dark:text-yellow-300 dark:hover:text-gray-600 dark:hover:bg-yellow-400 dark:focus:ring-yellow-900"
            :class=" isCompactMode ? 'max-h-8 py-1.5' : 'max-h-10 py-2.5'"
            @click="openSearch = !openSearch"

            >
              <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12" />
              </svg>
            </button>

        </div>
    </div>
    """
  end

end
