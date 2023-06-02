defmodule KajoolyTemplateTailwindWeb.LayoutsLive.FilesIcons do
  import Phoenix.LiveView.Helpers
  import KajoolyTemplateTailwindWeb.GenericLive.Icons

  @doc """

  File Icon

  Live Controler code:

    import KajoolyTemplateTailwindWeb.LayoutsLive.FilesIcons

  ## Examples

    <.file_icon
      type="pdf"
    />
  """
  def file_icon(assigns) do

    case assigns[:type] do

      "xml" ->
        ~H"""
            <.icons_document class="mt-2 text-green-500" />
          """
      "csv" ->
        ~H"""
            <.icons_document class="mt-2 text-green-500" />
          """
      "xls" ->
        ~H"""
            <.icons_document class="mt-2 text-green-500" />
          """
      "xlsx" ->
        ~H"""
            <.icons_document class="mt-2 text-green-500" />
          """
      "doc" ->
        ~H"""
            <.icons_document class="mt-2 text-blue-500" />
          """

      "docx" ->
        ~H"""
            <.icons_document class="mt-2 text-blue-500" />
          """
      "jpg" ->
        ~H"""
            <.icons_document class="mt-2 text-orange-500" />
          """
      "jpge" ->
        ~H"""
            <.icons_document class="mt-2 text-orange-500" />
          """
      "png" ->
        ~H"""
            <.icons_document class="mt-2 text-orange-500" />
          """
      "img" ->
        ~H"""
            <.icons_document class="mt-2 text-orange-500" />
          """

      "pdf" ->
        ~H"""
            <.icons_document class="mt-2 text-red-500" />
          """
      _ ->
        ~H"""
          <.icons_document_text class="mt-2"/>
        """
      end
    end

end
