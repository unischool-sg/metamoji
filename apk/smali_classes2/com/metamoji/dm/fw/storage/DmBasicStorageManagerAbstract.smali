.class public abstract Lcom/metamoji/dm/fw/storage/DmBasicStorageManagerAbstract;
.super Ljava/lang/Object;
.source "DmBasicStorageManagerAbstract.java"

# interfaces
.implements Lcom/metamoji/dm/fw/storage/IDmStorageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized deleteInnerRecursive(Ljava/io/File;)Z
    .locals 5

    monitor-enter p0

    .line 82
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 83
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 86
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 90
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 91
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 92
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 93
    invoke-direct {p0, v4}, Lcom/metamoji/dm/fw/storage/DmBasicStorageManagerAbstract;->deleteInnerRecursive(Ljava/io/File;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_2

    .line 94
    monitor-exit p0

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return p1

    .line 102
    :cond_4
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method


# virtual methods
.method protected declared-synchronized copyInner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 9

    monitor-enter p0

    .line 108
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 111
    const-string p3, "from file:\"%s\", \"%s\" is exists. and not overwrite options. skipped..."

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 112
    monitor-exit p0

    return v2

    .line 115
    :cond_0
    :try_start_1
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p4, :cond_1

    .line 117
    const-string p2, "from file:\"%s\", \"%s\" is exists. and not overwrite options. skipped..."

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 118
    monitor-exit p0

    return v2

    .line 121
    :cond_1
    :try_start_2
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 122
    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 127
    :cond_2
    :try_start_3
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3

    .line 128
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 130
    :cond_3
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 131
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 133
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 135
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 136
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 140
    :try_start_5
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    :goto_0
    cmp-long p2, v4, v0

    if-gez p2, :cond_4

    const p2, 0x3ff8000

    int-to-long v6, p2

    .line 144
    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-long/2addr v4, v6

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    .line 147
    :try_start_6
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 148
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    :cond_5
    if-eqz v8, :cond_6

    .line 151
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 152
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 159
    :cond_6
    :try_start_7
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 163
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 173
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v0

    move-object p2, v0

    if-eqz v3, :cond_7

    .line 147
    :try_start_8
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result p4

    if-eqz p4, :cond_7

    .line 148
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    :cond_7
    if-eqz v8, :cond_8

    .line 151
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result p4

    if-eqz p4, :cond_8

    .line 152
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 155
    :cond_8
    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    move-object p2, v0

    .line 159
    :try_start_9
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 163
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V

    .line 166
    throw p2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 169
    :catch_0
    monitor-exit p0

    return v2

    :catchall_2
    move-exception v0

    move-object p1, v0

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw p1
.end method

.method protected declared-synchronized deleteInner(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    .line 69
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    const-string v0, "from file:\"%s\", \"%s\" is exists. and not overwrite options. skipped..."

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 75
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/metamoji/dm/fw/storage/DmBasicStorageManagerAbstract;->deleteInnerRecursive(Ljava/io/File;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method protected declared-synchronized moveInner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3

    monitor-enter p0

    .line 41
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 44
    const-string p3, "from file:\"%s\", \"%s\" is exists. and not overwrite options. skipped..."

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return v2

    .line 48
    :cond_0
    :try_start_1
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p4, :cond_1

    .line 51
    const-string p2, "from file:\"%s\", \"%s\" is exists. and not overwrite options. skipped..."

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    monitor-exit p0

    return v2

    .line 55
    :cond_1
    :try_start_2
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 56
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3

    .line 59
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 63
    :cond_3
    :goto_0
    invoke-virtual {v0, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method protected declared-synchronized readInner(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    monitor-enter p0

    .line 23
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 30
    :try_start_1
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_0
    move-exception p1

    .line 32
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 25
    :cond_0
    const-string v0, "from file:\"%s\", \"%s\" is exists. and not overwrite options. skipped..."

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method protected declared-synchronized writeInner(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3

    monitor-enter p0

    .line 190
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-nez p4, :cond_0

    .line 192
    const-string p1, "to file:\"%s\", \"%s\" is exists. and not overwrite options. skipped..."

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 193
    monitor-exit p0

    return v2

    :cond_0
    const/4 p2, 0x0

    .line 199
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p3
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez p3, :cond_3

    .line 201
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_1

    .line 202
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    .line 204
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception p3

    .line 206
    :try_start_3
    invoke-virtual {p3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p1, :cond_2

    .line 237
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 207
    :catch_1
    :cond_2
    monitor-exit p0

    return v2

    .line 211
    :cond_3
    :goto_0
    :try_start_5
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 212
    new-instance p4, Ljava/io/BufferedInputStream;

    invoke-direct {p4, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 213
    :try_start_6
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 219
    :try_start_7
    invoke-static {v0, p4}, Lcom/metamoji/cm/CmUtils;->copyStream(Ljava/io/OutputStream;Ljava/io/InputStream;)Z

    .line 220
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 221
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 232
    :try_start_8
    invoke-virtual {p4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 243
    :catch_2
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 252
    :catch_3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p3

    goto :goto_1

    :catch_4
    move-exception p3

    goto :goto_2

    :catch_5
    move-exception p3

    goto :goto_3

    :catchall_1
    move-exception p3

    move-object v0, p2

    :goto_1
    move-object p2, p4

    goto :goto_8

    :catch_6
    move-exception p3

    move-object v0, p2

    :goto_2
    move-object p2, p4

    goto :goto_4

    :catch_7
    move-exception p3

    move-object v0, p2

    :goto_3
    move-object p2, p4

    goto :goto_6

    :catchall_2
    move-exception p3

    move-object v0, p2

    goto :goto_8

    :catch_8
    move-exception p3

    move-object v0, p2

    .line 227
    :goto_4
    :try_start_a
    invoke-virtual {p3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz p2, :cond_4

    .line 232
    :try_start_b
    invoke-virtual {p2}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_5

    :cond_4
    if-eqz p1, :cond_5

    .line 237
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catch_9
    :cond_5
    :goto_5
    if-eqz v0, :cond_6

    .line 243
    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 228
    :catch_a
    :cond_6
    monitor-exit p0

    return v2

    :catch_b
    move-exception p3

    move-object v0, p2

    .line 224
    :goto_6
    :try_start_d
    invoke-virtual {p3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-eqz p2, :cond_7

    .line 232
    :try_start_e
    invoke-virtual {p2}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_7

    :cond_7
    if-eqz p1, :cond_8

    .line 237
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catch_c
    :cond_8
    :goto_7
    if-eqz v0, :cond_9

    .line 243
    :try_start_f
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 225
    :catch_d
    :cond_9
    monitor-exit p0

    return v2

    :catchall_3
    move-exception p3

    :goto_8
    if-eqz p2, :cond_a

    .line 232
    :try_start_10
    invoke-virtual {p2}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_9

    :cond_a
    if-eqz p1, :cond_b

    .line 237
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_e
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :catch_e
    :cond_b
    :goto_9
    if-eqz v0, :cond_c

    .line 243
    :try_start_11
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_f
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 247
    :catch_f
    :cond_c
    :try_start_12
    throw p3

    :catchall_4
    move-exception p1

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    throw p1
.end method
