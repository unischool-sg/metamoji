.class Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$1;
.super Ljava/lang/Object;
.source "DmContentsManagerBaseAbstract.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->getContentsFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
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
.field final synthetic this$0:Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;

.field final synthetic val$ctx:Lcom/metamoji/dm/fw/contents/DmContentsContext;

.field final synthetic val$k:Ljava/lang/String;

.field final synthetic val$v:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;Lcom/metamoji/dm/fw/contents/DmContentsContext;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 172
    iput-object p1, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$1;->this$0:Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;

    iput-object p2, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$1;->val$ctx:Lcom/metamoji/dm/fw/contents/DmContentsContext;

    iput-object p3, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$1;->val$k:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$1;->val$v:Ljava/lang/String;

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

    .line 172
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$1;->call()Ljava/lang/String;

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

    .line 175
    iget-object v0, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$1;->val$ctx:Lcom/metamoji/dm/fw/contents/DmContentsContext;

    iget-object v1, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$1;->val$k:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$1;->val$v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/dm/fw/contents/DmContentsContext;->updateValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 176
    iget-object v0, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$1;->val$v:Ljava/lang/String;

    return-object v0
.end method
