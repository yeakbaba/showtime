@Users = React.createClass
  getInitialState: ->
    users: @props.data
  getDefaultProps: ->
    users: []
  render: ->
    React.DOM.div
      className: 'users'
      React.DOM.h2
        className: 'name'
        'Users'
      React.DOM.table
        className: 'table table-bordered'
        React.DOM.thead null,
          React.DOM.tr null,
            React.DOM.th null, 'Name'
            React.DOM.th null, 'Phone'
            React.DOM.th null, 'Price'
        React.DOM.tbody null,
          for user in @state.users
            React.createElement User, key: user.id, user: user


@User = React.createClass
  render: ->
    React.DOM.tr null,
      React.DOM.td null, @props.user.name
      React.DOM.td null, @props.user.phone
      React.DOM.td null, amountFormat(@props.user.price_incall_a_session)