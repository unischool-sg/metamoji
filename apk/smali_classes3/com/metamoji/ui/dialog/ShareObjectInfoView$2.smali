.class Lcom/metamoji/ui/dialog/ShareObjectInfoView$2;
.super Ljava/lang/Object;
.source "ShareObjectInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/ShareObjectInfoView;->showSelectObjectInfo(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtDocument;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Lcom/metamoji/ns/task/INsGetNickNamesMapFromServerAfterAction;

.field final synthetic val$finalRequestDcUserNickNameArray:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/metamoji/ns/task/INsGetNickNamesMapFromServerAfterAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 354
    iput-object p1, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$2;->val$finalRequestDcUserNickNameArray:Ljava/util/List;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$2;->val$action:Lcom/metamoji/ns/task/INsGetNickNamesMapFromServerAfterAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 359
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$2;->val$finalRequestDcUserNickNameArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$2;->val$finalRequestDcUserNickNameArray:Ljava/util/List;

    invoke-static {v0}, Lcom/metamoji/dvm/DvmUtil;->resolveUserName(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 364
    :goto_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ui/dialog/ShareObjectInfoView$2$1;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ui/dialog/ShareObjectInfoView$2$1;-><init>(Lcom/metamoji/ui/dialog/ShareObjectInfoView$2;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
