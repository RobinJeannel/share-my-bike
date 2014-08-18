Paperclip::Attachment.default_options[:storage] = :s3
Paperclip::Attachment.default_options[:url] = ':s3_domain_url'
Paperclip::Attachment.default_options[:path] = '/:rails_env/:class/:attachment/:id_partition/:style/:filename'
Paperclip::Attachment.default_options[:s3_credentials] = {
  bucket: ENV['share-my-bike'],
  access_key_id: ENV['AKIAJW3LBW2NWXQOAPUA'],
  secret_access_key: ENV['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']
}