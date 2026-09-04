.class Lcom/metamoji/noteanytime/EditorActivity$MainViewport$1;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity$MainViewport;->editDocument(Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity$MainViewport;

.field final synthetic val$activity:Lcom/metamoji/noteanytime/EditorActivity;

.field final synthetic val$editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

.field final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity$MainViewport;Lcom/metamoji/noteanytime/EditorActivity;Lcom/metamoji/nt/NtEditorWindowController;Landroid/os/Bundle;)V
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

    .line 1999
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport$1;->this$0:Lcom/metamoji/noteanytime/EditorActivity$MainViewport;

    iput-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport$1;->val$activity:Lcom/metamoji/noteanytime/EditorActivity;

    iput-object p3, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport$1;->val$editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p4, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport$1;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDocumentCompleted(ZLjava/lang/Throwable;)V
    .locals 2

    if-nez p2, :cond_2

    .line 2004
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p1

    const-string p2, "DocumentEditorRestoringCount"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    .line 2005
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport$1;->val$activity:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {p1}, Lcom/metamoji/noteanytime/EditorActivity;->doAtFirst()V

    .line 2022
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport$1;->val$activity:Lcom/metamoji/noteanytime/EditorActivity;

    iget-object p1, p1, Lcom/metamoji/noteanytime/EditorActivity;->_cmdAfterSheareNoteOpenedInfo:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 2023
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport$1;->val$activity:Lcom/metamoji/noteanytime/EditorActivity;

    iget-object p1, p1, Lcom/metamoji/noteanytime/EditorActivity;->_cmdAfterSheareNoteOpenedInfo:Ljava/util/Map;

    const-string p2, "collaboRestoreProcInfo"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 2025
    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport$1;->val$editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p2}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2026
    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport$1;->val$editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p2}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2028
    invoke-virtual {p2, p1}, Lcom/metamoji/ns/direction/NsDirectionManager;->setCollaboRestoreProcInfo(Ljava/util/Map;)V

    .line 2035
    :cond_0
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport$1;->val$extras:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    .line 2036
    const-string p2, "driveid"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2037
    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport$1;->val$extras:Landroid/os/Bundle;

    const-string v0, "docIds"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2038
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport$1;->val$extras:Landroid/os/Bundle;

    const-string v1, "newTitle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 2041
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport$1;->val$editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    .line 2042
    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtDocument;->setDocumentTitle(Ljava/lang/String;)V

    .line 2044
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport$1;->val$activity:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->getDocumentID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p1}, Lcom/metamoji/noteanytime/EditorActivity;->pastePageFromDocuments(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 2053
    :cond_2
    instance-of p1, p2, Lcom/metamoji/cm/CmException;

    if-eqz p1, :cond_3

    move-object p1, p2

    check-cast p1, Lcom/metamoji/cm/CmException;

    invoke-virtual {p1}, Lcom/metamoji/cm/CmException;->getCode()I

    move-result p1

    sget-object v0, Lcom/metamoji/nt/NtErrorCode;->ERROR_CANCEL_PASSWORD_AUTHENTICATION:Lcom/metamoji/nt/NtErrorCode;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtErrorCode;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 2054
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport$1;->val$activity:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {p1}, Lcom/metamoji/noteanytime/EditorActivity;->returnToCabinet()V

    return-void

    .line 2056
    :cond_3
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport$1;->val$activity:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-static {p1, p2}, Lcom/metamoji/noteanytime/EditorActivity;->-$$Nest$monNoteLoadError(Lcom/metamoji/noteanytime/EditorActivity;Ljava/lang/Throwable;)V

    return-void
.end method
