module RandomTag
  host = `hostname`.strip # Get the hostname from the shell and removing trailing \n
  Dir.mkdir(".tmp") unless File.exists?(".tmp")
  Random_tag_filename = ".tmp/random_tag"
  if !File.file?(Random_tag_filename)
    Tag = host + "_" + SecureRandom.uuid
    File.write(Random_tag_filename, Tag)
  else
    Tag = File.read(Random_tag_filename)
  end
end
