.class public Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;
.super Ljava/lang/Object;
.source "DrOvRubberBand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;
    }
.end annotation


# static fields
.field private static final FIXED_HANDLE_COUNT:I

.field private static final FIXED_HANDLE_POSITION:[Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;


# instance fields
.field private m_action:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

.field private m_activeHandle:Ljava/lang/Object;

.field private m_adsorptionAngles:[F

.field private m_adsorptionMargin:F

.field private m_angleInRadians:F

.field private final m_contentBounds:Lcom/metamoji/cm/RectEx;

.field private m_density:F

.field private m_drawExtraHandles:Z

.field private m_extraHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_fixExtraHandleVisibility:Z

.field private m_fixFrameVisibility:Z

.field private m_fixHandleVisibility:Z

.field private m_fixedHandles:[Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

.field private final m_frameBounds:Landroid/graphics/RectF;

.field private m_frameHeight:F

.field private m_framePadding:F

.field private m_frameStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

.field private m_frameVisibility:Z

.field private m_frameWidth:F

.field private m_ignoreTouchEndVariation:Z

.field private m_isReversible:Z

.field private m_isVisible:Z

.field private m_keepAspectRatio:Z

.field private m_layer:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;

.field private final m_minContentSize:Lcom/metamoji/cm/SizeF;

.field private final m_minExtraHandleableFrameSize:Lcom/metamoji/cm/SizeF;

.field private final m_minFrameSize:Lcom/metamoji/cm/SizeF;

.field private m_optimizeFrameForZoom:Z

.field private m_owner:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandOwner;

.field private m_rotationStep:I

.field private m_scale:F

.field private m_scaledFrameStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

.field private final m_sprite:Lcom/metamoji/df/sprite/Sprite;

.field private m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

.field private m_touchMargin:F

.field private m_uid:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

.field m_visibleHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 27
    const-class v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->size()I

    move-result v0

    sput v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->FIXED_HANDLE_COUNT:I

    const/16 v0, 0x19

    .line 47
    new-array v0, v0, [Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/high16 v1, -0x41000000    # -0.5f

    const/4 v2, 0x0

    .line 50
    invoke-static {v1, v2, v2, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;->create(FFFF)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const/high16 v3, 0x3f000000    # 0.5f

    .line 51
    invoke-static {v3, v2, v2, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;->create(FFFF)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v0, v5

    const/4 v4, 0x3

    .line 52
    invoke-static {v2, v1, v2, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;->create(FFFF)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x4

    .line 53
    invoke-static {v2, v3, v2, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;->create(FFFF)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x5

    .line 54
    invoke-static {v1, v1, v2, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;->create(FFFF)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x6

    .line 55
    invoke-static {v1, v3, v2, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;->create(FFFF)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x7

    .line 56
    invoke-static {v3, v1, v2, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;->create(FFFF)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x8

    .line 57
    invoke-static {v3, v3, v2, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;->create(FFFF)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;

    move-result-object v5

    aput-object v5, v0, v4

    const/high16 v4, -0x3df00000    # -36.0f

    .line 59
    invoke-static {v1, v2, v4, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;->create(FFFF)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;

    move-result-object v5

    const/16 v6, 0x9

    aput-object v5, v0, v6

    const/high16 v5, 0x42100000    # 36.0f

    .line 60
    invoke-static {v3, v2, v5, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;->create(FFFF)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;

    move-result-object v6

    const/16 v7, 0xa

    aput-object v6, v0, v7

    const/16 v6, 0xb

    .line 61
    invoke-static {v2, v1, v2, v4}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;->create(FFFF)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;

    move-result-object v4

    aput-object v4, v0, v6

    const/16 v4, 0xc

    .line 62
    invoke-static {v2, v3, v2, v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;->create(FFFF)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;

    move-result-object v5

    aput-object v5, v0, v4

    const/high16 v4, -0x3e300000    # -26.0f

    .line 63
    invoke-static {v1, v1, v4, v4}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;->create(FFFF)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;

    move-result-object v5

    const/16 v6, 0xd

    aput-object v5, v0, v6

    const/high16 v5, 0x41d00000    # 26.0f

    .line 64
    invoke-static {v1, v3, v4, v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;->create(FFFF)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;

    move-result-object v6

    const/16 v7, 0xe

    aput-object v6, v0, v7

    const/16 v6, 0xf

    .line 65
    invoke-static {v3, v1, v5, v4}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;->create(FFFF)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;

    move-result-object v4

    aput-object v4, v0, v6

    const/16 v4, 0x10

    .line 66
    invoke-static {v3, v3, v5, v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;->create(FFFF)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;

    move-result-object v5

    aput-object v5, v0, v4

    const/high16 v4, -0x3d700000    # -72.0f

    .line 68
    invoke-static {v1, v2, v4, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;->create(FFFF)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;

    move-result-object v5

    const/16 v6, 0x11

    aput-object v5, v0, v6

    const/high16 v5, 0x42900000    # 72.0f

    .line 69
    invoke-static {v3, v2, v5, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;->create(FFFF)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;

    move-result-object v6

    const/16 v7, 0x12

    aput-object v6, v0, v7

    const/16 v6, 0x13

    .line 70
    invoke-static {v2, v1, v2, v4}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;->create(FFFF)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;

    move-result-object v4

    aput-object v4, v0, v6

    const/16 v4, 0x14

    .line 71
    invoke-static {v2, v3, v2, v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;->create(FFFF)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;

    move-result-object v2

    aput-object v2, v0, v4

    const/high16 v2, -0x3db00000    # -52.0f

    .line 72
    invoke-static {v1, v1, v2, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;->create(FFFF)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;

    move-result-object v4

    const/16 v5, 0x15

    aput-object v4, v0, v5

    const/high16 v4, 0x42500000    # 52.0f

    .line 73
    invoke-static {v1, v3, v2, v4}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;->create(FFFF)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;

    move-result-object v5

    const/16 v6, 0x16

    aput-object v5, v0, v6

    const/16 v5, 0x17

    .line 74
    invoke-static {v3, v1, v4, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;->create(FFFF)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x18

    .line 75
    invoke-static {v3, v3, v4, v4}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;->create(FFFF)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->FIXED_HANDLE_POSITION:[Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_isVisible:Z

    .line 124
    sget v1, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->FIXED_HANDLE_COUNT:I

    new-array v1, v1, [Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    iput-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_fixedHandles:[Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_extraHandles:Ljava/util/ArrayList;

    .line 131
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameBounds:Landroid/graphics/RectF;

    const/4 v1, 0x0

    .line 136
    iput-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_visibleHandles:Ljava/util/ArrayList;

    .line 139
    iput-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_activeHandle:Ljava/lang/Object;

    .line 141
    iput-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    .line 143
    iput-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_action:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    .line 146
    iput-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 147
    iput-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_scaledFrameStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 150
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_drawExtraHandles:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 154
    iput v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_scale:F

    .line 155
    iput v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_density:F

    const/4 v1, 0x0

    .line 194
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_ignoreTouchEndVariation:Z

    .line 212
    new-instance v2, Lcom/metamoji/cm/RectEx;

    invoke-direct {v2}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_contentBounds:Lcom/metamoji/cm/RectEx;

    .line 240
    new-instance v2, Lcom/metamoji/cm/SizeF;

    invoke-direct {v2}, Lcom/metamoji/cm/SizeF;-><init>()V

    iput-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_minContentSize:Lcom/metamoji/cm/SizeF;

    .line 249
    new-instance v2, Lcom/metamoji/cm/SizeF;

    invoke-direct {v2}, Lcom/metamoji/cm/SizeF;-><init>()V

    iput-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_minFrameSize:Lcom/metamoji/cm/SizeF;

    .line 258
    new-instance v2, Lcom/metamoji/cm/SizeF;

    invoke-direct {v2}, Lcom/metamoji/cm/SizeF;-><init>()V

    iput-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_minExtraHandleableFrameSize:Lcom/metamoji/cm/SizeF;

    .line 327
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_keepAspectRatio:Z

    .line 334
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_isReversible:Z

    .line 341
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameVisibility:Z

    .line 358
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_fixFrameVisibility:Z

    .line 393
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_fixHandleVisibility:Z

    .line 426
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_fixExtraHandleVisibility:Z

    return-void
.end method

.method static defaultActionForPosition(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;
    .locals 2

    .line 86
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;->ordinal()I

    move-result v0

    .line 87
    sget-object v1, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;->FRAME_LEFT:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    sget-object v1, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;->FRAME_RIGHT_BOTTOM:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;

    .line 88
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 90
    sget-object p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->FRAME_RESIZED:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    return-object p0

    .line 92
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$rubberband$DrOvRubberBandHandle$Position:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 106
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string v0, "ActionType for the argument is not defined"

    invoke-direct {p0, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 103
    :pswitch_0
    sget-object p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->FRAME_RESIZED:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    return-object p0

    .line 98
    :pswitch_1
    sget-object p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->FRAME_ROTATED:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private drawInContext(Lcom/metamoji/df/sprite/Graphics;)V
    .locals 4

    .line 866
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_isVisible:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 871
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameVisibility:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_scaledFrameStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    if-eqz v0, :cond_1

    .line 872
    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->applyTo(Lcom/metamoji/df/sprite/Graphics;)V

    .line 873
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/metamoji/df/sprite/Graphics;->drawRect(FFFF)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 880
    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 881
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_scaledFrameStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineWidth()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    const/4 v1, 0x0

    .line 882
    invoke-virtual {p1, v1}, Lcom/metamoji/df/sprite/Graphics;->setLineAlpha(F)V

    .line 883
    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Graphics;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 884
    invoke-virtual {p1, v1}, Lcom/metamoji/df/sprite/Graphics;->setFillAlpha(F)V

    .line 885
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/metamoji/df/sprite/Graphics;->drawRect(FFFF)V

    .line 889
    :goto_0
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->visibleHandles()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    .line 890
    invoke-virtual {v1, p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->drawInContext(Lcom/metamoji/df/sprite/Graphics;)V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private updateContents()V
    .locals 1

    .line 676
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_layer:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v0

    .line 678
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 679
    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->drawInContext(Lcom/metamoji/df/sprite/Graphics;)V

    :cond_0
    return-void
.end method

.method private updateGeometry()V
    .locals 6

    .line 685
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_contentBounds:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->width:F

    iput v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameWidth:F

    .line 686
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_contentBounds:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->height:F

    iput v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameHeight:F

    .line 687
    iget v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_framePadding:F

    .line 688
    iget-boolean v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_optimizeFrameForZoom:Z

    if-eqz v2, :cond_0

    .line 689
    iget v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_scale:F

    mul-float/2addr v1, v2

    .line 691
    :cond_0
    iget v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    add-float/2addr v2, v1

    iput v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameWidth:F

    add-float/2addr v0, v1

    .line 692
    iput v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameHeight:F

    .line 695
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_minFrameSize:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->width:F

    iget v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_scale:F

    mul-float/2addr v0, v1

    .line 696
    iget v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameWidth:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1

    .line 697
    iput v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameWidth:F

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_minFrameSize:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    iget v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_scale:F

    mul-float/2addr v0, v1

    .line 700
    iget v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameHeight:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_2

    .line 701
    iput v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameHeight:F

    .line 703
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameWidth:F

    neg-float v2, v1

    div-float/2addr v2, v3

    iget v4, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameHeight:F

    neg-float v5, v4

    div-float/2addr v5, v3

    div-float/2addr v1, v3

    div-float/2addr v4, v3

    invoke-virtual {v0, v2, v5, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 706
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameWidth:F

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_minExtraHandleableFrameSize:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->width:F

    iget v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_scale:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameHeight:F

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_minExtraHandleableFrameSize:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->height:F

    iget v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_scale:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 708
    :goto_0
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_drawExtraHandles:Z

    if-eq v1, v0, :cond_4

    .line 709
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_drawExtraHandles:Z

    const/4 v0, 0x0

    .line 710
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_visibleHandles:Ljava/util/ArrayList;

    .line 714
    :cond_4
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_action:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    if-eqz v0, :cond_6

    .line 715
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->scaleWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 716
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameWidth:F

    neg-float v0, v0

    iput v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameWidth:F

    .line 718
    :cond_5
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_action:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->scaleHeight()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 719
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameHeight:F

    neg-float v0, v0

    iput v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameHeight:F

    .line 724
    :cond_6
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_contentBounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 725
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_contentBounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 727
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    iget v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_angleInRadians:F

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->setRotation(F)V

    .line 730
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->visibleHandles()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    .line 731
    iget v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameWidth:F

    iget v3, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameHeight:F

    iget v4, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_scale:F

    iget v5, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_density:F

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->updateGeometry(FFFF)V

    goto :goto_1

    .line 734
    :cond_7
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->updateContents()V

    return-void
.end method

.method private visibleHandles()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;",
            ">;"
        }
    .end annotation

    .line 646
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_visibleHandles:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    return-object v0

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_extraHandles:Ljava/util/ArrayList;

    monitor-enter v0

    .line 653
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_visibleHandles:Ljava/util/ArrayList;

    .line 654
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_fixedHandles:[Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    if-eqz v4, :cond_1

    .line 655
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 656
    iget-object v5, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_visibleHandles:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 659
    :cond_2
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_drawExtraHandles:Z

    if-eqz v1, :cond_4

    .line 660
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    .line 661
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 662
    iget-object v3, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_visibleHandles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 666
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_visibleHandles:Ljava/util/ArrayList;

    return-object v0

    :catchall_0
    move-exception v1

    .line 666
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public action()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_action:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    return-object v0
.end method

.method public addExtraHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)V
    .locals 4

    .line 528
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_extraHandles:Ljava/util/ArrayList;

    monitor-enter v0

    .line 529
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 531
    iput-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_visibleHandles:Ljava/util/ArrayList;

    .line 533
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    iput-object p0, p1, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    .line 536
    sget-object v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->EXTRA_HANDLE_MOVED:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    iput-object v0, p1, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->action:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    .line 537
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameWidth:F

    iget v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameHeight:F

    iget v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_scale:F

    iget v3, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_density:F

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->updateGeometry(FFFF)V

    .line 539
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_isVisible:Z

    if-eqz p1, :cond_1

    .line 540
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->updateContents()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 533
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public adsorptionAngles()[F
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_adsorptionAngles:[F

    return-object v0
.end method

.method public adsorptionMargin()F
    .locals 1

    .line 321
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_adsorptionMargin:F

    return v0
.end method

.method public angleInRadians()F
    .locals 1

    .line 226
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_angleInRadians:F

    return v0
.end method

.method beginMoveByTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Z
    .locals 1

    .line 808
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_owner:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandOwner;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_layer:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->enableNonOwnerRubberBands()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_owner:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandOwner;

    if-eqz v0, :cond_2

    .line 809
    invoke-interface {v0, p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandOwner;->checkPermissionToTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 810
    :cond_1
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    .line 811
    iput-object p0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_activeHandle:Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public bounds()Lcom/metamoji/cm/RectEx;
    .locals 2

    .line 460
    new-instance v0, Lcom/metamoji/cm/RectEx;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Sprite;->bounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/metamoji/cm/RectEx;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public checkExtraHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)Z
    .locals 2

    .line 576
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_extraHandles:Ljava/util/ArrayList;

    monitor-enter v0

    .line 577
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 578
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public contentBounds()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_contentBounds:Lcom/metamoji/cm/RectEx;

    return-object v0
.end method

.method public extraHandleCount()I
    .locals 2

    .line 477
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_extraHandles:Ljava/util/ArrayList;

    monitor-enter v0

    .line 478
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 479
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public extraHandleVisibility()Z
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    .line 407
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public extraHandles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;",
            ">;"
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_extraHandles:Ljava/util/ArrayList;

    monitor-enter v0

    .line 469
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_extraHandles:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 470
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public fixExtraHandleVisibility()Z
    .locals 1

    .line 428
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_fixExtraHandleVisibility:Z

    return v0
.end method

.method public fixFrameVisibility()Z
    .locals 1

    .line 360
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_fixFrameVisibility:Z

    return v0
.end method

.method public fixHandleVisibility()Z
    .locals 1

    .line 395
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_fixHandleVisibility:Z

    return v0
.end method

.method public framePadding()F
    .locals 1

    .line 278
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_framePadding:F

    return v0
.end method

.method public frameStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    return-object v0
.end method

.method public frameVisibility()Z
    .locals 1

    .line 343
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameVisibility:Z

    return v0
.end method

.method public getHandleAtPosition(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_fixedHandles:[Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public handleVisibility()Z
    .locals 5

    .line 371
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_fixedHandles:[Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 372
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->isVisible()Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method hitTestByTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 756
    iput-object v2, v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_activeHandle:Ljava/lang/Object;

    .line 757
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v3

    .line 760
    iget v4, v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_touchMargin:F

    iget v5, v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_scale:F

    mul-float/2addr v4, v5

    .line 763
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v5

    neg-float v6, v4

    invoke-static {v5, v6, v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectInset(Lcom/metamoji/cm/RectEx;FF)Lcom/metamoji/cm/RectEx;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectContainsPoint(Lcom/metamoji/cm/RectEx;Landroid/graphics/PointF;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    return v6

    .line 768
    :cond_0
    iget-object v5, v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v5, v3}, Lcom/metamoji/df/sprite/Sprite;->parentToLocal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    .line 771
    iget-object v5, v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameBounds:Landroid/graphics/RectF;

    invoke-static {v5, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectContainsPoint(Landroid/graphics/RectF;Landroid/graphics/PointF;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 772
    iput-object v0, v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_activeHandle:Ljava/lang/Object;

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    .line 777
    :cond_1
    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->visibleHandles()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    .line 778
    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v10, v9, v6

    .line 779
    invoke-virtual {v8, v3, v4, v9}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->hitTest(Landroid/graphics/PointF;F[F)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 782
    aget v9, v9, v6

    float-to-double v10, v9

    float-to-double v12, v7

    iget v14, v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_scale:F

    float-to-double v14, v14

    const-wide v16, 0x3f847ae147ae147bL    # 0.01

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    cmpg-double v10, v10, v12

    if-gez v10, :cond_2

    .line 783
    iput-object v8, v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_activeHandle:Ljava/lang/Object;

    move v7, v9

    goto :goto_0

    .line 789
    :cond_3
    iget-object v3, v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_activeHandle:Ljava/lang/Object;

    if-eqz v3, :cond_7

    .line 793
    iget-object v3, v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_owner:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandOwner;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_layer:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->enableNonOwnerRubberBands()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    iget-object v3, v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_owner:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandOwner;

    if-eqz v3, :cond_6

    .line 794
    invoke-interface {v3, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandOwner;->checkPermissionToTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 795
    :cond_5
    iput-object v1, v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    return v9

    .line 798
    :cond_6
    iput-object v2, v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_activeHandle:Ljava/lang/Object;

    :cond_7
    return v6
.end method

.method public hitTestPoint(Landroid/graphics/PointF;)Z
    .locals 5

    .line 586
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_touchMargin:F

    iget v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_scale:F

    mul-float/2addr v0, v1

    .line 589
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    neg-float v2, v0

    invoke-static {v1, v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectInset(Lcom/metamoji/cm/RectEx;FF)Lcom/metamoji/cm/RectEx;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectContainsPoint(Lcom/metamoji/cm/RectEx;Landroid/graphics/PointF;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 594
    :cond_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1, p1}, Lcom/metamoji/df/sprite/Sprite;->parentToLocal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 597
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->visibleHandles()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    const/4 v4, 0x0

    .line 598
    invoke-virtual {v3, p1, v0, v4}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->hitTest(Landroid/graphics/PointF;F[F)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    .line 604
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameBounds:Landroid/graphics/RectF;

    invoke-static {v0, v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectInset(Landroid/graphics/RectF;FF)Landroid/graphics/RectF;

    move-result-object v0

    .line 605
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectContainsPoint(Landroid/graphics/RectF;Landroid/graphics/PointF;)Z

    move-result p1

    return p1
.end method

.method public ignoreTouchEndVariation()Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_ignoreTouchEndVariation:Z

    return v0
.end method

.method public isActive()Z
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_action:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isReversible()Z
    .locals 1

    .line 335
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_isReversible:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 435
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_isVisible:Z

    return v0
.end method

.method public keepAspectRatio()Z
    .locals 1

    .line 328
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_keepAspectRatio:Z

    return v0
.end method

.method public layer()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_layer:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;

    return-object v0
.end method

.method longPressed()V
    .locals 0

    return-void
.end method

.method public minContentSize()Lcom/metamoji/cm/SizeF;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_minContentSize:Lcom/metamoji/cm/SizeF;

    return-object v0
.end method

.method public minExtraHandleableFrameSize()Lcom/metamoji/cm/SizeF;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_minExtraHandleableFrameSize:Lcom/metamoji/cm/SizeF;

    return-object v0
.end method

.method public minFrameSize()Lcom/metamoji/cm/SizeF;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_minFrameSize:Lcom/metamoji/cm/SizeF;

    return-object v0
.end method

.method minScale()Landroid/graphics/PointF;
    .locals 6

    const/high16 v0, 0x40000000    # 2.0f

    .line 629
    iget v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_framePadding:F

    mul-float/2addr v1, v0

    .line 630
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_optimizeFrameForZoom:Z

    if-eqz v0, :cond_0

    .line 631
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_scale:F

    mul-float/2addr v1, v0

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_minFrameSize:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->width:F

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_minFrameSize:Lcom/metamoji/cm/SizeF;

    iget v2, v2, Lcom/metamoji/cm/SizeF;->height:F

    .line 634
    iget-object v3, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_minContentSize:Lcom/metamoji/cm/SizeF;

    iget v3, v3, Lcom/metamoji/cm/SizeF;->width:F

    iget-object v4, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_minContentSize:Lcom/metamoji/cm/SizeF;

    iget v4, v4, Lcom/metamoji/cm/SizeF;->height:F

    .line 635
    iget v5, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_scale:F

    mul-float/2addr v0, v5

    mul-float/2addr v2, v5

    mul-float/2addr v3, v5

    mul-float/2addr v4, v5

    sub-float/2addr v0, v1

    .line 639
    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v3, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_contentBounds:Lcom/metamoji/cm/RectEx;

    iget v3, v3, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v0, v3

    sub-float/2addr v2, v1

    .line 640
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_contentBounds:Lcom/metamoji/cm/RectEx;

    iget v2, v2, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr v1, v2

    .line 642
    new-instance v2, Landroid/graphics/PointF;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method public optimizeFrameForZoom()Z
    .locals 1

    .line 289
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_optimizeFrameForZoom:Z

    return v0
.end method

.method public owner()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandOwner;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_owner:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandOwner;

    return-object v0
.end method

.method public removeAllExtraHandles()V
    .locals 4

    .line 562
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_extraHandles:Ljava/util/ArrayList;

    monitor-enter v0

    .line 563
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    .line 564
    iput-object v3, v2, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    goto :goto_0

    .line 566
    :cond_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 567
    iput-object v3, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_visibleHandles:Ljava/util/ArrayList;

    .line 568
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->updateContents()V

    return-void

    :catchall_0
    move-exception v1

    .line 568
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeExtraHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)V
    .locals 2

    .line 548
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_extraHandles:Ljava/util/ArrayList;

    monitor-enter v0

    .line 549
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 550
    iput-object v1, p1, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    .line 551
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 552
    iput-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_visibleHandles:Ljava/util/ArrayList;

    .line 554
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_isVisible:Z

    if-eqz p1, :cond_1

    .line 557
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->updateContents()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 554
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public rotationStep()I
    .locals 1

    .line 296
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_rotationStep:I

    return v0
.end method

.method scale()F
    .locals 1

    .line 612
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_scale:F

    return v0
.end method

.method public setAdsorptionAngles([F)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_adsorptionAngles:[F

    return-void
.end method

.method public setAdsorptionMargin(F)V
    .locals 0

    .line 322
    iput p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_adsorptionMargin:F

    return-void
.end method

.method public setAngleInRadians(F)V
    .locals 1

    .line 229
    iput p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_angleInRadians:F

    .line 232
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->setRotation(F)V

    return-void
.end method

.method public setContentBounds(Lcom/metamoji/cm/RectEx;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_contentBounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 218
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->updateGeometry()V

    return-void
.end method

.method public setExtraHandleVisibility(Z)V
    .locals 3

    .line 414
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->fixExtraHandleVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    const/4 v2, 0x0

    .line 418
    invoke-virtual {v1, p1, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsVisible(ZZ)V

    goto :goto_0

    .line 420
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->updateContents()V

    return-void
.end method

.method public setFixExtraHandleVisibility(Z)V
    .locals 0

    .line 431
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_fixExtraHandleVisibility:Z

    return-void
.end method

.method public setFixFrameVisibility(Z)V
    .locals 0

    .line 363
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_fixFrameVisibility:Z

    return-void
.end method

.method public setFixHandleVisibility(Z)V
    .locals 0

    .line 398
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_fixHandleVisibility:Z

    return-void
.end method

.method public setFramePadding(F)V
    .locals 0

    .line 279
    iput p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_framePadding:F

    return-void
.end method

.method public setFrameStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)V
    .locals 2

    .line 267
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 268
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_scaledFrameStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 269
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_optimizeFrameForZoom:Z

    if-eqz v0, :cond_0

    .line 270
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_scale:F

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->cloneWithScale(FLcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_scaledFrameStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    :cond_0
    return-void
.end method

.method public setFrameVisibility(Z)V
    .locals 1

    .line 346
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->fixFrameVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 349
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameVisibility:Z

    if-eq v0, p1, :cond_1

    .line 350
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameVisibility:Z

    .line 351
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->updateContents()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;)V
    .locals 4

    .line 495
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_fixedHandles:[Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    if-eq v0, p1, :cond_5

    const/4 v1, 0x0

    .line 497
    iput-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_visibleHandles:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 500
    iput-object v1, v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    .line 501
    sget-object v1, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;->NONE:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setPosition(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 504
    iput-object p0, p1, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    .line 505
    iget-object v1, p1, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->origin:Landroid/graphics/PointF;

    sget-object v2, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->FIXED_HANDLE_POSITION:[Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;->ordinal()I

    move-result v3

    aget-object v3, v2, v3

    iget-object v3, v3, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;->origin:Landroid/graphics/PointF;

    invoke-virtual {v1, v3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 506
    iget-object v1, p1, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->offset:Landroid/graphics/PointF;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;->offset:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 507
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->defaultActionForPosition(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    move-result-object v1

    iput-object v1, p1, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->action:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    .line 508
    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setPosition(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;)V

    .line 511
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_fixedHandles:[Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;->ordinal()I

    move-result p2

    aput-object p1, v1, p2

    if-eqz p1, :cond_2

    .line 513
    iget p2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameWidth:F

    iget v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameHeight:F

    iget v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_scale:F

    iget v3, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_density:F

    invoke-virtual {p1, p2, v1, v2, v3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->updateGeometry(FFFF)V

    :cond_2
    if-eqz v0, :cond_3

    .line 516
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->isVisible()Z

    move-result p2

    if-nez p2, :cond_4

    :cond_3
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 517
    :cond_4
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->updateContents()V

    :cond_5
    return-void
.end method

.method public setHandleVisibility(Z)V
    .locals 5

    .line 379
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->fixHandleVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_fixedHandles:[Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    if-eqz v4, :cond_1

    .line 384
    invoke-virtual {v4, p1, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsVisible(ZZ)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 387
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->updateContents()V

    return-void
.end method

.method public setIgnoreTouchEndVariation(Z)V
    .locals 0

    .line 196
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_ignoreTouchEndVariation:Z

    return-void
.end method

.method public setIsReversible(Z)V
    .locals 0

    .line 336
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_isReversible:Z

    return-void
.end method

.method public setKeepAspectRatio(Z)V
    .locals 0

    .line 329
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_keepAspectRatio:Z

    return-void
.end method

.method public setLayer(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V

    goto :goto_0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_layer:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->removeChild(Lcom/metamoji/df/sprite/Sprite;)V

    .line 186
    :goto_0
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_layer:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;

    return-void
.end method

.method public setMinContentSize(Lcom/metamoji/cm/SizeF;)V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_minContentSize:Lcom/metamoji/cm/SizeF;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/SizeF;->set(Lcom/metamoji/cm/SizeF;)V

    return-void
.end method

.method public setMinExtraHandleableFrameSize(Lcom/metamoji/cm/SizeF;)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_minExtraHandleableFrameSize:Lcom/metamoji/cm/SizeF;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/SizeF;->set(Lcom/metamoji/cm/SizeF;)V

    return-void
.end method

.method public setMinFrameSize(Lcom/metamoji/cm/SizeF;)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_minFrameSize:Lcom/metamoji/cm/SizeF;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/SizeF;->set(Lcom/metamoji/cm/SizeF;)V

    return-void
.end method

.method public setOptimizeFrameForZoom(Z)V
    .locals 0

    .line 290
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_optimizeFrameForZoom:Z

    return-void
.end method

.method public setOwner(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandOwner;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_owner:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandOwner;

    return-void
.end method

.method public setRotationStep(I)V
    .locals 0

    .line 297
    iput p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_rotationStep:I

    return-void
.end method

.method setScale(F)V
    .locals 2

    .line 615
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_layer:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;

    if-eqz v0, :cond_0

    .line 617
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->density()F

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_density:F

    .line 619
    :cond_0
    iput p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_scale:F

    .line 620
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_optimizeFrameForZoom:Z

    .line 623
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 621
    invoke-virtual {v1, p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->cloneWithScale(FLcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_scaledFrameStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    goto :goto_0

    .line 623
    :cond_1
    iput-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_scaledFrameStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 625
    :goto_0
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->updateGeometry()V

    return-void
.end method

.method public setTouchMargin(F)V
    .locals 0

    .line 306
    iput p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_touchMargin:F

    return-void
.end method

.method public setUid(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_uid:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 438
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_isVisible:Z

    .line 439
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->updateContents()V

    return-void
.end method

.method sprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    return-object v0
.end method

.method touchBegan()V
    .locals 3

    .line 819
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_activeHandle:Ljava/lang/Object;

    if-ne v0, p0, :cond_0

    .line 820
    sget-object v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->FRAME_MOVED:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->actionForType(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_action:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    goto :goto_0

    .line 822
    :cond_0
    check-cast v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    .line 823
    iget-object v1, v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->action:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->actionForType(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_action:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    .line 824
    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->setRubberBandHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)V

    .line 827
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_action:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {v0, p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->setRubberBand(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;)V

    .line 828
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_action:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->setTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    .line 829
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_action:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_layer:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->movementThreshold()F

    move-result v1

    iget v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_scale:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->setThreshold(F)V

    .line 830
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_action:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->prepare()V

    .line 831
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_owner:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandOwner;

    if-eqz v0, :cond_1

    .line 832
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_action:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-interface {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandOwner;->receiveAction(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;)V

    :cond_1
    return-void
.end method

.method touchCancelled()V
    .locals 2

    .line 853
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_action:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->cancel()V

    .line 854
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_owner:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandOwner;

    if-eqz v0, :cond_0

    .line 855
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_action:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-interface {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandOwner;->receiveAction(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;)V

    :cond_0
    const/4 v0, 0x0

    .line 857
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_action:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    return-void
.end method

.method touchEnded()V
    .locals 2

    .line 843
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_ignoreTouchEndVariation:Z

    if-nez v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_action:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->update()Z

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_owner:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandOwner;

    if-eqz v0, :cond_1

    .line 847
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_action:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-interface {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandOwner;->receiveAction(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;)V

    :cond_1
    const/4 v0, 0x0

    .line 849
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_action:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    return-void
.end method

.method public touchMargin()F
    .locals 1

    .line 305
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_touchMargin:F

    return v0
.end method

.method touchMoved()V
    .locals 2

    .line 837
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_owner:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandOwner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_action:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->update()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_owner:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandOwner;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_action:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-interface {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandOwner;->receiveAction(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;)V

    :cond_0
    return-void
.end method

.method public uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_uid:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-object v0
.end method

.method updateHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Landroid/graphics/RectF;)V
    .locals 3

    .line 750
    iget p2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameWidth:F

    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameHeight:F

    iget v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_scale:F

    iget v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_density:F

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->updateGeometry(FFFF)V

    return-void
.end method

.method updateHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Z)V
    .locals 4

    .line 739
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameWidth:F

    iget v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_frameHeight:F

    iget v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_scale:F

    iget v3, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_density:F

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->updateGeometry(FFFF)V

    const/4 p1, 0x0

    .line 740
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->m_visibleHandles:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    .line 743
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->updateContents()V

    :cond_0
    return-void
.end method
