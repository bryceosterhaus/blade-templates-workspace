<%@ include file="/init.jsp" %>

<div id="<portlet:namespace />-1">
	<p>A friendly reversible message from Vue.js:</p>
	<p>{{message}}</p>
	<button v-on:click="reverseMessage">Reverse message, pretty please</button>
</div>

<hr />

<div id="<portlet:namespace />-2">
	<p>A to do list made with Vue.js components:</p>
	<ol>
		<todo-item
			v-bind:key="item.id"
			v-bind:todo="item"
			v-for="item in groceryList"
		/>
	</ol>
</div>

<aui:script>
	import(
		Liferay.ThemeDisplay.getPathContext() + '/o/vue-portlet/js/index.js'
	).then(
		(module) => module.default('<portlet:namespace />')
	);
</aui:script>