.class Lcom/metamoji/ns/NsCollaboCommand$9$2;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand$9;->action(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboCommand$9;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboCommand$9;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 899
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$9$2;->this$0:Lcom/metamoji/ns/NsCollaboCommand$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDocumentCompleted(ZLjava/lang/Throwable;)V
    .locals 0

    .line 902
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$9$2;->this$0:Lcom/metamoji/ns/NsCollaboCommand$9;

    iget-object p1, p1, Lcom/metamoji/ns/NsCollaboCommand$9;->val$ret:Ljava/util/HashMap;

    const-string p2, "error"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 903
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_ERROR_MSG_DISTRIBUTE_CLASS_BOX:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMsgDialog(Ljava/lang/String;)V

    return-void

    .line 905
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;->getInstance()Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;->stopSync(Z)V

    return-void
.end method
