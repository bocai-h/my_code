## rail中的锁机制
### rails中新建model时,其对应的表中有一个rails的保留字段(可选)lock_version就是用于锁机制

+ 乐观锁(optimistic locking)
+ 悲观锁(pessimistic locking)

[关于锁的文章](http://ruby-china.org/topics/28963)


 ````
  retry_times = 3
  begin
    @order.with_lock do
        @order.set_paid!
    end
  rescue ActiveRecord::StaleObjectError => e
    retry_times -= 1
    if retry_times > 0
        retry
    else
        raise e
    end
  rescue => e
    raise e
  end     

````