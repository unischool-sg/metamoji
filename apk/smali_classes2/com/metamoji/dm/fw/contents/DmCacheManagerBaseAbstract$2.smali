.class Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract$2;
.super Ljava/lang/Object;
.source "DmCacheManagerBaseAbstract.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->writeCacheDataFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;

.field final synthetic val$ctx:Lcom/metamoji/dm/fw/contents/DmCacheContext;

.field final synthetic val$k:Ljava/lang/String;

.field final synthetic val$nrf:Ljava/io/File;

.field final synthetic val$nrfn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;Lcom/metamoji/dm/fw/contents/DmCacheContext;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 225
    iput-object p1, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract$2;->this$0:Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;

    iput-object p2, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract$2;->val$ctx:Lcom/metamoji/dm/fw/contents/DmCacheContext;

    iput-object p3, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract$2;->val$k:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract$2;->val$nrfn:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract$2;->val$nrf:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract$2;->val$ctx:Lcom/metamoji/dm/fw/contents/DmCacheContext;

    iget-object v1, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract$2;->val$k:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract$2;->val$nrfn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/dm/fw/contents/DmCacheContext;->updateValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract$2;->val$nrf:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 232
    new-instance v0, Lcom/metamoji/cm/CmException;

    invoke-direct {v0}, Lcom/metamoji/cm/CmException;-><init>()V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 225
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract$2;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
