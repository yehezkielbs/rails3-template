describe('samples', function () {

  describe('ListCtrl', function () {

    it('query for samples', function () {
      var mock_scope = {},
        mock_sample = {
          query: sinon.stub().returns('something')
        };

      samples.ListCtrl(mock_scope, mock_sample);

      expect(mock_scope.samples).to.eql('something');
    });

  });

});