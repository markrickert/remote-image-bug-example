class HomeScreen < PM::TableScreen
  title "Remote Image Loading Bug"
  stylesheet HomeScreenStylesheet

  def on_load
    JMImageCache.sharedCache.removeAllObjects
  end

  def on_appear
    app.alert("Instructions:\n\nScroll really fast and stop.\nScroll really fast and stop again.\n\nYou'll see images get replaced by images. This is happening because when the cell is reused, it's not cancelling the remote image download and resetting the placeholder.")
  end

  def table_data
    [{cells:UIFaces.all.map{ |f| cell(f) }}]
  end

  def cell(face)
    {
      title: face,
      remote_image: {
        url: UIFaces[face],
        placeholder: 'placeholder',
        radius: 20
      }

    }
  end

end
