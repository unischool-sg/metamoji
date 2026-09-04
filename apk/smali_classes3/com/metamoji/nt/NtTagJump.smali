.class public Lcom/metamoji/nt/NtTagJump;
.super Ljava/lang/Object;
.source "NtTagJump.java"


# instance fields
.field editorWindowController:Lcom/metamoji/nt/NtEditorWindowController;

.field private objectReference:Lcom/metamoji/ctold/object/CtObjectReference;


# direct methods
.method public constructor <init>(Lcom/metamoji/ctold/object/CtObjectReference;Lcom/metamoji/nt/NtEditorWindowController;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/metamoji/nt/NtTagJump;->objectReference:Lcom/metamoji/ctold/object/CtObjectReference;

    .line 28
    iput-object p2, p0, Lcom/metamoji/nt/NtTagJump;->editorWindowController:Lcom/metamoji/nt/NtEditorWindowController;

    return-void
.end method


# virtual methods
.method public performTagJump()Z
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    .line 37
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtTagJump;->performTagJump(F)Z

    move-result v0

    return v0
.end method

.method public performTagJump(F)Z
    .locals 11

    .line 42
    iget-object v0, p0, Lcom/metamoji/nt/NtTagJump;->objectReference:Lcom/metamoji/ctold/object/CtObjectReference;

    invoke-interface {v0}, Lcom/metamoji/ctold/object/CtObjectReference;->getPageId()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    if-nez v3, :cond_0

    .line 44
    const-string p1, "can\'t performTagJump because object not on page"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return v0

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/metamoji/nt/NtTagJump;->editorWindowController:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v10

    .line 49
    invoke-virtual {v10, v3}, Lcom/metamoji/nt/NtNoteController;->pageIndexFromPageId(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    .line 51
    const-string p1, "can\'t performTagJump because page not exist"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return v0

    .line 55
    :cond_1
    iget-object v2, p0, Lcom/metamoji/nt/NtTagJump;->objectReference:Lcom/metamoji/ctold/object/CtObjectReference;

    invoke-interface {v2}, Lcom/metamoji/ctold/object/CtObjectReference;->getObjectBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v2

    .line 56
    iget v4, v2, Lcom/metamoji/cm/RectEx;->width:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_8

    iget v4, v2, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    goto/16 :goto_4

    .line 60
    :cond_2
    invoke-virtual {v10, v1}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 61
    invoke-virtual {v10}, Lcom/metamoji/nt/NtNoteController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v1

    .line 62
    new-instance v4, Lcom/metamoji/cm/Size;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Viewport;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Viewport;->getHeight()I

    move-result v1

    invoke-direct {v4, v5, v1}, Lcom/metamoji/cm/Size;-><init>(II)V

    .line 65
    iget-object v1, p0, Lcom/metamoji/nt/NtTagJump;->objectReference:Lcom/metamoji/ctold/object/CtObjectReference;

    invoke-interface {v1}, Lcom/metamoji/ctold/object/CtObjectReference;->getObjectType()Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v1

    sget-object v5, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_PAGE:Lcom/metamoji/ctold/object/CtObjectType;

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v1, v5, :cond_3

    .line 66
    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->getZoomFitToPaper()F

    move-result p1

    .line 67
    iget v0, v4, Lcom/metamoji/cm/Size;->width:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    .line 68
    iget v1, v4, Lcom/metamoji/cm/Size;->height:I

    int-to-float v1, v1

    div-float/2addr v1, p1

    .line 69
    iget v4, v2, Lcom/metamoji/cm/RectEx;->x:F

    iget v5, v2, Lcom/metamoji/cm/RectEx;->width:F

    sub-float/2addr v0, v5

    div-float/2addr v0, v6

    sub-float/2addr v4, v0

    .line 70
    iget v0, v2, Lcom/metamoji/cm/RectEx;->y:F

    iget v2, v2, Lcom/metamoji/cm/RectEx;->height:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    sub-float/2addr v0, v1

    move v5, p1

    move v7, v0

    move v6, v4

    goto :goto_3

    .line 74
    :cond_3
    new-instance v1, Lcom/metamoji/cm/RectEx;

    iget v5, v2, Lcom/metamoji/cm/RectEx;->x:F

    iget v7, v2, Lcom/metamoji/cm/RectEx;->y:F

    iget v8, v2, Lcom/metamoji/cm/RectEx;->width:F

    mul-float/2addr v8, p1

    iget v9, v2, Lcom/metamoji/cm/RectEx;->height:F

    mul-float/2addr v9, p1

    invoke-direct {v1, v5, v7, v8, v9}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    .line 77
    iget v5, v1, Lcom/metamoji/cm/RectEx;->width:F

    iget v7, v1, Lcom/metamoji/cm/RectEx;->height:F

    invoke-virtual {p0, v4, v5, v7}, Lcom/metamoji/nt/NtTagJump;->zoomFit(Lcom/metamoji/cm/Size;FF)F

    move-result v5

    .line 80
    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->getMaxZoom()F

    move-result v7

    cmpl-float v8, v5, v7

    if-lez v8, :cond_4

    move v0, v7

    goto :goto_0

    .line 84
    :cond_4
    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->getMinZoom()F

    move-result v0

    cmpg-float v7, v5, v0

    if-gez v7, :cond_5

    goto :goto_0

    :cond_5
    move v0, v5

    .line 90
    :goto_0
    iget v5, v4, Lcom/metamoji/cm/Size;->width:I

    int-to-float v5, v5

    div-float/2addr v5, v0

    .line 91
    iget v7, v1, Lcom/metamoji/cm/RectEx;->width:F

    cmpl-float v7, v7, v5

    if-lez v7, :cond_6

    .line 92
    iget v5, v1, Lcom/metamoji/cm/RectEx;->x:F

    goto :goto_1

    .line 94
    :cond_6
    iget v7, v1, Lcom/metamoji/cm/RectEx;->x:F

    iget v8, v1, Lcom/metamoji/cm/RectEx;->width:F

    sub-float/2addr v5, v8

    div-float/2addr v5, v6

    sub-float v5, v7, v5

    .line 96
    :goto_1
    iget v7, v2, Lcom/metamoji/cm/RectEx;->width:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr p1, v8

    mul-float/2addr v7, p1

    div-float/2addr v7, v6

    sub-float/2addr v5, v7

    .line 98
    iget v4, v4, Lcom/metamoji/cm/Size;->height:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    .line 99
    iget v7, v1, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float v7, v7, v4

    if-lez v7, :cond_7

    .line 100
    iget v1, v1, Lcom/metamoji/cm/RectEx;->y:F

    goto :goto_2

    .line 102
    :cond_7
    iget v7, v1, Lcom/metamoji/cm/RectEx;->y:F

    iget v1, v1, Lcom/metamoji/cm/RectEx;->height:F

    sub-float/2addr v4, v1

    div-float/2addr v4, v6

    sub-float v1, v7, v4

    .line 104
    :goto_2
    iget v2, v2, Lcom/metamoji/cm/RectEx;->height:F

    mul-float/2addr v2, p1

    div-float/2addr v2, v6

    sub-float p1, v1, v2

    move v7, p1

    move v6, v5

    move v5, v0

    .line 106
    :goto_3
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "\u25a0\u25a0\u25a0\u25a0\u25a0\u25a0\u25a0 Jump to x=%f y=%f zoom=%f \u25a0\u25a0\u25a0\u25a0\u25a0\u25a0\u25a0"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget-object p1, p0, Lcom/metamoji/nt/NtTagJump;->objectReference:Lcom/metamoji/ctold/object/CtObjectReference;

    invoke-interface {p1}, Lcom/metamoji/ctold/object/CtObjectReference;->getDocumentId()Ljava/lang/String;

    move-result-object v2

    .line 109
    new-instance v1, Lcom/metamoji/nt/NtJumpLocation;

    sget-object v4, Lcom/metamoji/nt/NtLinkJump$Type;->Unit:Lcom/metamoji/nt/NtLinkJump$Type;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/metamoji/nt/NtJumpLocation;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtLinkJump$Type;FFFFF)V

    .line 110
    iget-object p1, p0, Lcom/metamoji/nt/NtTagJump;->editorWindowController:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    invoke-virtual {v1, v10, p1}, Lcom/metamoji/nt/NtJumpLocation;->performJump(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtCommandManager;)Z

    const/4 p1, 0x1

    return p1

    .line 57
    :cond_8
    :goto_4
    const-string p1, "can\'t performTagJump because CGSizeZero"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return v0
.end method

.method zoomFit(Lcom/metamoji/cm/Size;FF)F
    .locals 0

    .line 149
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtTagJump;->zoomFitToWidth(Lcom/metamoji/cm/Size;F)F

    move-result p2

    .line 150
    invoke-virtual {p0, p1, p3}, Lcom/metamoji/nt/NtTagJump;->zoomFitToHeight(Lcom/metamoji/cm/Size;F)F

    move-result p1

    cmpg-float p3, p2, p1

    if-gez p3, :cond_0

    return p2

    :cond_0
    return p1
.end method

.method zoomFitToHeight(Lcom/metamoji/cm/Size;F)F
    .locals 0

    .line 135
    iget p1, p1, Lcom/metamoji/cm/Size;->height:I

    int-to-float p1, p1

    div-float/2addr p1, p2

    return p1
.end method

.method zoomFitToWidth(Lcom/metamoji/cm/Size;F)F
    .locals 0

    .line 122
    iget p1, p1, Lcom/metamoji/cm/Size;->width:I

    int-to-float p1, p1

    div-float/2addr p1, p2

    return p1
.end method
