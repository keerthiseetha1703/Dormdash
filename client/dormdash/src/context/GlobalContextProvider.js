import React from 'react';

export const GlobalStateContext = React.createContext();
export const GlobalDispatchContext  = React.createContext();


let initialState = {
	dining_place : 'None'	
}

function reducer(state, action) {

	

	switch (action.type) {
		case 'ADD_ITEM': {
			return {				
				dining_place : action.payload
			}
		}

		default:
			return state;
	}
}

const GlobalContextProvider = ({children}) => {	
	const [state, dispatch] = React.useReducer(reducer, initialState)
	return (
		<GlobalStateContext.Provider value = {state}>
			<GlobalDispatchContext.Provider value = {dispatch}> 
				{children} 
			</GlobalDispatchContext.Provider> 
		</GlobalStateContext.Provider>
	)
}

export default GlobalContextProvider