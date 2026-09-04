.class Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1;
.super Ljava/lang/Object;
.source "ScOfflineEditManager.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->endOfflineEditMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

.field final synthetic val$editorWindowController:Lcom/metamoji/nt/NtEditorWindowController;

.field final synthetic val$noteController:Lcom/metamoji/nt/NtNoteController;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/NtNoteController;)V
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

    .line 197
    iput-object p1, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1;->this$0:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    iput-object p2, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1;->val$editorWindowController:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p3, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 4

    .line 200
    iget-object p1, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1;->val$editorWindowController:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_END_OFFLINE_EDIT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    .line 206
    iget-object v0, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1;->val$editorWindowController:Lcom/metamoji/nt/NtEditorWindowController;

    if-eqz p1, :cond_1

    .line 201
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object p1

    .line 202
    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsDirectionManager;->bgTaskForReflectOfflineEdit()Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;

    move-result-object p1

    if-nez p1, :cond_0

    .line 203
    iget-object p1, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1;->this$0:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    iget-object v0, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->reflectOfflineEdit(Lcom/metamoji/nt/NtNoteController;Z)V

    :cond_0
    return-void

    .line 206
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    .line 208
    const-string v0, "MMJNsShareSettings"

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ns/NsCollaboSettings;

    .line 209
    invoke-virtual {p1}, Lcom/metamoji/ns/NsCollaboSettings;->getOwnerNickName()Ljava/lang/String;

    move-result-object p1

    .line 212
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CAN_NOT_REFLECT_OFFLINE_EDIT:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 214
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CAN_NOT_REFLECT_OFFLINE_EDIT2:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    .line 215
    const-string v2, "%@"

    const-string v3, "%s"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 216
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 217
    const-string v1, "%s%s"

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 224
    :cond_2
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v1, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1;-><init>(Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
