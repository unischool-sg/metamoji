.class Lcom/metamoji/dm/impl/sync/DmDCSyncManager$2;
.super Ljava/lang/Object;
.source "DmDCSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->createSyncUserInfoBaseSync(I)Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 405
    iput-object p1, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$2;->val$response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$2;->val$response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    const/16 v1, -0xc8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 409
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$2;->val$response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->analiseCabinetUserError(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    return-void
.end method
