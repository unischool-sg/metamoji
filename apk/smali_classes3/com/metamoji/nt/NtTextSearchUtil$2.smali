.class Lcom/metamoji/nt/NtTextSearchUtil$2;
.super Ljava/lang/Object;
.source "NtTextSearchUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtTextSearchUtil;->changeCurrentPageAndSetFocusWithNoteController(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchPosition;Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fNextUnit:Lcom/metamoji/nt/NtUnitController;

.field final synthetic val$model:Lcom/metamoji/df/model/IModel;

.field final synthetic val$noteController:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$provider:Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;

.field final synthetic val$range:Lcom/metamoji/nt/NtTextSearchPosition;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchPosition;Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 666
    iput-object p1, p0, Lcom/metamoji/nt/NtTextSearchUtil$2;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    iput-object p2, p0, Lcom/metamoji/nt/NtTextSearchUtil$2;->val$model:Lcom/metamoji/df/model/IModel;

    iput-object p3, p0, Lcom/metamoji/nt/NtTextSearchUtil$2;->val$range:Lcom/metamoji/nt/NtTextSearchPosition;

    iput-object p4, p0, Lcom/metamoji/nt/NtTextSearchUtil$2;->val$fNextUnit:Lcom/metamoji/nt/NtUnitController;

    iput-object p5, p0, Lcom/metamoji/nt/NtTextSearchUtil$2;->val$provider:Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 670
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x0

    .line 671
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtEditorWindowController;->hideDetailWindow(Z)V

    .line 674
    iget-object v0, p0, Lcom/metamoji/nt/NtTextSearchUtil$2;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    iget-object v1, p0, Lcom/metamoji/nt/NtTextSearchUtil$2;->val$model:Lcom/metamoji/df/model/IModel;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->setSearchCurrentModel(Lcom/metamoji/df/model/IModel;)V

    .line 675
    iget-object v0, p0, Lcom/metamoji/nt/NtTextSearchUtil$2;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    iget-object v1, p0, Lcom/metamoji/nt/NtTextSearchUtil$2;->val$range:Lcom/metamoji/nt/NtTextSearchPosition;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->setSearchCurrentPosition(Lcom/metamoji/nt/NtTextSearchPosition;)V

    .line 678
    iget-object v0, p0, Lcom/metamoji/nt/NtTextSearchUtil$2;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    .line 679
    instance-of v1, v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    if-eqz v1, :cond_0

    .line 680
    check-cast v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    if-eqz v0, :cond_0

    .line 682
    iget-object v1, p0, Lcom/metamoji/nt/NtTextSearchUtil$2;->val$fNextUnit:Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->selectUnit(Lcom/metamoji/nt/NtUnitController;)V

    .line 687
    :cond_0
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 688
    const-string v1, "index"

    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 689
    iget-object v1, p0, Lcom/metamoji/nt/NtTextSearchUtil$2;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    .line 692
    iget-object v0, p0, Lcom/metamoji/nt/NtTextSearchUtil$2;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    iget-object v1, p0, Lcom/metamoji/nt/NtTextSearchUtil$2;->val$fNextUnit:Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;)V

    .line 693
    iget-object v0, p0, Lcom/metamoji/nt/NtTextSearchUtil$2;->val$provider:Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;

    if-eqz v0, :cond_1

    .line 694
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtTextSearchUtil$2$1;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtTextSearchUtil$2$1;-><init>(Lcom/metamoji/nt/NtTextSearchUtil$2;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
