if($args.Count -lt 2){
	"Insufficient arguments. Usage bpush <plat|doc> <br|sy|nw|vo>";
	Exit
}

$repo=$args[0]


switch ($repo){
	"plat"{
		Write-Host "Platform -> " -NoNewline -ForegroundColor DarkGreen
		cd C:\Users\Franco\go\src\github.com\joinbrella\platform
		for ( $i = 1; $i -lt $args.count; $i++ ) {
			Write-Host "Pushing " -NoNewline
		    switch ($args[$i]){
		    	"br"{
		    		Write-Host "Brella " -NoNewline -ForegroundColor Magenta
		    		Write-Host "qa-platform"
		    		git push --force origin qa-platform:brella/qa-platform
		    		break
		    	}
		    	"sy"{
		    		Write-Host "Symetra " -NoNewline -ForegroundColor Magenta
		    		Write-Host "qa-platform"
		    		git push --force origin qa-platform:symetra/qa-platform
		    		break
		    	}
		    	"nw"{
		    		Write-Host "Nationwide " -NoNewline -ForegroundColor Magenta
		    		Write-Host "qa-platform"
		    		git push --force origin qa-platform:nationwide/qa-platform
		    		break
		    	}
		    	"vo"{
		    		Write-Host "Voya " -NoNewline -ForegroundColor Magenta
		    		Write-Host "qa-platform"
		    		git push --force origin qa-platform:voya/qa-platform
		    		break
		    	}
		    	default {
		    		"Invalid sp. Usage bpush <plat|doc> <br|sy|nw|vo>"; 
		    		break
		    	}
		    }
		}
		break
	}
	"doc"{
		Write-Host "Docgen -> " -NoNewline -ForegroundColor DarkGreen
		cd C:\Users\Franco\go\src\github.com\joinbrella\docgeneration
		for ( $i = 1; $i -lt $args.count; $i++ ) {
			Write-Host "Pushing " -NoNewline
		    switch ($args[$i]){
		    	"br"{
		    		Write-Host "Brella " -NoNewline -ForegroundColor Magenta
		    		Write-Host "qa-doctemplate"
		    		git push --force origin qa-doctemplate:brella/qa-doctemplate
		    		break
		    	}
		    	"sy"{
		    		Write-Host "Symetra " -NoNewline -ForegroundColor Magenta
		    		Write-Host "qa-doctemplate"
		    		git push --force origin qa-doctemplate:symetra/qa-doctemplate
		    		break
		    	}
		    	"nw"{
		    		Write-Host "Nationwide " -NoNewline -ForegroundColor Magenta
		    		Write-Host "qa-doctemplate"
		    		git push --force origin qa-doctemplate:nationwide/qa-doctemplate
		    		break
		    	}
		    	"vo"{
		    		Write-Host "Voya " -NoNewline -ForegroundColor Magenta
		    		Write-Host "qa-doctemplate"
		    		git push --force origin qa-doctemplate:voya/qa-doctemplate
		    		break
		    	}
		    	default {
		    		"Invalid sp. Usage bpush <plat|doc> <br|sy|nw|vo>"; 
		    		break
		    	}
		    }
		}
		break
	}
	default{
		"Invalid repo. Usage bpush <plat|doc> <br|sy|nw|vo>"; 
		Exit
	}
}


