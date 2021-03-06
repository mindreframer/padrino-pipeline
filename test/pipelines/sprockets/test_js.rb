require File.expand_path(File.dirname(__FILE__) + '/../../helpers/helper')
require File.expand_path(File.dirname(__FILE__) + '/../../fixtures/sprockets_app/sprockets_app')


describe :sprockets_javascript do
  let(:app) { AssetsAppSprockets }
  context 'for //= require' do
    it 'picks up require statements' do
      get '/assets/javascripts/app.js'
      assert_match 'var in_second_file;', last_response.body
    end
  end
 
end
