.class Lcom/metamoji/ns/NsCollaboCommand$33$1;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand$33;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboCommand$33;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboCommand$33;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2811
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$33$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$33;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2815
    invoke-static {}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->sharedInstance()Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    move-result-object v0

    .line 2816
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboCommand$33$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$33;

    iget-object v1, v1, Lcom/metamoji/ns/NsCollaboCommand$33;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2817
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->isOfflineEditMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2818
    iget-object v3, p0, Lcom/metamoji/ns/NsCollaboCommand$33$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$33;

    iget-object v3, v3, Lcom/metamoji/ns/NsCollaboCommand$33;->val$collaboManager:Lcom/metamoji/ns/NsCollaboManager;

    sget-object v4, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->OFFLINE_EDIT:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    invoke-virtual {v3, v4}, Lcom/metamoji/ns/NsCollaboManager;->changeMode(Lcom/metamoji/ns/NsCollaboManager$CollaboMode;)V

    .line 2819
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v3

    .line 2820
    invoke-virtual {v0, v3}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->isOfflineEditEnabledPage(Lcom/metamoji/nt/NtPageController;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2821
    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtNoteController;->setEditLayerEditable(Z)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2823
    invoke-virtual {v1, v3}, Lcom/metamoji/nt/NtNoteController;->setEditLayerEditable(Z)V

    .line 2826
    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->updateOfflineEditModeInfo(Z)V

    return-void
.end method
