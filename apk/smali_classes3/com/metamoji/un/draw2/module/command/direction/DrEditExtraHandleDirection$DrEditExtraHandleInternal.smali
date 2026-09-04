.class Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;
.super Ljava/lang/Object;
.source "DrEditExtraHandleDirection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrEditExtraHandleInternal"
.end annotation


# instance fields
.field private m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

.field private m_handleIndex:I

.field private m_model:Lcom/metamoji/df/model/IModel;

.field private final m_nextCenterPoint:Landroid/graphics/PointF;

.field private final m_prevCenterPoint:Landroid/graphics/PointF;


# direct methods
.method static bridge synthetic -$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleIndex(Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;)I
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->handleIndex()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnextCenterPoint(Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;)Landroid/graphics/PointF;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->nextCenterPoint()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mprevCenterPoint(Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;)Landroid/graphics/PointF;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->prevCenterPoint()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetElementId(Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->setElementId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetHandleIndex(Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->setHandleIndex(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetNextCenterPoint(Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->setNextCenterPoint(Landroid/graphics/PointF;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPrevCenterPoint(Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->setPrevCenterPoint(Landroid/graphics/PointF;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->m_handleIndex:I

    .line 59
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->m_nextCenterPoint:Landroid/graphics/PointF;

    .line 63
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->m_prevCenterPoint:Landroid/graphics/PointF;

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;-><init>()V

    return-void
.end method

.method private elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-object v0
.end method

.method private handleIndex()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->m_handleIndex:I

    return v0
.end method

.method private model()Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->m_model:Lcom/metamoji/df/model/IModel;

    return-object v0
.end method

.method private nextCenterPoint()Landroid/graphics/PointF;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->m_nextCenterPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method private prevCenterPoint()Landroid/graphics/PointF;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->m_prevCenterPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method private setElementId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-void
.end method

.method private setHandleIndex(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->m_handleIndex:I

    return-void
.end method

.method private setModel(Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->m_model:Lcom/metamoji/df/model/IModel;

    return-void
.end method

.method private setNextCenterPoint(Landroid/graphics/PointF;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->m_nextCenterPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void
.end method

.method private setPrevCenterPoint(Landroid/graphics/PointF;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->m_prevCenterPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void
.end method


# virtual methods
.method public restoreFromModel(Lcom/metamoji/df/model/IModel;)V
    .locals 4

    .line 68
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->m_model:Lcom/metamoji/df/model/IModel;

    .line 71
    const-string v0, "i"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->idForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 74
    const-string v0, "h"

    iget v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->m_handleIndex:I

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)I

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->m_handleIndex:I

    .line 77
    const-string v0, "nx"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v0

    .line 78
    const-string v2, "ny"

    invoke-static {v2, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v2

    .line 79
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->m_nextCenterPoint:Landroid/graphics/PointF;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 82
    const-string v0, "px"

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v0

    .line 83
    const-string v2, "py"

    invoke-static {v2, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p1

    .line 84
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->m_prevCenterPoint:Landroid/graphics/PointF;

    invoke-virtual {v1, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public saveElementIdToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    const-string v1, "i"

    if-eqz v0, :cond_0

    .line 96
    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIdForName(Ljava/lang/String;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 98
    :cond_0
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public saveHandleIndexToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 3

    .line 103
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->m_handleIndex:I

    const/4 v1, -0x1

    const-string v2, "h"

    if-eq v0, v1, :cond_0

    .line 104
    invoke-static {v2, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)V

    return-void

    .line 106
    :cond_0
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public saveNextCenterPointToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->m_nextCenterPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const-string v2, "nx"

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->m_nextCenterPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 114
    :cond_0
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 116
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->m_nextCenterPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    const-string v1, "ny"

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->m_nextCenterPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 119
    :cond_1
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public savePrevCenterPointToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->m_prevCenterPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const-string v2, "px"

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->m_prevCenterPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->m_prevCenterPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    const-string v1, "py"

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->m_prevCenterPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 132
    :cond_1
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public saveToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->saveElementIdToModel(Lcom/metamoji/df/model/IModel;)V

    .line 89
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->saveHandleIndexToModel(Lcom/metamoji/df/model/IModel;)V

    .line 90
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->saveNextCenterPointToModel(Lcom/metamoji/df/model/IModel;)V

    .line 91
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->savePrevCenterPointToModel(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method
