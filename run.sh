#include <iostream>

iter = tree.find_by_order(value)
order = tree.order_of_key(value)

#if !defined(GNU_ORDER_STATISTIC_SET_H)
#define GNU_ORDER_STATISTIC_SET_H
#include <ext/pb_ds/assoc_container.hpp>
#include <ext/pb_ds/tree_policy.hpp>

//A red-black tree table storing ints and their order
//statistics. Note that since the tree uses
//tree_order_statistics_node_update as its update policy, then it
//includes its methods by_order and order_of_key.
template <typename T>
using t_order_statistic_set = _gnu_pbds::tree<
                                 T,
                                 __gnu_pbds::null_type,
                                 std::less<T>,
                                 __gnu_pbds::rb_tree_tag,
                                 // This policy updates nodes' metadata for order statistics.
                                 __gnu_pbds::tree_order_statistics_node_update>;
                                 
#endif //GNU_ORDER_STATISTIC_SET_H
