.class Lcom/metamoji/nt/NtNoteController$70;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;->setGroupListInner(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$noteController:Lcom/metamoji/nt/NtNoteController;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtNoteController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10070
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$70;->this$0:Lcom/metamoji/nt/NtNoteController;

    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController$70;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 10073
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$70;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 10074
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v0

    .line 10075
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$70;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10077
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$70;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/metamoji/ns/direction/NsDirectionManager;->addNotifyBoothUpdated(Lcom/metamoji/nt/NtNoteController;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 10080
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$70;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->isCollabo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10081
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10084
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    check-cast v0, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v0, :cond_1

    .line 10086
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->updateAttentionArea()V

    .line 10089
    :cond_1
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->startPersonalModeByAttentionUser()V

    :cond_2
    return-void
.end method
