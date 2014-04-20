curl -d '{ "auth_token": "dashinglabtoken", "current": "100" }' http://dashinglab.herokuapp.com:80/widgets/mm_views_coverage;
curl -d '{ "auth_token": "dashinglabtoken", "current": "99.9" }' http://dashinglab.herokuapp.com:80/widgets/mm_controllers_coverage;
curl -d '{ "auth_token": "dashinglabtoken", "current": "99.5" }' http://dashinglab.herokuapp.com:80/widgets/mm_total_coverage;

