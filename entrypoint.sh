
kedro_run (){
    if [ $INPUT_SHOULD_RUN ]; then
        print_step "kedro run"
        kedro run
    fi
}
 mkdir ~/kedro-action # files to be hosted will go here.
 status=0
 
 
##### RUN PROJECT #####
if $INPUT_VERBOSE
	then
	kedro_run && success successfully ran pipeline || fail failed to run pipeline
	else
	kedro_run > logs/run.log 2>&1 && success successfully ran pipeline || fail failed to run pipeline
fi



exit $status
