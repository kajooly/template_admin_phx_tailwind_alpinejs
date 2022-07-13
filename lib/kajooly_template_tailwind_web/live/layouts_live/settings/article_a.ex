defmodule KajoolyTemplateTailwindWeb.LayoutsLive.SettingsArticleA do
  use KajoolyTemplateTailwindWeb, :live_view

  import KajoolyTemplateTailwindWeb.GenericLive.Icons
  import Phoenix.LiveView
  import Phoenix.LiveView.Helpers
  import KajoolyTemplateTailwindWeb.GenericLive.Cards


  def settings_article_a(assigns) do
    ~H"""
    <article class={"#{assigns[:class]}"}>
      <div class="flex">
        <h5 class="flex-1 mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
          Who has access
        </h5>
        <button type="button" class="flex-0 py-1.5 px-5 mr-2 mb-2 text-sm font-medium text-gray-900 focus:outline-none bg-white rounded-lg border border-gray-200 hover:bg-gray-100 hover:text-blue-700 focus:z-10 focus:ring-4 focus:ring-gray-200 dark:focus:ring-gray-700 dark:bg-gray-800 dark:text-gray-400 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-700">Alternative link</button>
      </div>
      <p class="font-normal text-gray-700 dark:text-gray-400">Here are the biggest enterprise technology acquisitions of 2021 so far, in reverse chronological order.</p>
      <div class="w-full md:flex py-3">
        <.simple_card_a add_class="w-[75%] md:w-[30%] mx-auto" >
          <:title>
            Who has access
          </:title>
          <:icon>
            <.icons_eye width="11" height="11" class="flex-0 mt-2" />
          </:icon>
          <:body>
            This repository is public and visible to anyone.
          </:body>
          <:link to="#link"> Alternative b  </:link>
        </.simple_card_a>
        <.simple_card_a add_class="w-[75%] md:w-[30%] mx-auto" >
          <:title>
            Who has access
          </:title>
          <:icon>
            <.icons_body_text width="11" height="11" class="flex-0 mt-2" />
          </:icon>
          <:body>
            This repository is public and visible to anyone.
          </:body>
          <:link to="#link"> Alternative b  </:link>
        </.simple_card_a>
        <.simple_card_a add_class="w-[75%] md:w-[30%] mx-auto" >
          <:title>
            Who has access
          </:title>
          <:icon>
          <.icons_shield_lock width="11" height="11" class="flex-0 mt-2" />
          </:icon>
          <:body>
            This repository is public and visible to anyone.
          </:body>
          <:link to="#link"> Alternative b  </:link>
        </.simple_card_a>
      </div>
    </article>

    """
  end

end
