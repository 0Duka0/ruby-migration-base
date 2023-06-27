# schema 配下のファイルを一括 require
Dir[File.expand_path('../schema', __FILE__) << '/*.schema'].each do |file|
  require file
end
