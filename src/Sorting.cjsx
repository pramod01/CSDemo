import React from "react"

export default class Sorting extends React.Component

	@isArrayValid = true
	constructor: (@props) ->
		super(@props)
		
	ascending: (data) ->
		count = data.length
		array = data
		swapped = true;
		while swapped
			swapped = false
			for i in [0...count-1] by 1
				if array[i] > array[i + 1]
					temp = array[i + 1]
					array[i + 1] = array[i]
					array[i] = temp
					swapped = true
		return array
	###
	@checkArray:(propValue, key, componentName, location, propFullName) =>

		if typeof propValue[key] != 'number' 
			@isArrayValid = false
			return new Error propValue[key]
		return null
	###
	updateList: => 
		Sorting.isArrayValid = true
		val = Number @refs.mNumber.value
		if not isNaN val
			@props.updateList(val)
		else
			console.log 12

		
	render: ->
		$data = @ascending @props.data
		return(

			<div>
				<form>
					<div className="form-group ">
						<label>Enter Number: </label>
						<input type="text" className="form-control" ref="mNumber"/>
						
					</div>
					<button type="button" className="btn btn-default" onClick={@updateList}>Submit</button>
				</form>
				<br />

				<ul>
					{
						$data.map((data,index)=>
							return <li key={index}>{data}</li>
						)
					}
				</ul>
			</div>
		)
###
Sorting.propTypes =
	data: React.PropTypes.arrayOf Sorting.checkArray
###
		
		
		