<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>그리드 테스트</h1>
	<div id="grid" style="width: 100%;"></div>
	
	<script>
	
	/* const gridData = [
		  {
		    id: '10012',
		    city: 'Seoul',
		    country: 'South Korea',
		    item:'111'
		  },
		  {
		    id: '10013',
		    city: 'Tokyo',
		    country: 'Japan',
		    item:'222'
		  },
		  {
		    id: '10014',
		    city: 'London',
		    country: 'England',
		    item:'333'
		  },
		  {
		    id: '10015',
		    city: 'Ljubljana',
		    country: 'Slovenia',
		    item:'444'
		  },
		  {
		    id: '10016',
		    city: 'Reykjavik',
		    country: 'Iceland',
		    item:'555'
		  }
		]; */
		
		/* let gridData = {
				api: {
					readData : {
						url : '${pageContext.request.contextPath}/testAjax/info',
						method:'GET'
					}
				},
				contentType: 'application/json'
		}  */
		
		
		let arr=[];
		fetch("${pageContext.request.contextPath}/testAjax/info")
		.then(response=> response.json())
		.then(result => {
						
			for (item of result) {
				arr.push(item)
			}
			
			console.log(arr)
			
			grid.resetData(arr);
		})
			
	const grid = new tui.Grid({
	      el: document.getElementById('grid'),
	      data: {
				api: {
					readData : {
						url : '${pageContext.request.contextPath}/testAjax/info',
						method:'GET'
					}
				}
	      },
	      scrollX: false,
	      scrollY: false,
	      columns: [
	        {
	          header: 'employeeId',
	          name: 'employeeId'
	        },
	        {
	          header: 'firstName',
	          name: 'lastName'
	        },
	        {
	          header: 'lastName',
	          name: 'lastName'
	        },
	        {
	          header: 'email',
	          name: 'email'
	        },
	        {
	          header: 'phoneNumber',
	          name: 'phoneNumber'
	        },
	        {
	          header: 'hireDate',
	          name: 'hireDate'
	        },
	        {
	          header: 'jobId',
	          name: 'jobId'
	        },
	        {
	          header: 'salary',
	          name: 'salary'
	        },
	        {
	          header: 'commissionPct',
	          name: 'commissionPct'
	        },
	        {
	          header: 'managerId',
	          name: 'managerId'
	        },
	        {
	          header: 'departmentId',
	          name: 'departmentId'
	        }
	      ]
	    });
	
	//grid.resetData(gridData);
	//grid.resetData(arr);
	
	
	grid.on('click',ev => {
		
		console.log(ev)
		console.log(ev.nativeEvent.srcElement.innerHTML)
		console.log(ev.rowKey.innerHTML)
		console.log(ev.columnName)
		
		
		//grid.resetData(gridData);
		//grid.hideColumn('item')
		//grid.clear();
	})
	</script>
</body>
</html>