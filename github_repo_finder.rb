class GithubRepoFinder

  class << self
    def open page = nil
      new(page).open
    end
  end

  def initialize(page = nil)
    @remote = find_github_remote
    @page   = page
  end

  def open
    %x(open #{build_url})
  end

  private

  def build_url
    if is_http_remote?
      "#{@remote.split('=').last.strip}/#{@page}"
    else
      "https://github.com/#{author}/#{name}/#{@page}"
    end
  end

  def name
    repo_data.split('/').last.gsub(/\.git/, '').strip
  end

  def author
    repo_data.split('/').first.strip
  end

  def repo_data
    @remote.split(':').last
  end

  def is_http_remote?
    @remote =~ /https?/
  end

  def find_github_remote
    File.open(File.join('.git', 'config'), 'r') do |file|
      file.find {|line| line =~ /github/ }
    end
  end

end

