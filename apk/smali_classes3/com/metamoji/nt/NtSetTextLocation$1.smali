.class Lcom/metamoji/nt/NtSetTextLocation$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "NtSetTextLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtSetTextLocation;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtSetTextLocation;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtSetTextLocation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/metamoji/nt/NtSetTextLocation$1;->this$0:Lcom/metamoji/nt/NtSetTextLocation;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    .line 76
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v0, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 78
    iget-object p1, p0, Lcom/metamoji/nt/NtSetTextLocation$1;->this$0:Lcom/metamoji/nt/NtSetTextLocation;

    invoke-static {p1}, Lcom/metamoji/nt/NtSetTextLocation;->-$$Nest$fgetm_note(Lcom/metamoji/nt/NtSetTextLocation;)Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    .line 80
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    .line 81
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v3

    .line 82
    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Viewport;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v4

    .line 84
    invoke-virtual {v4}, Lcom/metamoji/df/sprite/Stage;->getLayer()Lcom/metamoji/df/sprite/Layer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/df/sprite/Layer;->getView()Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Lcom/metamoji/cm/CmUtils;->transformPoint(Landroid/graphics/PointF;Landroid/view/View;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v5

    .line 86
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/metamoji/nt/INtEditor;->containsInEditorBars(Landroid/graphics/PointF;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 87
    iget-object p1, p0, Lcom/metamoji/nt/NtSetTextLocation$1;->this$0:Lcom/metamoji/nt/NtSetTextLocation;

    invoke-static {p1, v1}, Lcom/metamoji/nt/NtSetTextLocation;->-$$Nest$mclose(Lcom/metamoji/nt/NtSetTextLocation;Z)V

    return v1

    .line 92
    :cond_1
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/metamoji/nt/INtEditor;->containsInCollaboModeBar(Landroid/graphics/PointF;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    iget-object p1, p0, Lcom/metamoji/nt/NtSetTextLocation$1;->this$0:Lcom/metamoji/nt/NtSetTextLocation;

    invoke-static {p1, v1}, Lcom/metamoji/nt/NtSetTextLocation;->-$$Nest$mclose(Lcom/metamoji/nt/NtSetTextLocation;Z)V

    return v1

    .line 100
    :cond_2
    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Viewport;->getContentOffset()Landroid/graphics/PointF;

    move-result-object v2

    .line 101
    invoke-virtual {v4, v0}, Lcom/metamoji/df/sprite/Stage;->stageToSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 103
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getZoom()F

    move-result p1

    float-to-double v3, p1

    .line 106
    iget p1, v0, Landroid/graphics/PointF;->x:F

    float-to-double v5, p1

    iget p1, v2, Landroid/graphics/PointF;->x:F

    float-to-double v7, p1

    div-double/2addr v7, v3

    add-double/2addr v5, v7

    double-to-float p1, v5

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 107
    iget p1, v0, Landroid/graphics/PointF;->y:F

    float-to-double v5, p1

    iget p1, v2, Landroid/graphics/PointF;->y:F

    float-to-double v7, p1

    div-double/2addr v7, v3

    add-double/2addr v5, v7

    double-to-float p1, v5

    iput p1, v0, Landroid/graphics/PointF;->y:F

    .line 110
    iget-object p1, p0, Lcom/metamoji/nt/NtSetTextLocation$1;->this$0:Lcom/metamoji/nt/NtSetTextLocation;

    invoke-static {p1, v0}, Lcom/metamoji/nt/NtSetTextLocation;->-$$Nest$misHitTextUnit(Lcom/metamoji/nt/NtSetTextLocation;Landroid/graphics/PointF;)Lcom/metamoji/nt/NtUnitController;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    .line 113
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v3

    .line 114
    invoke-virtual {v3, v0}, Lcom/metamoji/df/sprite/Sprite;->globalToLocal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 115
    new-instance v3, Lcom/metamoji/nt/NtFocusOption;

    invoke-direct {v3}, Lcom/metamoji/nt/NtFocusOption;-><init>()V

    .line 116
    invoke-virtual {v3, v0}, Lcom/metamoji/nt/NtFocusOption;->setTapPos(Landroid/graphics/PointF;)V

    .line 117
    iget-object v0, p0, Lcom/metamoji/nt/NtSetTextLocation$1;->this$0:Lcom/metamoji/nt/NtSetTextLocation;

    invoke-static {v0}, Lcom/metamoji/nt/NtSetTextLocation;->-$$Nest$fgetm_listener(Lcom/metamoji/nt/NtSetTextLocation;)Lcom/metamoji/nt/NtSetTextLocation$NtSetTextLocationListener;

    move-result-object v0

    .line 120
    iget-object v4, p0, Lcom/metamoji/nt/NtSetTextLocation$1;->this$0:Lcom/metamoji/nt/NtSetTextLocation;

    if-eqz v0, :cond_3

    .line 118
    invoke-static {v4}, Lcom/metamoji/nt/NtSetTextLocation;->-$$Nest$fgetm_listener(Lcom/metamoji/nt/NtSetTextLocation;)Lcom/metamoji/nt/NtSetTextLocation$NtSetTextLocationListener;

    move-result-object v0

    invoke-interface {v0, p1, v3}, Lcom/metamoji/nt/NtSetTextLocation$NtSetTextLocationListener;->tappedInTextUnit(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtFocusOption;)V

    goto :goto_1

    .line 120
    :cond_3
    invoke-static {v4}, Lcom/metamoji/nt/NtSetTextLocation;->-$$Nest$fgetm_focusManager(Lcom/metamoji/nt/NtSetTextLocation;)Lcom/metamoji/nt/NtFocusManager;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/metamoji/nt/NtFocusManager;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtFocusOption;)Z

    goto :goto_1

    .line 124
    :cond_4
    iget-object p1, p0, Lcom/metamoji/nt/NtSetTextLocation$1;->this$0:Lcom/metamoji/nt/NtSetTextLocation;

    invoke-static {p1}, Lcom/metamoji/nt/NtSetTextLocation;->-$$Nest$fgetm_note(Lcom/metamoji/nt/NtSetTextLocation;)Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/metamoji/nt/NtDocument$ToolMode;->TEXT:Lcom/metamoji/nt/NtDocument$ToolMode;

    iget-object v3, p0, Lcom/metamoji/nt/NtSetTextLocation$1;->this$0:Lcom/metamoji/nt/NtSetTextLocation;

    invoke-static {v3}, Lcom/metamoji/nt/NtSetTextLocation;->-$$Nest$fgetm_note(Lcom/metamoji/nt/NtSetTextLocation;)Lcom/metamoji/nt/NtNoteController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/nt/NtNoteController;->getToolMode()Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object v3

    if-ne p1, v3, :cond_5

    goto :goto_0

    .line 128
    :cond_5
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 129
    const-string v3, "location"

    invoke-virtual {p1, v3, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    const-string/jumbo v0, "toFocus"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    const-string/jumbo v0, "toSelect"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/metamoji/nt/NtSetTextLocation$1;->this$0:Lcom/metamoji/nt/NtSetTextLocation;

    invoke-static {v0}, Lcom/metamoji/nt/NtSetTextLocation;->-$$Nest$fgetm_note(Lcom/metamoji/nt/NtSetTextLocation;)Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_ADD_TEXT_UNIT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v3, p1}, Lcom/metamoji/nt/NtNoteController;->performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    goto :goto_1

    .line 125
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/metamoji/nt/NtSetTextLocation$1;->this$0:Lcom/metamoji/nt/NtSetTextLocation;

    invoke-static {p1}, Lcom/metamoji/nt/NtSetTextLocation;->-$$Nest$fgetm_listener(Lcom/metamoji/nt/NtSetTextLocation;)Lcom/metamoji/nt/NtSetTextLocation$NtSetTextLocationListener;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/metamoji/nt/NtSetTextLocation$1;->this$0:Lcom/metamoji/nt/NtSetTextLocation;

    invoke-static {p1}, Lcom/metamoji/nt/NtSetTextLocation;->-$$Nest$fgetm_listener(Lcom/metamoji/nt/NtSetTextLocation;)Lcom/metamoji/nt/NtSetTextLocation$NtSetTextLocationListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/metamoji/nt/NtSetTextLocation$NtSetTextLocationListener;->createTextUnit(Landroid/graphics/PointF;)V

    .line 136
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/metamoji/nt/NtSetTextLocation$1;->this$0:Lcom/metamoji/nt/NtSetTextLocation;

    invoke-static {p1, v2}, Lcom/metamoji/nt/NtSetTextLocation;->-$$Nest$mclose(Lcom/metamoji/nt/NtSetTextLocation;Z)V

    return v1
.end method
