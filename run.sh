env_vars=$(env | grep "^.*TUTUM_API_URL" | cut -d= -f1 | tr '\n' ' ')
for env_var in $env_vars
do
  curl -H "Authorization: $TUTUM_AUTH" -H "Accept: application/json" $env_var
done
  
 
