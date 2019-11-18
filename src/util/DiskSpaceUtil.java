package util;

import java.io.File;

/**
 * @author ：方徐浩
 * @date ：Created in 2019/10/15 17:01
 * @description： 获取磁盘信息
 * @version: 1.0$
 */
public class DiskSpaceUtil {
    private File diskPartition = new File("C:");
    private long totalCapacity = diskPartition.getTotalSpace();
    private long freePartitionSpace = diskPartition.getFreeSpace();
    private long usablePatitionSpace = diskPartition.getUsableSpace();

    //获取剩余磁盘容量
    String getFreeSpace() {
        return String.valueOf(freePartitionSpace);
    }

    //获取已用磁盘容量
    String getUsableSpace() {
        return String.valueOf(usablePatitionSpace);
    }

    //获取磁盘总容量
    String getTotalSpace() {
        return String.valueOf(totalCapacity);
    }
}
