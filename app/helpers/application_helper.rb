module ApplicationHelper
  def page_title(title = '')
    title.present? ? title : "ページタイトル(未設定)"
  end
end
