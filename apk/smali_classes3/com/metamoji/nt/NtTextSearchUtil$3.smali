.class Lcom/metamoji/nt/NtTextSearchUtil$3;
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
.field final synthetic val$model:Lcom/metamoji/df/model/IModel;

.field final synthetic val$noteController:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$provider:Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;

.field final synthetic val$range:Lcom/metamoji/nt/NtTextSearchPosition;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchPosition;Lcom/metamoji/nt/NtNoteController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 707
    iput-object p1, p0, Lcom/metamoji/nt/NtTextSearchUtil$3;->val$provider:Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;

    iput-object p2, p0, Lcom/metamoji/nt/NtTextSearchUtil$3;->val$model:Lcom/metamoji/df/model/IModel;

    iput-object p3, p0, Lcom/metamoji/nt/NtTextSearchUtil$3;->val$range:Lcom/metamoji/nt/NtTextSearchPosition;

    iput-object p4, p0, Lcom/metamoji/nt/NtTextSearchUtil$3;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 710
    iget-object v0, p0, Lcom/metamoji/nt/NtTextSearchUtil$3;->val$provider:Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;

    if-eqz v0, :cond_0

    .line 711
    iget-object v1, p0, Lcom/metamoji/nt/NtTextSearchUtil$3;->val$model:Lcom/metamoji/df/model/IModel;

    iget-object v2, p0, Lcom/metamoji/nt/NtTextSearchUtil$3;->val$range:Lcom/metamoji/nt/NtTextSearchPosition;

    invoke-interface {v0, v1, v2}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->setHighlightTextRange(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchPosition;)V

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtTextSearchUtil$3;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    if-nez v0, :cond_1

    .line 717
    iget-object v0, p0, Lcom/metamoji/nt/NtTextSearchUtil$3;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->isEditLayerEditable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 718
    iget-object v0, p0, Lcom/metamoji/nt/NtTextSearchUtil$3;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;)V

    .line 724
    :cond_1
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnitStateManager;->sharedInstance()Lcom/metamoji/un/text/UnTextUnitStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->focusTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 726
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getViewForSoftInput()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtEditorWindowController;->hideSoftInput(Landroid/view/View;)Z

    :cond_2
    return-void
.end method
