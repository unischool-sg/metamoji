.class public interface abstract Lcom/metamoji/dm/fw/storage/IDmStorageManager;
.super Ljava/lang/Object;
.source "IDmStorageManager.java"


# virtual methods
.method public abstract copy(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public abstract copyCache(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public abstract delete(Ljava/lang/String;)Z
.end method

.method public abstract deleteCache(Ljava/lang/String;)Z
.end method

.method public abstract exists(Ljava/lang/String;)Z
.end method

.method public abstract existsCache(Ljava/lang/String;)Z
.end method

.method public abstract getCacheRootPath()Ljava/lang/String;
.end method

.method public abstract getDataRootPath()Ljava/lang/String;
.end method

.method public abstract move(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public abstract moveCache(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public abstract read(Ljava/lang/String;)Ljava/io/InputStream;
.end method

.method public abstract readCache(Ljava/lang/String;)Ljava/io/InputStream;
.end method

.method public abstract write(Ljava/io/InputStream;Ljava/lang/String;Z)Z
.end method

.method public abstract writeCache(Ljava/io/InputStream;Ljava/lang/String;Z)Z
.end method
