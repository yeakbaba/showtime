colors = ['#F0F8FF', '#FAEBD7', '#00FFFF', '#FFEBCD', '#5F9EA0', '#6495ED']

usersStyle = {
  border: '1px solid'
}

listStyle = {
  border: '1px solid'
}

@Users = React.createClass
  getInitialState: ->
    users: @props.data
  getDefaultProps: ->
    users: []
  render: ->
    React.DOM.div
      className: 'users container-fluid'
      style: usersStyle
      React.DOM.div
        className: 'column-fluid'
        React.DOM.div
          className: 'category'
          React.DOM.h2
          ' Users'
        React.DOM.div
          className: 'list container'
          style: listStyle
          for user in @state.users
            React.createElement UserBox, key: user.id, user: user


randomColor = (colors) ->
  colors[Math.floor(Math.random() * colors.length)]

userBoxStyle = {
  float: 'left'
  margin: '10px 0px 10px 0px'
  height: '400px'
  border: '1px solid'
  display: 'inline-block'
  background: randomColor(colors)
}

imageStyle = {
  height: '90%'
  width: '100%'
  position: 'relative'
  border: '1px solid'
}

clearStyle = {
  clear: 'both!important'
}

detailStyle = {

}

@UserBox = React.createClass
  render: ->
    React.DOM.div
      className: 'col-md-3 col-xs-6 col-sm-4 col-lg-3'
      style: userBoxStyle
      React.DOM.div
        className: 'user_image'
        style: imageStyle
      React.DOM.div
        className: 'clear'
        style: clearStyle
      React.DOM.div
        className: 'user_info'
        style: detailStyle
        React.DOM.div
          style: {width: '100%', float: 'left'}
          @props.user.name
        React.DOM.div
          style: {width: '100%', float: 'left'}
          @props.user.phone
#        React.DOM.h2
#          amountFormat(@props.user.price_incall_a_session)