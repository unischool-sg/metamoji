.class Lcom/metamoji/nt/NtNoteController$60;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;->createTextUnitWithTapPoint(Landroid/graphics/PointF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$editor:Lcom/metamoji/nt/INtEditor;

.field final synthetic val$globalSpritePt:Landroid/graphics/PointF;

.field final synthetic val$textUnit:Lcom/metamoji/un/text/UnTextUnit;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/un/text/UnTextUnit;Landroid/graphics/PointF;Lcom/metamoji/nt/INtEditor;)V
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

    .line 8367
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$60;->this$0:Lcom/metamoji/nt/NtNoteController;

    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController$60;->val$textUnit:Lcom/metamoji/un/text/UnTextUnit;

    iput-object p3, p0, Lcom/metamoji/nt/NtNoteController$60;->val$globalSpritePt:Landroid/graphics/PointF;

    iput-object p4, p0, Lcom/metamoji/nt/NtNoteController$60;->val$editor:Lcom/metamoji/nt/INtEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 8370
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$60;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-static {v0}, Lcom/metamoji/nt/NtNoteController;->-$$Nest$fget_preModeOfText(Lcom/metamoji/nt/NtNoteController;)Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v0

    .line 8373
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$60;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-static {v1}, Lcom/metamoji/nt/NtNoteController;->-$$Nest$fget_focusManager(Lcom/metamoji/nt/NtNoteController;)Lcom/metamoji/nt/NtFocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtFocusManager;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v1

    if-nez v1, :cond_0

    .line 8374
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$60;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-static {v1}, Lcom/metamoji/nt/NtNoteController;->-$$Nest$fget_focusManager(Lcom/metamoji/nt/NtNoteController;)Lcom/metamoji/nt/NtFocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtFocusManager;->setFocusToRootUnit()Z

    .line 8377
    :cond_0
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$60;->this$0:Lcom/metamoji/nt/NtNoteController;

    sget-object v2, Lcom/metamoji/nt/NtDocument$ToolMode;->TEXT:Lcom/metamoji/nt/NtDocument$ToolMode;

    invoke-static {v1, v2}, Lcom/metamoji/nt/NtNoteController;->-$$Nest$mchangeToolMode(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtDocument$ToolMode;)V

    .line 8379
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$60;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-static {v1, v0}, Lcom/metamoji/nt/NtNoteController;->-$$Nest$fput_preModeOfText(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtNoteController$NoteMode;)V

    .line 8380
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$60;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-static {v0}, Lcom/metamoji/nt/NtNoteController;->-$$Nest$mendTextSelectMode(Lcom/metamoji/nt/NtNoteController;)V

    .line 8382
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$60;->val$textUnit:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    .line 8383
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$60;->val$globalSpritePt:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->globalToLocal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 8384
    new-instance v1, Lcom/metamoji/nt/NtFocusOption;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFocusOption;-><init>()V

    .line 8385
    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtFocusOption;->setTapPos(Landroid/graphics/PointF;)V

    .line 8387
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$60;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$60;->val$textUnit:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtNoteController;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtFocusOption;)V

    .line 8389
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$60;->val$textUnit:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getViewForSoftInput()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtEditorWindowController;->showSoftInput(Landroid/view/View;)Z

    .line 8392
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$60;->val$editor:Lcom/metamoji/nt/INtEditor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/metamoji/nt/INtEditor;->setTextUnitInputStyleBarVisible(Z)V

    .line 8394
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$60;->val$editor:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->beTextUnitInputStyleBarShown(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8395
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->hover_refresh()V

    :cond_1
    return-void
.end method
