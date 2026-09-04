.class Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract$1;
.super Ljava/lang/Object;
.source "DmCacheManagerBaseAbstract.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->getCacheFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;

.field final synthetic val$ctx:Lcom/metamoji/dm/fw/contents/DmCacheContext;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$rfn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;Lcom/metamoji/dm/fw/contents/DmCacheContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 165
    iput-object p1, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract$1;->this$0:Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;

    iput-object p2, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract$1;->val$ctx:Lcom/metamoji/dm/fw/contents/DmCacheContext;

    iput-object p3, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract$1;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract$1;->val$rfn:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 165
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract$1;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract$1;->val$ctx:Lcom/metamoji/dm/fw/contents/DmCacheContext;

    iget-object v1, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract$1;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract$1;->val$rfn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/dm/fw/contents/DmCacheContext;->updateValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 169
    iget-object v0, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract$1;->val$rfn:Ljava/lang/String;

    return-object v0
.end method
