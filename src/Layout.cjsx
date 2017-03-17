import React from "react"
import Sorting from "./Sorting.cjsx"
export default class Layout extends React.Component
	
	constructor: (props) ->
		super props
		@state =
			data: [6,4,9,2]
	updateList: (val) =>
		@state.data.push val
		object = 
			data: @state.data
		@setState object
	render: ->
		return(
			
			<Sorting data= {@state.data} updateList={@updateList.bind(this)}/>
		)

	