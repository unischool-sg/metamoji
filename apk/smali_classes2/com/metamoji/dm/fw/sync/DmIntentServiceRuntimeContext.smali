.class public Lcom/metamoji/dm/fw/sync/DmIntentServiceRuntimeContext;
.super Ljava/lang/Object;
.source "DmIntentServiceRuntimeContext.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x38dc3df172bd918fL


# instance fields
.field private _data:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRuntimeContext;->_data:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRuntimeContext;->_data:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/io/Serializable;)Z
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRuntimeContext;->_data:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getValue(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRuntimeContext;->_data:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;>;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRuntimeContext;->_data:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public putValu(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRuntimeContext;->_data:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
