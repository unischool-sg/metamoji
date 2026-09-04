.class public Lcom/metamoji/un/draw2/module/selection/DrSelection;
.super Ljava/lang/Object;
.source "DrSelection.java"


# instance fields
.field private final m_bounds:Lcom/metamoji/cm/RectEx;

.field private m_connectedGroupComponents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

.field private m_disableExtraHandleability:Z

.field private m_disableMovability:Z

.field private m_disableResizability:Z

.field private m_disableReversibility:Z

.field private m_disableRotatability:Z

.field private m_disableSelectability:Z

.field private final m_displayBounds:Lcom/metamoji/cm/RectEx;

.field private m_distinctGroupCount:I

.field private m_disusedHighlightObjectIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_elementIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field

.field private m_elementTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/module/element/DrElementType;",
            ">;"
        }
    .end annotation
.end field

.field private m_elementVariationSnapShotMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;",
            ">;"
        }
    .end annotation
.end field

.field private m_elements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/module/element/DrElement;",
            ">;"
        }
    .end annotation
.end field

.field private m_externalLinkageStrongFollowerIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field

.field private m_externalLowerOrderLinkageStrongFollowerIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field

.field private m_externalUpperOrderLinkageStrongFollowerIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field

.field private m_groupFrameIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_groupFrameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/cm/RectEx;",
            ">;"
        }
    .end annotation
.end field

.field private m_groupFrameStyles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;",
            ">;"
        }
    .end annotation
.end field

.field private m_groupFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/cm/RectEx;",
            ">;"
        }
    .end annotation
.end field

.field private m_groupIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field

.field private m_groupMemberOnly:Z

.field private m_isActive:Z

.field private m_isEditing:Z

.field private m_isExtraHandleable:Z

.field private m_isMovable:Z

.field private m_isNonLimitation:Z

.field private m_isResizable:Z

.field private m_isReversible:Z

.field private m_isRotatable:Z

.field private m_isSelectable:Z

.field private m_linkageFollowerElementIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field

.field private m_linkageFollowerIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field

.field private m_linkageFollowerUnitElementExists:Z

.field private m_linkageStrongFollowerElementIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field

.field private m_linkageTargetIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field

.field m_lockedGroupIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field

.field private m_maximumElementOrder:I

.field private m_minimumElementOrder:I

.field private m_noResizing:Z

.field private m_noResizingX:Z

.field private m_noResizingY:Z

.field private m_noRotating:Z

.field private m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

.field private m_paintGroupFramesWhenTranslateEdit:Z

.field private m_removedElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/module/element/DrElement;",
            ">;"
        }
    .end annotation
.end field

.field private m_repaintHighlightAlways:Z

.field private m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

.field private m_selectionManager:Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

.field private m_snapShot:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/module/element/DrElement;",
            ">;"
        }
    .end annotation
.end field

.field private final m_snapShotBounds:Lcom/metamoji/cm/RectEx;

.field private m_snapShotId:I

.field private m_snapShotIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field

.field private m_snapShotImage:Landroid/graphics/Bitmap;

.field private final m_snapShotImageBounds:Lcom/metamoji/cm/RectEx;

.field private m_snapShotImageScale:F

.field private m_snapShotSprite:Lcom/metamoji/df/sprite/Sprite;

.field private final m_snapShotTargetBounds:Lcom/metamoji/cm/RectEx;

.field private m_snapShotTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/module/element/DrElementType;",
            ">;"
        }
    .end annotation
.end field

.field private m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

.field private final m_touchPosition:Landroid/graphics/PointF;

.field private m_uid:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

.field private m_unitElementIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;)V
    .locals 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_bounds:Lcom/metamoji/cm/RectEx;

    .line 62
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_displayBounds:Lcom/metamoji/cm/RectEx;

    .line 333
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_touchPosition:Landroid/graphics/PointF;

    .line 1050
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShotBounds:Lcom/metamoji/cm/RectEx;

    .line 1064
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShotTargetBounds:Lcom/metamoji/cm/RectEx;

    .line 1076
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShotImageBounds:Lcom/metamoji/cm/RectEx;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 80
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_0
    const/4 v2, 0x1

    if-nez p2, :cond_1

    .line 83
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 85
    :cond_1
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 86
    iput-object p2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    .line 87
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elements:Ljava/util/ArrayList;

    .line 88
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementIds:Ljava/util/HashSet;

    .line 89
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementTypes:Ljava/util/HashSet;

    .line 90
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_linkageFollowerElementIds:Ljava/util/HashSet;

    .line 91
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_linkageStrongFollowerElementIds:Ljava/util/HashSet;

    .line 92
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_linkageFollowerUnitElementExists:Z

    .line 93
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_linkageFollowerIds:Ljava/util/HashSet;

    .line 94
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_linkageTargetIds:Ljava/util/HashSet;

    .line 95
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_unitElementIds:Ljava/util/HashSet;

    .line 96
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->editWithVariationAlways()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementVariationSnapShotMap:Ljava/util/HashMap;

    .line 97
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isSelectable:Z

    .line 98
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isMovable:Z

    .line 99
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isResizable:Z

    .line 100
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isReversible:Z

    .line 101
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isRotatable:Z

    .line 102
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isExtraHandleable:Z

    .line 103
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_noResizing:Z

    .line 104
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_noResizingX:Z

    .line 105
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_noResizingY:Z

    .line 106
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_noRotating:Z

    .line 107
    new-instance p1, Landroid/graphics/PointF;

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    invoke-direct {p1, p2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setTouchPosition(Landroid/graphics/PointF;)V

    .line 108
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setIsActive(Z)V

    .line 109
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isEditing:Z

    .line 110
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isNonLimitation:Z

    .line 111
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShot:Ljava/util/ArrayList;

    .line 112
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShotIds:Ljava/util/HashSet;

    .line 113
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShotTypes:Ljava/util/HashSet;

    .line 114
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_repaintHighlightAlways:Z

    .line 115
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setPaintGroupFramesWhenTranslateEdit(Z)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setExternalLinkageStrongFollowerIds(Ljava/util/Set;)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setExternalUpperOrderLinkageStrongFollowerIds(Ljava/util/Set;)V

    .line 118
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setExternalLowerOrderLinkageStrongFollowerIds(Ljava/util/Set;)V

    const/4 p1, -0x1

    .line 119
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setMaximumElementOrder(I)V

    .line 120
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setMinimumElementOrder(I)V

    return-void
.end method

.method private clearInnerProperties()V
    .locals 2

    .line 1284
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_bounds:Lcom/metamoji/cm/RectEx;

    sget-object v1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 1285
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_displayBounds:Lcom/metamoji/cm/RectEx;

    sget-object v1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 1286
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1287
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementTypes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1288
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_linkageFollowerElementIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1289
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_linkageStrongFollowerElementIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x0

    .line 1290
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_linkageFollowerUnitElementExists:Z

    .line 1291
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_linkageFollowerIds:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 1292
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_linkageTargetIds:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 1293
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_unitElementIds:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 1294
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementVariationSnapShotMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 1295
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_0
    const/4 v1, 0x1

    .line 1297
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isSelectable:Z

    .line 1298
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isMovable:Z

    .line 1299
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isResizable:Z

    .line 1300
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isReversible:Z

    .line 1301
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isRotatable:Z

    .line 1302
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isExtraHandleable:Z

    .line 1303
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_noResizing:Z

    .line 1304
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_noResizingX:Z

    .line 1305
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_noResizingY:Z

    .line 1306
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_noRotating:Z

    .line 1307
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_repaintHighlightAlways:Z

    return-void
.end method

.method private updateInnerPropertiesByElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1180
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_bounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v2

    iget-object v3, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_bounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v1, v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectUnion(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    .line 1183
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_displayBounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->displayBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v2

    iget-object v3, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_displayBounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v1, v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectUnion(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    .line 1186
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementIds:Ljava/util/HashSet;

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1189
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementTypes:Ljava/util/HashSet;

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1193
    iget-boolean v1, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isNonLimitation:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->isSelectable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1194
    iput-boolean v2, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isSelectable:Z

    .line 1196
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->isMovable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1197
    iput-boolean v2, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isMovable:Z

    .line 1199
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->isResizable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1200
    iput-boolean v2, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isResizable:Z

    .line 1202
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->isReversible()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1203
    iput-boolean v2, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isReversible:Z

    .line 1205
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->isRotatable()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1206
    iput-boolean v2, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isRotatable:Z

    .line 1208
    :cond_4
    iget-boolean v1, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isExtraHandleable:Z

    const/4 v3, 0x1

    if-nez v1, :cond_5

    .line 1209
    iput-boolean v3, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isExtraHandleable:Z

    .line 1211
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->noResizing()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1212
    iput-boolean v3, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_noResizing:Z

    .line 1214
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->noResizingX()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1215
    iput-boolean v3, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_noResizingX:Z

    .line 1217
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->noResizingY()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1218
    iput-boolean v3, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_noResizingY:Z

    .line 1220
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->noRotating()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1221
    iput-boolean v3, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_noRotating:Z

    .line 1225
    :cond_9
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->linkageManager()Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->followerCount()I

    move-result v1

    if-lez v1, :cond_e

    .line 1226
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->linkageManager()Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->checkFollowerId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1227
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_linkageFollowerIds:Ljava/util/HashSet;

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1229
    :cond_a
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->linkageManager()Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->checkTargetId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1230
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_linkageTargetIds:Ljava/util/HashSet;

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1231
    iget-boolean v1, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_linkageFollowerUnitElementExists:Z

    if-eqz v1, :cond_b

    .line 1232
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->linkageManager()Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    iget-object v6, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_linkageFollowerElementIds:Ljava/util/HashSet;

    iget-object v7, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_linkageStrongFollowerElementIds:Ljava/util/HashSet;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->collectFollowerIdsForTargetId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Z

    goto :goto_0

    .line 1238
    :cond_b
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 1239
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 1240
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->linkageManager()Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v11

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->collectFollowerIdsForTargetId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Z

    .line 1245
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 1246
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_linkageFollowerElementIds:Ljava/util/HashSet;

    invoke-virtual {v1, v12}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1247
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1248
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 1249
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v4

    sget-object v5, Lcom/metamoji/un/draw2/module/element/DrElementType;->UNIT:Lcom/metamoji/un/draw2/module/element/DrElementType;

    if-ne v4, v5, :cond_c

    .line 1250
    iput-boolean v3, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_linkageFollowerUnitElementExists:Z

    .line 1255
    :cond_d
    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_e

    .line 1256
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_linkageStrongFollowerElementIds:Ljava/util/HashSet;

    invoke-virtual {v1, v13}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1263
    :cond_e
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v1

    sget-object v4, Lcom/metamoji/un/draw2/module/element/DrElementType;->UNIT:Lcom/metamoji/un/draw2/module/element/DrElementType;

    if-ne v1, v4, :cond_f

    .line 1264
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_unitElementIds:Ljava/util/HashSet;

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1268
    :cond_f
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementVariationSnapShotMap:Ljava/util/HashMap;

    if-eqz v1, :cond_11

    .line 1269
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->createVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 1271
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementVariationSnapShotMap:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_10
    const/4 v1, 0x0

    .line 1273
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1278
    :cond_11
    :goto_1
    iget-boolean v1, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_repaintHighlightAlways:Z

    if-nez v1, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->repaintHighlightAlways()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1279
    iput-boolean v3, v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_repaintHighlightAlways:Z

    :cond_12
    return-void
.end method


# virtual methods
.method public addElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->addElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)Z

    move-result p1

    return p1
.end method

.method public addElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 440
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 443
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 444
    invoke-static {v3, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 449
    :cond_1
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isNonLimitation:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->isSelectable()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 453
    :cond_2
    monitor-enter p0

    .line 454
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elements:Ljava/util/ArrayList;

    if-lt p2, v0, :cond_3

    .line 455
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 457
    :cond_3
    invoke-virtual {v1, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 459
    :goto_0
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->updateInnerPropertiesByElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    .line 460
    iget-boolean p2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isActive:Z

    if-eqz p2, :cond_4

    .line 461
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->notifyElementAddedToSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;Lcom/metamoji/un/draw2/module/element/DrElement;)V

    .line 463
    :cond_4
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    .line 464
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bounds()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_bounds:Lcom/metamoji/cm/RectEx;

    return-object v0
.end method

.method public changeOrderOfElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 765
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 768
    :cond_0
    monitor-enter p0

    .line 769
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt p2, v2, :cond_1

    .line 770
    invoke-static {v3, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 771
    monitor-exit p0

    return v1

    .line 775
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elements:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/module/element/DrElement;

    if-ne v0, p1, :cond_2

    .line 777
    monitor-exit p0

    return v3

    .line 781
    :cond_2
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elements:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 784
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elements:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_3

    move v1, v3

    :cond_3
    if-nez v1, :cond_4

    .line 789
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p2, v0, :cond_4

    .line 794
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elements:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 796
    :cond_4
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elements:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 798
    :goto_0
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public checkElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 691
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 694
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 p1, 0x1

    .line 695
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 698
    :cond_1
    monitor-enter p0

    .line 699
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementIds:Ljava/util/HashSet;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 702
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementIds:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    .line 700
    :cond_3
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 703
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public checkElementType(Lcom/metamoji/un/draw2/module/element/DrElementType;)Z
    .locals 2

    .line 723
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrElementType;->NONE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 726
    :cond_0
    monitor-enter p0

    .line 727
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementTypes:Ljava/util/HashSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 730
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementTypes:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    .line 728
    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 731
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public checkElementWithId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 708
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 711
    :cond_0
    monitor-enter p0

    .line 712
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementIds:Ljava/util/HashSet;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 715
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementIds:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    .line 713
    :cond_2
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 716
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method clearSnapShotProperties()V
    .locals 1

    const/4 v0, 0x0

    .line 1110
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setSnapShotSprite(Lcom/metamoji/df/sprite/Sprite;)V

    .line 1111
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setSnapShotImage(Landroid/graphics/Bitmap;)V

    .line 1112
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setSnapShotBounds(Lcom/metamoji/cm/RectEx;)V

    .line 1113
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setSnapShotTargetBounds(Lcom/metamoji/cm/RectEx;)V

    .line 1114
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setSnapShotImageBounds(Lcom/metamoji/cm/RectEx;)V

    const v0, 0x7fffffff

    .line 1115
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setSnapShotId(I)V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 1116
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setSnapShotImageScale(F)V

    return-void
.end method

.method public connectedGroupComponents()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;>;"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_connectedGroupComponents:Ljava/util/Set;

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .line 888
    monitor-enter p0

    .line 889
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elements:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 890
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 891
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elements:Ljava/util/ArrayList;

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementIds:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 894
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 895
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementIds:Ljava/util/HashSet;

    .line 897
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementTypes:Ljava/util/HashSet;

    if-eqz v0, :cond_2

    .line 898
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 899
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementTypes:Ljava/util/HashSet;

    .line 901
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_linkageFollowerElementIds:Ljava/util/HashSet;

    if-eqz v0, :cond_3

    .line 902
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 903
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_linkageFollowerElementIds:Ljava/util/HashSet;

    .line 905
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_linkageStrongFollowerElementIds:Ljava/util/HashSet;

    if-eqz v0, :cond_4

    .line 906
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 907
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_linkageStrongFollowerElementIds:Ljava/util/HashSet;

    :cond_4
    const/4 v0, 0x0

    .line 909
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_linkageFollowerUnitElementExists:Z

    .line 910
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_linkageFollowerIds:Ljava/util/HashSet;

    if-eqz v0, :cond_5

    .line 911
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 912
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_linkageFollowerIds:Ljava/util/HashSet;

    .line 914
    :cond_5
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_linkageTargetIds:Ljava/util/HashSet;

    if-eqz v0, :cond_6

    .line 915
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 916
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_linkageTargetIds:Ljava/util/HashSet;

    .line 918
    :cond_6
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_unitElementIds:Ljava/util/HashSet;

    if-eqz v0, :cond_7

    .line 919
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 920
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_unitElementIds:Ljava/util/HashSet;

    .line 922
    :cond_7
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setExternalLinkageStrongFollowerIds(Ljava/util/Set;)V

    .line 923
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setExternalUpperOrderLinkageStrongFollowerIds(Ljava/util/Set;)V

    .line 924
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setExternalLowerOrderLinkageStrongFollowerIds(Ljava/util/Set;)V

    .line 925
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setUid(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 926
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setGroupIds(Ljava/util/Set;)V

    .line 927
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setGroupFrameMap(Ljava/util/HashMap;)V

    .line 928
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setConnectedGroupComponents(Ljava/util/Set;)V

    .line 929
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setLockedGroupIds(Ljava/util/Set;)V

    .line 930
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    .line 931
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    .line 932
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    if-eqz v0, :cond_8

    .line 933
    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setUid(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 934
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    .line 936
    :cond_8
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setSelectionManager(Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;)V

    .line 937
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setSnapShotSprite(Lcom/metamoji/df/sprite/Sprite;)V

    .line 938
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setSnapShotImage(Landroid/graphics/Bitmap;)V

    .line 939
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setGroupFrameIds(Ljava/util/List;)V

    .line 940
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setGroupFrames(Ljava/util/ArrayList;)V

    .line 941
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setGroupFrameStyles(Ljava/util/ArrayList;)V

    .line 942
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setDisusedHighlightObjectIds(Ljava/util/HashSet;)V

    .line 943
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShot:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 944
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 945
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShot:Ljava/util/ArrayList;

    .line 947
    :cond_9
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShotIds:Ljava/util/HashSet;

    if-eqz v0, :cond_a

    .line 948
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 949
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShotIds:Ljava/util/HashSet;

    .line 951
    :cond_a
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShotTypes:Ljava/util/HashSet;

    if-eqz v0, :cond_b

    .line 952
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 953
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShotTypes:Ljava/util/HashSet;

    .line 955
    :cond_b
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_removedElements:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 956
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 957
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_removedElements:Ljava/util/ArrayList;

    .line 959
    :cond_c
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 960
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disableExtraHandleability()Z
    .locals 1

    .line 180
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_disableExtraHandleability:Z

    return v0
.end method

.method public disableMovability()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_disableMovability:Z

    return v0
.end method

.method public disableResizability()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_disableResizability:Z

    return v0
.end method

.method public disableReversibility()Z
    .locals 1

    .line 176
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_disableReversibility:Z

    return v0
.end method

.method public disableRotatability()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_disableRotatability:Z

    return v0
.end method

.method public disableSelectability()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_disableSelectability:Z

    return v0
.end method

.method public displayBounds()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_displayBounds:Lcom/metamoji/cm/RectEx;

    return-object v0
.end method

.method public distinctGroupCount()I
    .locals 1

    .line 309
    iget v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_distinctGroupCount:I

    return v0
.end method

.method disusedHighlightObjectIds()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1158
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_disusedHighlightObjectIds:Ljava/util/HashSet;

    return-object v0
.end method

.method public elementCount()I
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elements:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public externalLinkageStrongFollowerCount()I
    .locals 1

    .line 646
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->externalLinkageStrongFollowerIds()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->externalLinkageStrongFollowerIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public externalLinkageStrongFollowerIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 630
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_externalLinkageStrongFollowerIds:Ljava/util/Set;

    return-object v0
.end method

.method public externalLowerOrderLinkageStrongFollowerCount()I
    .locals 1

    .line 657
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->externalLowerOrderLinkageStrongFollowerIds()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->externalLowerOrderLinkageStrongFollowerIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public externalLowerOrderLinkageStrongFollowerIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 639
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_externalLowerOrderLinkageStrongFollowerIds:Ljava/util/Set;

    return-object v0
.end method

.method public externalUpperOrderLinkageStrongFollowerCount()I
    .locals 1

    .line 653
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->externalUpperOrderLinkageStrongFollowerIds()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->externalUpperOrderLinkageStrongFollowerIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public externalUpperOrderLinkageStrongFollowerIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 636
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_externalUpperOrderLinkageStrongFollowerIds:Ljava/util/Set;

    return-object v0
.end method

.method public getElementAtOrder(I)Lcom/metamoji/un/draw2/module/element/DrElement;
    .locals 1

    .line 554
    monitor-enter p0

    .line 555
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 556
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 557
    monitor-exit p0

    return-object v0

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/module/element/DrElement;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 560
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getElementIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 578
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isEditing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShotIds:Ljava/util/HashSet;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementIds:Ljava/util/HashSet;

    return-object v0
.end method

.method public getElementTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/module/element/DrElementType;",
            ">;"
        }
    .end annotation

    .line 581
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isEditing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShotTypes:Ljava/util/HashSet;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementTypes:Ljava/util/HashSet;

    return-object v0
.end method

.method public getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/module/element/DrElement;",
            ">;"
        }
    .end annotation

    .line 574
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isEditing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShot:Ljava/util/ArrayList;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elements:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLastElement()Lcom/metamoji/un/draw2/module/element/DrElement;
    .locals 2

    .line 564
    monitor-enter p0

    .line 565
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 567
    monitor-exit p0

    return-object v0

    .line 569
    :cond_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elements:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/module/element/DrElement;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 570
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLinkageFollowerElementIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 590
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_linkageFollowerElementIds:Ljava/util/HashSet;

    return-object v0
.end method

.method public getLinkageFollowerIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 608
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_linkageFollowerIds:Ljava/util/HashSet;

    return-object v0
.end method

.method public getLinkageStrongFollowerElementIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 594
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_linkageStrongFollowerElementIds:Ljava/util/HashSet;

    return-object v0
.end method

.method public getLinkageTargetIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 612
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_linkageTargetIds:Ljava/util/HashSet;

    return-object v0
.end method

.method public getOrderOfElement(Lcom/metamoji/un/draw2/module/element/DrElement;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 741
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 p1, -0x1

    return p1

    .line 744
    :cond_0
    monitor-enter p0

    .line 745
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 746
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getOrderOfElementWithId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)I
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 750
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 753
    :cond_0
    monitor-enter p0

    .line 754
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 755
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 756
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->isEqualToId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 757
    monitor-exit p0

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 760
    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 761
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getVariationSnapShotOfElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 807
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 810
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 p1, 0x1

    .line 811
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 814
    :cond_1
    monitor-enter p0

    .line 815
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementVariationSnapShotMap:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementVariationSnapShotMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 816
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method groupFrameIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1124
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_groupFrameIds:Ljava/util/List;

    return-object v0
.end method

.method public groupFrameMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/cm/RectEx;",
            ">;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_groupFrameMap:Ljava/util/HashMap;

    return-object v0
.end method

.method groupFrameStyles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;",
            ">;"
        }
    .end annotation

    .line 1146
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_groupFrameStyles:Ljava/util/ArrayList;

    return-object v0
.end method

.method groupFrames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/cm/RectEx;",
            ">;"
        }
    .end annotation

    .line 1135
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_groupFrames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public groupIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_groupIds:Ljava/util/Set;

    return-object v0
.end method

.method public groupMemberOnly()Z
    .locals 1

    .line 282
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_groupMemberOnly:Z

    return v0
.end method

.method public hasLinkageFollower()Z
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_linkageFollowerIds:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasLinkageTarget()Z
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_linkageTargetIds:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasUnitElement()Z
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_unitElementIds:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hitTestPoint(Landroid/graphics/PointF;F)Z
    .locals 6

    .line 827
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 830
    :cond_0
    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->hitTestPoint(Landroid/graphics/PointF;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 833
    :cond_1
    monitor-enter p0

    .line 834
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementTypes:Ljava/util/HashSet;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    cmpg-float v3, p2, v0

    if-gez v3, :cond_3

    move p2, v0

    .line 840
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementTypes:Ljava/util/HashSet;

    sget-object v3, Lcom/metamoji/un/draw2/module/element/DrElementType;->SHAPE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 842
    monitor-exit p0

    return v1

    .line 844
    :cond_4
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 845
    sget-object v4, Lcom/metamoji/un/draw2/module/selection/DrSelection$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v2, :cond_6

    goto :goto_0

    .line 852
    :cond_6
    invoke-virtual {v3, p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->distanceToPoint(Landroid/graphics/PointF;)F

    move-result v3

    cmpg-float v3, v3, p2

    if-gtz v3, :cond_5

    .line 853
    monitor-exit p0

    return v2

    .line 856
    :cond_7
    monitor-exit p0

    return v1

    .line 835
    :cond_8
    :goto_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 857
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isActive()Z
    .locals 1

    .line 200
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isActive:Z

    return v0
.end method

.method public isEditing()Z
    .locals 1

    .line 224
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isEditing:Z

    return v0
.end method

.method public isExtraHandleable()Z
    .locals 1

    .line 163
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->disableExtraHandleability()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isExtraHandleable:Z

    return v0
.end method

.method public isMovable()Z
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->disableMovability()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isMovable:Z

    return v0
.end method

.method public isNonLimitation()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isNonLimitation:Z

    return v0
.end method

.method public isResizable()Z
    .locals 1

    .line 154
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->disableResizability()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isResizable:Z

    return v0
.end method

.method public isReversible()Z
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->disableReversibility()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isReversible:Z

    return v0
.end method

.method public isRotatable()Z
    .locals 1

    .line 160
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->disableRotatability()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isRotatable:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .line 148
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->disableSelectability()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isSelectable:Z

    return v0
.end method

.method public linkageFollowerUnitElementExists()Z
    .locals 1

    .line 601
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_linkageFollowerUnitElementExists:Z

    return v0
.end method

.method public lockedGroupIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_lockedGroupIds:Ljava/util/Set;

    return-object v0
.end method

.method public maximumElementOrder()I
    .locals 1

    .line 680
    iget v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_maximumElementOrder:I

    return v0
.end method

.method public minimumElementOrder()I
    .locals 1

    .line 683
    iget v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_minimumElementOrder:I

    return v0
.end method

.method public noResizing()Z
    .locals 1

    .line 189
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_noResizing:Z

    return v0
.end method

.method public noResizingX()Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_noResizingX:Z

    return v0
.end method

.method public noResizingY()Z
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_noResizingY:Z

    return v0
.end method

.method public noRotating()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_noRotating:Z

    return v0
.end method

.method public overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    return-object v0
.end method

.method public paintGroupFramesWhenTranslateEdit()Z
    .locals 1

    .line 423
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_paintGroupFramesWhenTranslateEdit:Z

    return v0
.end method

.method public removeAllElements()V
    .locals 1

    .line 527
    monitor-enter p0

    .line 528
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 529
    monitor-exit p0

    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 532
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementTypes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 533
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isEditing:Z

    if-eqz v0, :cond_1

    .line 534
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShot:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 535
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShotIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 536
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShotTypes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 538
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->clearInnerProperties()V

    .line 539
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isActive:Z

    if-eqz v0, :cond_2

    .line 540
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->notifyAllElementsRemovedFromSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;)V

    .line 542
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V
    .locals 3

    .line 474
    monitor-enter p0

    .line 476
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->clearInnerProperties()V

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 477
    :goto_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 478
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/element/DrElement;

    if-ne p1, v2, :cond_0

    move v0, v1

    goto :goto_1

    .line 482
    :cond_0
    invoke-direct {p0, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->updateInnerPropertiesByElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ltz v0, :cond_3

    .line 486
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elements:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 487
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isEditing:Z

    if-eqz v0, :cond_2

    .line 488
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShot:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 489
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementIds:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShotIds:Ljava/util/HashSet;

    .line 490
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementTypes:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShotTypes:Ljava/util/HashSet;

    .line 492
    :cond_2
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isActive:Z

    if-eqz v0, :cond_3

    .line 493
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->notifyElementRemovedFromSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;Lcom/metamoji/un/draw2/module/element/DrElement;)V

    .line 496
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeElementAtOrder(I)Z
    .locals 3

    .line 500
    monitor-enter p0

    .line 501
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    .line 502
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 503
    monitor-exit p0

    return v1

    .line 505
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->clearInnerProperties()V

    .line 506
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elements:Ljava/util/ArrayList;

    if-ge v1, v0, :cond_2

    .line 507
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/module/element/DrElement;

    if-eq v1, p1, :cond_1

    .line 509
    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->updateInnerPropertiesByElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 512
    :cond_2
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 513
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elements:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 514
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isEditing:Z

    if-eqz p1, :cond_3

    .line 515
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShot:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 516
    new-instance p1, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementIds:Ljava/util/HashSet;

    invoke-direct {p1, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShotIds:Ljava/util/HashSet;

    .line 517
    new-instance p1, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementTypes:Ljava/util/HashSet;

    invoke-direct {p1, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShotTypes:Ljava/util/HashSet;

    .line 519
    :cond_3
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isActive:Z

    if-eqz p1, :cond_4

    .line 520
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->notifyElementRemovedFromSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;Lcom/metamoji/un/draw2/module/element/DrElement;)V

    .line 522
    :cond_4
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method removedElements()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/module/element/DrElement;",
            ">;"
        }
    .end annotation

    .line 1169
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_removedElements:Ljava/util/ArrayList;

    return-object v0
.end method

.method public repaintHighlightAlways()Z
    .locals 1

    .line 415
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_repaintHighlightAlways:Z

    return v0
.end method

.method public rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    return-object v0
.end method

.method selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;
    .locals 1

    .line 1041
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_selectionManager:Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    return-object v0
.end method

.method public setConnectedGroupComponents(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;>;)V"
        }
    .end annotation

    .line 292
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_connectedGroupComponents:Ljava/util/Set;

    return-void
.end method

.method public setDisableExtraHandleability(Z)V
    .locals 0

    .line 181
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_disableExtraHandleability:Z

    return-void
.end method

.method public setDisableMovability(Z)V
    .locals 0

    .line 173
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_disableMovability:Z

    return-void
.end method

.method public setDisableResizability(Z)V
    .locals 0

    .line 175
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_disableResizability:Z

    return-void
.end method

.method public setDisableReversibility(Z)V
    .locals 0

    .line 177
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_disableReversibility:Z

    return-void
.end method

.method public setDisableRotatability(Z)V
    .locals 0

    .line 179
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_disableRotatability:Z

    return-void
.end method

.method public setDisableSelectability(Z)V
    .locals 0

    .line 171
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_disableSelectability:Z

    return-void
.end method

.method public setDistinctGroupCount(I)V
    .locals 0

    .line 310
    iput p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_distinctGroupCount:I

    return-void
.end method

.method setDisusedHighlightObjectIds(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1161
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_disusedHighlightObjectIds:Ljava/util/HashSet;

    return-void
.end method

.method public setExternalLinkageStrongFollowerIds(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)V"
        }
    .end annotation

    .line 631
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_externalLinkageStrongFollowerIds:Ljava/util/Set;

    return-void
.end method

.method public setExternalLowerOrderLinkageStrongFollowerIds(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)V"
        }
    .end annotation

    .line 640
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_externalLowerOrderLinkageStrongFollowerIds:Ljava/util/Set;

    return-void
.end method

.method public setExternalUpperOrderLinkageStrongFollowerIds(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)V"
        }
    .end annotation

    .line 637
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_externalUpperOrderLinkageStrongFollowerIds:Ljava/util/Set;

    return-void
.end method

.method setGroupFrameIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1127
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_groupFrameIds:Ljava/util/List;

    return-void
.end method

.method public setGroupFrameMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/cm/RectEx;",
            ">;)V"
        }
    .end annotation

    .line 273
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_groupFrameMap:Ljava/util/HashMap;

    return-void
.end method

.method setGroupFrameStyles(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;",
            ">;)V"
        }
    .end annotation

    .line 1149
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_groupFrameStyles:Ljava/util/ArrayList;

    return-void
.end method

.method setGroupFrames(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/cm/RectEx;",
            ">;)V"
        }
    .end annotation

    .line 1138
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_groupFrames:Ljava/util/ArrayList;

    return-void
.end method

.method public setGroupIds(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)V"
        }
    .end annotation

    .line 264
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_groupIds:Ljava/util/Set;

    return-void
.end method

.method public setGroupMemberOnly(Z)V
    .locals 0

    .line 283
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_groupMemberOnly:Z

    return-void
.end method

.method public setIsActive(Z)V
    .locals 1

    .line 203
    monitor-enter p0

    .line 204
    :try_start_0
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isActive:Z

    if-eqz p1, :cond_0

    .line 206
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    if-eqz p1, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setUid(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_0

    .line 210
    :cond_0
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_bounds:Lcom/metamoji/cm/RectEx;

    sget-object v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 211
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_displayBounds:Lcom/metamoji/cm/RectEx;

    sget-object v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    const/4 p1, 0x0

    .line 212
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    .line 213
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->clearSnapShotProperties()V

    .line 215
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setIsEditing(Z)V
    .locals 1

    .line 227
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isEditing:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 230
    :cond_0
    monitor-enter p0

    .line 231
    :try_start_0
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isEditing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShot:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 233
    :try_start_1
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 234
    new-instance p1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementIds:Ljava/util/HashSet;

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShotIds:Ljava/util/HashSet;

    .line 235
    new-instance p1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementTypes:Ljava/util/HashSet;

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShotTypes:Ljava/util/HashSet;

    goto :goto_0

    .line 237
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 238
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShotIds:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 239
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShotTypes:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 241
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setIsNonLimitation(Z)V
    .locals 0

    .line 254
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isNonLimitation:Z

    return-void
.end method

.method public setLockedGroupIds(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)V"
        }
    .end annotation

    .line 301
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_lockedGroupIds:Ljava/util/Set;

    return-void
.end method

.method public setMaximumElementOrder(I)V
    .locals 0

    .line 681
    iput p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_maximumElementOrder:I

    return-void
.end method

.method public setMinimumElementOrder(I)V
    .locals 0

    .line 684
    iput p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_minimumElementOrder:I

    return-void
.end method

.method public setPaintGroupFramesWhenTranslateEdit(Z)V
    .locals 0

    .line 424
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_paintGroupFramesWhenTranslateEdit:Z

    return-void
.end method

.method setRemovedElements(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/module/element/DrElement;",
            ">;)V"
        }
    .end annotation

    .line 1172
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_removedElements:Ljava/util/ArrayList;

    return-void
.end method

.method public setRubberBand(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;)V
    .locals 1

    .line 357
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    if-eqz p1, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setUid(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    :cond_0
    return-void
.end method

.method setSelectionManager(Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;)V
    .locals 0

    .line 1044
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_selectionManager:Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    return-void
.end method

.method setSnapShotBounds(Lcom/metamoji/cm/RectEx;)V
    .locals 1

    .line 1055
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShotBounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    return-void
.end method

.method setSnapShotId(I)V
    .locals 0

    .line 1103
    iput p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShotId:I

    return-void
.end method

.method public setSnapShotImage(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShotImage:Landroid/graphics/Bitmap;

    return-void
.end method

.method setSnapShotImageBounds(Lcom/metamoji/cm/RectEx;)V
    .locals 1

    .line 1081
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShotImageBounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    return-void
.end method

.method setSnapShotImageScale(F)V
    .locals 0

    .line 1092
    iput p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShotImageScale:F

    return-void
.end method

.method public setSnapShotSprite(Lcom/metamoji/df/sprite/Sprite;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShotSprite:Lcom/metamoji/df/sprite/Sprite;

    return-void
.end method

.method setSnapShotTargetBounds(Lcom/metamoji/cm/RectEx;)V
    .locals 1

    .line 1069
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShotTargetBounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    return-void
.end method

.method public setTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 1

    .line 321
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isActive:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 322
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 325
    :cond_0
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    return-void
.end method

.method public setTouchPosition(Landroid/graphics/PointF;)V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_touchPosition:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void
.end method

.method public setUid(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_uid:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-void
.end method

.method snapShotBounds()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 1052
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShotBounds:Lcom/metamoji/cm/RectEx;

    return-object v0
.end method

.method snapShotId()I
    .locals 1

    .line 1100
    iget v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShotId:I

    return v0
.end method

.method public snapShotImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShotImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method snapShotImageBounds()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 1078
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShotImageBounds:Lcom/metamoji/cm/RectEx;

    return-object v0
.end method

.method snapShotImageScale()F
    .locals 1

    .line 1089
    iget v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShotImageScale:F

    return v0
.end method

.method public snapShotSprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShotSprite:Lcom/metamoji/df/sprite/Sprite;

    return-object v0
.end method

.method snapShotTargetBounds()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 1066
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_snapShotTargetBounds:Lcom/metamoji/cm/RectEx;

    return-object v0
.end method

.method public touch()Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    return-object v0
.end method

.method public touchPosition()Landroid/graphics/PointF;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_touchPosition:Landroid/graphics/PointF;

    return-object v0
.end method

.method public uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_uid:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-object v0
.end method

.method public unitElementIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 671
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_unitElementIds:Ljava/util/HashSet;

    return-object v0
.end method

.method public update()V
    .locals 4

    .line 867
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->clearInnerProperties()V

    .line 868
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 869
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 870
    iget-boolean v3, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_isNonLimitation:Z

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->isSelectable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 871
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_removedElements:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 872
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_removedElements:Ljava/util/ArrayList;

    .line 874
    :cond_0
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_removedElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 877
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    invoke-direct {p0, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->updateInnerPropertiesByElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    goto :goto_0

    .line 880
    :cond_2
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elements:Ljava/util/ArrayList;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 881
    invoke-static {v0, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setTouchPosition(Landroid/graphics/PointF;)V

    return-void
.end method

.method public updateProperties()V
    .locals 11

    .line 976
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->linkageManager()Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->followerCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 977
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 978
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    move-object v2, v0

    :goto_0
    const/4 v3, 0x0

    const/4 v4, -0x1

    move v5, v4

    move v6, v5

    move v4, v3

    .line 981
    :goto_1
    iget-object v7, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->elementCount()I

    move-result v7

    if-ge v3, v7, :cond_6

    .line 982
    iget-object v7, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementByOrder(I)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v7

    .line 983
    iget-object v8, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementIds:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v8

    if-ge v4, v8, :cond_5

    .line 984
    iget-object v8, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementIds:Ljava/util/HashSet;

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-gez v5, :cond_1

    move v5, v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 990
    iget-object v6, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementIds:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    if-lt v4, v6, :cond_2

    goto :goto_3

    :cond_2
    move v6, v3

    goto :goto_2

    :cond_3
    if-nez v4, :cond_4

    if-eqz v0, :cond_5

    .line 996
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    .line 1000
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    move v3, v6

    :goto_3
    if-eqz v0, :cond_e

    .line 1005
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_linkageStrongFollowerElementIds:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_e

    .line 1006
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1007
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1008
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1009
    iget-object v8, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_linkageStrongFollowerElementIds:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1010
    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1011
    invoke-virtual {v4, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1012
    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1013
    :cond_7
    iget-object v10, p0, Lcom/metamoji/un/draw2/module/selection/DrSelection;->m_elementIds:Ljava/util/HashSet;

    invoke-virtual {v10, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_4

    .line 1014
    :cond_8
    invoke-virtual {v2, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1015
    invoke-virtual {v4, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1017
    :cond_9
    invoke-virtual {v4, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1018
    invoke-virtual {v6, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1021
    :cond_a
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_b

    goto :goto_5

    :cond_b
    move-object v4, v1

    :goto_5
    invoke-virtual {p0, v4}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setExternalLinkageStrongFollowerIds(Ljava/util/Set;)V

    .line 1022
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_c

    goto :goto_6

    :cond_c
    move-object v6, v1

    :goto_6
    invoke-virtual {p0, v6}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setExternalUpperOrderLinkageStrongFollowerIds(Ljava/util/Set;)V

    .line 1023
    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_d

    move-object v1, v7

    :cond_d
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setExternalLowerOrderLinkageStrongFollowerIds(Ljava/util/Set;)V

    goto :goto_7

    .line 1025
    :cond_e
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setExternalLinkageStrongFollowerIds(Ljava/util/Set;)V

    .line 1026
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setExternalUpperOrderLinkageStrongFollowerIds(Ljava/util/Set;)V

    .line 1027
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setExternalLowerOrderLinkageStrongFollowerIds(Ljava/util/Set;)V

    .line 1029
    :goto_7
    invoke-virtual {p0, v3}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setMaximumElementOrder(I)V

    .line 1030
    invoke-virtual {p0, v5}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setMinimumElementOrder(I)V

    return-void
.end method
