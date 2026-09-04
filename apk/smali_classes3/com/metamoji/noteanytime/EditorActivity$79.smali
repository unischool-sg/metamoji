.class Lcom/metamoji/noteanytime/EditorActivity$79;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->showSendDialog(Lcom/metamoji/ui/PopupCommand;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity;

.field final synthetic val$id:Lcom/metamoji/ui/PopupCommand;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;Lcom/metamoji/ui/PopupCommand;)V
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

    .line 8430
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iput-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79;->val$id:Lcom/metamoji/ui/PopupCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 8

    if-eqz p1, :cond_0

    goto :goto_0

    .line 8438
    :cond_0
    new-instance v5, Lcom/metamoji/cm/mutable/Mutable;

    invoke-direct {v5}, Lcom/metamoji/cm/mutable/Mutable;-><init>()V

    .line 8440
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v6

    .line 8441
    invoke-virtual {v6}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_0
    return-void

    .line 8445
    :cond_1
    invoke-virtual {v4}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v3

    .line 8447
    sget-object p1, Lcom/metamoji/ui/PopupCommand;->SEND_TARGET_SERVICE_APPLICATION:Lcom/metamoji/ui/PopupCommand;

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$79;->val$id:Lcom/metamoji/ui/PopupCommand;

    if-eq p1, v0, :cond_2

    sget-object p1, Lcom/metamoji/ui/PopupCommand;->SEND_TARGET_SERVICE_WEBDAV:Lcom/metamoji/ui/PopupCommand;

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$79;->val$id:Lcom/metamoji/ui/PopupCommand;

    if-eq p1, v0, :cond_2

    sget-object p1, Lcom/metamoji/ui/PopupCommand;->SEND_TARGET_SERVICE_FILE:Lcom/metamoji/ui/PopupCommand;

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$79;->val$id:Lcom/metamoji/ui/PopupCommand;

    if-ne p1, v0, :cond_9

    .line 8454
    :cond_2
    invoke-virtual {v4}, Lcom/metamoji/nt/NtNoteController;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 8458
    instance-of v1, p1, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v1, :cond_3

    .line 8459
    check-cast p1, Lcom/metamoji/un/text/UnTextUnit;

    .line 8460
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8461
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 8464
    :cond_3
    instance-of v1, p1, Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    if-eqz v1, :cond_6

    .line 8465
    check-cast p1, Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    .line 8467
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getSelectedUnitControllers()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 8469
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v1, v0

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtUnitController;

    .line 8471
    instance-of v7, v2, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v7, :cond_4

    if-nez v1, :cond_5

    .line 8473
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8474
    :cond_5
    check-cast v2, Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    move-object v1, v0

    :cond_7
    :goto_2
    if-eqz v1, :cond_9

    .line 8482
    invoke-static {v1}, Lcom/metamoji/un/text/UnTextUnit;->extractTextInTextUnits(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 8483
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_8

    goto :goto_3

    :cond_8
    move-object v0, p1

    .line 8485
    :goto_3
    invoke-virtual {v5, v0}, Lcom/metamoji/cm/mutable/Mutable;->setValue(Ljava/lang/Object;)V

    .line 8489
    :cond_9
    new-instance v2, Lcom/metamoji/ex/SendDialog;

    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79;->val$id:Lcom/metamoji/ui/PopupCommand;

    invoke-direct {v2, p1}, Lcom/metamoji/ex/SendDialog;-><init>(Lcom/metamoji/ui/PopupCommand;)V

    .line 8490
    invoke-virtual {v5}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_4

    :cond_a
    const/4 p1, 0x0

    :goto_4
    iput-boolean p1, v2, Lcom/metamoji/ex/SendDialog;->textEnabled:Z

    .line 8491
    new-instance v0, Lcom/metamoji/noteanytime/EditorActivity$79$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/noteanytime/EditorActivity$79$1;-><init>(Lcom/metamoji/noteanytime/EditorActivity$79;Lcom/metamoji/ex/SendDialog;Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/cm/mutable/Mutable;Lcom/metamoji/nt/NtEditorWindowController;)V

    invoke-virtual {v2, v0}, Lcom/metamoji/ex/SendDialog;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 8691
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/noteanytime/EditorActivity$79$2;

    invoke-direct {v0, p0, v2}, Lcom/metamoji/noteanytime/EditorActivity$79$2;-><init>(Lcom/metamoji/noteanytime/EditorActivity$79;Lcom/metamoji/ex/SendDialog;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method
