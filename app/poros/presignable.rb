module Presignable

  def get_url(filename)
    signer = Aws::S3::Presigner.new
    signer.presigned_url(:get_object, bucket: "sampe-space", key: filename)
  end
end
