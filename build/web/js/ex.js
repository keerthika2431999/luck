function F(){
                     var lis=documnet.getElementById("list").getElementsByTagName("li");
                     var total=0;
                     var i;
                     for(i=0;i<lis.length;i++)
                     {
                          
                         var cost=Number(lis[i].getElementsByTagName("span")[0].innerHTML);
                         var quant=Number(lis[i].getElementsByTagName("input")[0].value);
                         total=total+(cost);
                      }
                    alert(total);
                    }