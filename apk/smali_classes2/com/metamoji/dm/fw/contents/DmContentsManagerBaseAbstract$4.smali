.class Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$4;
.super Ljava/lang/Object;
.source "DmContentsManagerBaseAbstract.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->deleteContentsData(Ljava/lang/String;Ljava/lang/String;)Z
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
.field final synthetic this$0:Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;

.field final synthetic val$ctx:Lcom/metamoji/dm/fw/contents/DmContentsContext;

.field final synthetic val$k:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;Lcom/metamoji/dm/fw/contents/DmContentsContext;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 420
    iput-object p1, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$4;->this$0:Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;

    iput-object p2, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$4;->val$ctx:Lcom/metamoji/dm/fw/contents/DmContentsContext;

    iput-object p3, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$4;->val$k:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$4;->val$ctx:Lcom/metamoji/dm/fw/contents/DmContentsContext;

    iget-object v1, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$4;->val$k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/dm/fw/contents/DmContentsContext;->deleteKey(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 420
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$4;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
