var caramel = require('caramel');
caramel.configs({
    context: '/myjag',
    negotiation: true,
    themer: function () {
        return 'classic';
    }
});
