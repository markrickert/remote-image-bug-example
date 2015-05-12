remote-image-bug
===================

An issue where with JMImageCache in a `PM::TableScreen` with remote images, the remote image operation isn't canceled so it keeps setting the image on the reused cells.

![Example](example.gif?raw=true)

Here's how I've solved it in a custom `PM::TableViewCell` with `SDWebImage` which DOES have an operation canceling feature:

```ruby
# Should be included in a custom UITableViewCell
module RemoteImageCell
  def prepareForReuse
    @image_operation.each do |k,v|
      v.cancel
    end
    @image_operation = {}
  end

  def set_remote_image(url, image_location = nil)
    @image_operation ||= {}

    url = NSURL.URLWithString(url) unless url.is_a?(NSURL)
    image_location = self.imageView if image_location.nil?

    @image_operation[url.absoluteString] = manager.downloadWithURL(url,
      options:SDWebImageRefreshCached,
      progress:nil,
      completed: -> image, error, cacheType, finished {
        image_location.image = image unless image.nil?
    })
  end

  def set_placeholder_image(image, image_location = nil)
    image_location = self.imageView if image_location.nil?

    image_location.image = UIImage.imageNamed(image)
    image_location.layer.masksToBounds = true
    image_location.layer.cornerRadius = 20
  end

  def remote_image=(url)
    set_remote_image(url)
  end

  def placeholder_image=(image)
    set_placeholder_image(image)
  end

  def manager
    SDWebImageManager.sharedManager
  end

end
```
