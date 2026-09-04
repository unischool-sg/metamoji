.class Lcom/metamoji/noteanytime/EditorActivity$RetainData;
.super Ljava/lang/Object;
.source "EditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/noteanytime/EditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RetainData"
.end annotation


# static fields
.field private static final KEY_FIRSTJOB:Ljava/lang/String; = "firstJob"

.field private static final KEY_MAINVIEWPORT:Ljava/lang/String; = "mainViewport"

.field private static final KEY_VIEWFORSOFTINPUT:Ljava/lang/String; = "viewForSoftInput"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearData()V
    .locals 1

    .line 7966
    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity$RetainData;->getRetainData()Lcom/metamoji/nt/NtRetainData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7968
    invoke-virtual {v0}, Lcom/metamoji/nt/NtRetainData;->clear()V

    :cond_0
    return-void
.end method

.method private static createRetainData()Lcom/metamoji/nt/NtRetainData;
    .locals 1

    .line 7936
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7937
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->createRetainData()Lcom/metamoji/nt/NtRetainData;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 7958
    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity$RetainData;->getRetainData()Lcom/metamoji/nt/NtRetainData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7959
    invoke-virtual {v0, p0}, Lcom/metamoji/nt/NtRetainData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;
    .locals 1

    .line 7979
    const-string v0, "documentEditor"

    invoke-static {v0}, Lcom/metamoji/noteanytime/EditorActivity$RetainData;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    return-object v0
.end method

.method public static getFirstJob()Lcom/metamoji/noteanytime/EditorActivity$FirstJob;
    .locals 1

    .line 8010
    const-string v0, "firstJob"

    invoke-static {v0}, Lcom/metamoji/noteanytime/EditorActivity$RetainData;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/noteanytime/EditorActivity$FirstJob;

    return-object v0
.end method

.method private static getRetainData()Lcom/metamoji/nt/NtRetainData;
    .locals 1

    .line 7927
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7928
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getRetainData()Lcom/metamoji/nt/NtRetainData;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getTextCursors()Lcom/metamoji/un/text/TextCursors;
    .locals 1

    .line 7995
    const-string/jumbo v0, "textCursors"

    invoke-static {v0}, Lcom/metamoji/noteanytime/EditorActivity$RetainData;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/TextCursors;

    return-object v0
.end method

.method public static getViewForSoftInput()Landroid/view/View;
    .locals 1

    .line 8002
    const-string/jumbo v0, "viewForSoftInput"

    invoke-static {v0}, Lcom/metamoji/noteanytime/EditorActivity$RetainData;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public static getViewport()Lcom/metamoji/noteanytime/EditorActivity$MainViewport;
    .locals 1

    .line 7987
    const-string v0, "mainViewport"

    invoke-static {v0}, Lcom/metamoji/noteanytime/EditorActivity$RetainData;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;

    return-object v0
.end method

.method private static setData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 7946
    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity$RetainData;->createRetainData()Lcom/metamoji/nt/NtRetainData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7948
    invoke-virtual {v0, p0, p1}, Lcom/metamoji/nt/NtRetainData;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static setDocumentEditor(Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V
    .locals 1

    .line 7975
    const-string v0, "documentEditor"

    invoke-static {v0, p0}, Lcom/metamoji/noteanytime/EditorActivity$RetainData;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setFirstJob(Lcom/metamoji/noteanytime/EditorActivity$FirstJob;)V
    .locals 1

    .line 8006
    const-string v0, "firstJob"

    invoke-static {v0, p0}, Lcom/metamoji/noteanytime/EditorActivity$RetainData;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setTextCursors(Lcom/metamoji/un/text/TextCursors;)V
    .locals 1

    .line 7991
    const-string/jumbo v0, "textCursors"

    invoke-static {v0, p0}, Lcom/metamoji/noteanytime/EditorActivity$RetainData;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setViewForSoftInput(Landroid/view/View;)V
    .locals 1

    .line 7999
    const-string/jumbo v0, "viewForSoftInput"

    invoke-static {v0, p0}, Lcom/metamoji/noteanytime/EditorActivity$RetainData;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setViewport(Lcom/metamoji/noteanytime/EditorActivity$MainViewport;)V
    .locals 1

    .line 7983
    const-string v0, "mainViewport"

    invoke-static {v0, p0}, Lcom/metamoji/noteanytime/EditorActivity$RetainData;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
