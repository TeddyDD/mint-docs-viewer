component SearchResult {
  connect Application exposing { query, results }

  style base {
    padding: 30px;
  }

  style title {
    border-bottom: 3px solid #EEE;
    padding-bottom: 5px;
    margin-bottom: 20px;
    font-size: 36px;
  }

	fun render : Html {
		<div::base>
  		<div::title><{"Search results for: " + query}></div>
  		<{
				for (r of results) {
					<p>
					<{String.join(" ", [r.packageName, r.tabName, r.entity])}>
					</p>
 				}
  		}>
		</div>
	}
}
