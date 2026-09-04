.class Lcom/metamoji/nt/NtNoteController$10;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Lcom/metamoji/nt/NtSetTextLocation$NtSetTextLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;->enterTextToolModeWithChangingToolMode(ZLcom/metamoji/un/text/UnTextUnit;ZZLandroid/graphics/PointF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$editor:Lcom/metamoji/nt/INtEditor;

.field final synthetic val$refChangeToolMode:Z

.field final synthetic val$refShowMazec:Z


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/INtEditor;ZZ)V
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

    .line 2868
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$10;->this$0:Lcom/metamoji/nt/NtNoteController;

    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController$10;->val$editor:Lcom/metamoji/nt/INtEditor;

    iput-boolean p3, p0, Lcom/metamoji/nt/NtNoteController$10;->val$refChangeToolMode:Z

    iput-boolean p4, p0, Lcom/metamoji/nt/NtNoteController$10;->val$refShowMazec:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTextUnit(Landroid/graphics/PointF;)V
    .locals 6

    .line 2876
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$10;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-boolean v1, p0, Lcom/metamoji/nt/NtNoteController$10;->val$refChangeToolMode:Z

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/metamoji/nt/NtNoteController$10;->val$refShowMazec:Z

    const/4 v2, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/nt/NtNoteController;->enterTextToolModeWithChangingToolMode(ZLcom/metamoji/un/text/UnTextUnit;ZZLandroid/graphics/PointF;)V

    return-void
.end method

.method public tapped(Z)V
    .locals 0

    .line 2871
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController$10;->val$editor:Lcom/metamoji/nt/INtEditor;

    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->closeSetTextUnitLocationView()V

    return-void
.end method

.method public tappedInTextUnit(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtFocusOption;)V
    .locals 8

    .line 2881
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$10;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-static {v0}, Lcom/metamoji/nt/NtNoteController;->-$$Nest$fget_focusManager(Lcom/metamoji/nt/NtNoteController;)Lcom/metamoji/nt/NtFocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtFocusManager;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2882
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$10;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-static {v0}, Lcom/metamoji/nt/NtNoteController;->-$$Nest$fget_focusManager(Lcom/metamoji/nt/NtNoteController;)Lcom/metamoji/nt/NtFocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtFocusManager;->setFocusToRootUnit()Z

    .line 2889
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/nt/NtNoteController$10;->val$refChangeToolMode:Z

    if-eqz v0, :cond_1

    .line 2890
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$10;->this$0:Lcom/metamoji/nt/NtNoteController;

    sget-object v1, Lcom/metamoji/nt/NtDocument$ToolMode;->TEXT:Lcom/metamoji/nt/NtDocument$ToolMode;

    invoke-static {v0, v1}, Lcom/metamoji/nt/NtNoteController;->-$$Nest$mchangeToolMode(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtDocument$ToolMode;)V

    .line 2893
    :cond_1
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$10;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-static {v0}, Lcom/metamoji/nt/NtNoteController;->-$$Nest$fget_ignoreTextUnitFocus(Lcom/metamoji/nt/NtNoteController;)Z

    move-result v1

    .line 2895
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$10;->this$0:Lcom/metamoji/nt/NtNoteController;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/metamoji/nt/NtNoteController;->-$$Nest$fput_ignoreTextUnitFocus(Lcom/metamoji/nt/NtNoteController;Z)V

    .line 2896
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$10;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-static {v0}, Lcom/metamoji/nt/NtNoteController;->-$$Nest$fget_focusManager(Lcom/metamoji/nt/NtNoteController;)Lcom/metamoji/nt/NtFocusManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/nt/NtFocusManager;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtFocusOption;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2898
    iget-object p2, p0, Lcom/metamoji/nt/NtNoteController$10;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-static {p2, v1}, Lcom/metamoji/nt/NtNoteController;->-$$Nest$fput_ignoreTextUnitFocus(Lcom/metamoji/nt/NtNoteController;Z)V

    .line 2900
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$10;->this$0:Lcom/metamoji/nt/NtNoteController;

    move-object v4, p1

    check-cast v4, Lcom/metamoji/un/text/UnTextUnit;

    iget-boolean v6, p0, Lcom/metamoji/nt/NtNoteController$10;->val$refShowMazec:Z

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/nt/NtNoteController;->enterTextToolModeWithChangingToolMode(ZLcom/metamoji/un/text/UnTextUnit;ZZLandroid/graphics/PointF;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 2898
    iget-object p2, p0, Lcom/metamoji/nt/NtNoteController$10;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-static {p2, v1}, Lcom/metamoji/nt/NtNoteController;->-$$Nest$fput_ignoreTextUnitFocus(Lcom/metamoji/nt/NtNoteController;Z)V

    .line 2899
    throw p1
.end method
