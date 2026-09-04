.class public Lcom/metamoji/rb/RbRubberBand;
.super Ljava/lang/Object;
.source "RbRubberBand.java"


# static fields
.field private static final HANDLE_COUNT:I

.field static final _MultiplyDeBruijnBitPosition2:[I

.field private static final handleTemplate:[Lcom/metamoji/rb/_HandleTemplateRec;


# instance fields
.field private _action:Lcom/metamoji/rb/RbRubberBandAction;

.field private _actionType:Lcom/metamoji/rb/RbConstants$ActionType;

.field private _activePoint:Landroid/graphics/PointF;

.field private _angle:F

.field private _boundsCache:Lcom/metamoji/cm/RectEx;

.field private _center:Landroid/graphics/PointF;

.field private _currentHandleVisibility:I

.field private _direction:Landroid/graphics/PointF;

.field private _displayBounds:Lcom/metamoji/cm/RectEx;

.field private _e1:Landroid/graphics/PointF;

.field private _e2:Landroid/graphics/PointF;

.field private _fixedPoint:Landroid/graphics/PointF;

.field private _framePadding:F

.field private _frameStyle:Lcom/metamoji/rb/RbPathStyle;

.field private _handle:[Lcom/metamoji/rb/handle_t;

.field private _handleStyle:Lcom/metamoji/rb/RbHandleStyle;

.field private _handleVisibility:I

.field private _hideFrame:Z

.field private _hideInactiveHandles:Z

.field private _hitTestMargin:F

.field private _initialAngle:F

.field private _invertible:Z

.field private _jacobian:Lcom/metamoji/rb/_Jacobian;

.field private _keepAspectRatio:I

.field private _label:Ljava/lang/String;

.field private _maxScale:Landroid/graphics/PointF;

.field private _maxSize:Lcom/metamoji/cm/SizeF;

.field private _minScale:Landroid/graphics/PointF;

.field private _minSize:Lcom/metamoji/cm/SizeF;

.field private _normalize:Landroid/graphics/PointF;

.field private _outset:Lcom/metamoji/rb/Insets;

.field private _rect:Lcom/metamoji/cm/RectEx;

.field private _resizingX:Z

.field private _resizingY:Z

.field private _rotationStep:I

.field private _rotationStepNumber:I

.field private _rotationStepRadian:F

.field private _scale:F

.field private _sprite:Lcom/metamoji/df/sprite/Sprite;

.field private _start:Lcom/metamoji/rb/_TouchStartInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x20

    .line 104
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/metamoji/rb/RbRubberBand;->_MultiplyDeBruijnBitPosition2:[I

    const/16 v0, 0xe

    .line 118
    new-array v0, v0, [Lcom/metamoji/rb/_HandleTemplateRec;

    new-instance v1, Lcom/metamoji/rb/_HandleTemplateRec;

    sget-object v2, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_LEFT:Lcom/metamoji/rb/RbConstants$Activity;

    new-instance v3, Landroid/graphics/PointF;

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v3, v6}, Lcom/metamoji/rb/_HandleTemplateRec;-><init>(Lcom/metamoji/rb/RbConstants$Activity;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/rb/_HandleTemplateRec;

    sget-object v2, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_RIGHT:Lcom/metamoji/rb/RbConstants$Activity;

    new-instance v3, Landroid/graphics/PointF;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v3, v7}, Lcom/metamoji/rb/_HandleTemplateRec;-><init>(Lcom/metamoji/rb/RbConstants$Activity;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/rb/_HandleTemplateRec;

    sget-object v2, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_TOP:Lcom/metamoji/rb/RbConstants$Activity;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v5, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v3, v7}, Lcom/metamoji/rb/_HandleTemplateRec;-><init>(Lcom/metamoji/rb/RbConstants$Activity;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/rb/_HandleTemplateRec;

    sget-object v2, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_BOTTOM:Lcom/metamoji/rb/RbConstants$Activity;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v3, v7}, Lcom/metamoji/rb/_HandleTemplateRec;-><init>(Lcom/metamoji/rb/RbConstants$Activity;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/rb/_HandleTemplateRec;

    sget-object v2, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_UPPER_LEFT:Lcom/metamoji/rb/RbConstants$Activity;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v3, v7}, Lcom/metamoji/rb/_HandleTemplateRec;-><init>(Lcom/metamoji/rb/RbConstants$Activity;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/rb/_HandleTemplateRec;

    sget-object v2, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_UPPER_RIGHT:Lcom/metamoji/rb/RbConstants$Activity;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v6, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v3, v7}, Lcom/metamoji/rb/_HandleTemplateRec;-><init>(Lcom/metamoji/rb/RbConstants$Activity;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/rb/_HandleTemplateRec;

    sget-object v2, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_LOWER_LEFT:Lcom/metamoji/rb/RbConstants$Activity;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v4, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v3, v7}, Lcom/metamoji/rb/_HandleTemplateRec;-><init>(Lcom/metamoji/rb/RbConstants$Activity;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/rb/_HandleTemplateRec;

    sget-object v2, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_LOWER_RIGHT:Lcom/metamoji/rb/RbConstants$Activity;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v6, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v3, v7}, Lcom/metamoji/rb/_HandleTemplateRec;-><init>(Lcom/metamoji/rb/RbConstants$Activity;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/rb/_HandleTemplateRec;

    sget-object v2, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_SCALE_UPPER_LEFT:Lcom/metamoji/rb/RbConstants$Activity;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/PointF;

    const/high16 v8, -0x3e300000    # -26.0f

    invoke-direct {v7, v8, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v3, v7}, Lcom/metamoji/rb/_HandleTemplateRec;-><init>(Lcom/metamoji/rb/RbConstants$Activity;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/rb/_HandleTemplateRec;

    sget-object v2, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_SCALE_LOWER_RIGHT:Lcom/metamoji/rb/RbConstants$Activity;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v6, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/PointF;

    const/high16 v8, 0x41d00000    # 26.0f

    invoke-direct {v7, v8, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v3, v7}, Lcom/metamoji/rb/_HandleTemplateRec;-><init>(Lcom/metamoji/rb/RbConstants$Activity;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/rb/_HandleTemplateRec;

    sget-object v2, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_ROTATION_LEFT:Lcom/metamoji/rb/RbConstants$Activity;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/PointF;

    const/high16 v8, -0x3df00000    # -36.0f

    invoke-direct {v7, v8, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v3, v7}, Lcom/metamoji/rb/_HandleTemplateRec;-><init>(Lcom/metamoji/rb/RbConstants$Activity;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/rb/_HandleTemplateRec;

    sget-object v2, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_ROTATION_RIGHT:Lcom/metamoji/rb/RbConstants$Activity;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v6, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/PointF;

    const/high16 v8, 0x42100000    # 36.0f

    invoke-direct {v7, v8, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v3, v7}, Lcom/metamoji/rb/_HandleTemplateRec;-><init>(Lcom/metamoji/rb/RbConstants$Activity;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/rb/_HandleTemplateRec;

    sget-object v2, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_STEP_ROTATION_LEFT:Lcom/metamoji/rb/RbConstants$Activity;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    const/high16 v7, -0x3d680000    # -76.0f

    invoke-direct {v4, v7, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/rb/_HandleTemplateRec;-><init>(Lcom/metamoji/rb/RbConstants$Activity;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/rb/_HandleTemplateRec;

    sget-object v2, Lcom/metamoji/rb/RbConstants$Activity;->HANDLE_STEP_ROTATION_RIGHT:Lcom/metamoji/rb/RbConstants$Activity;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v6, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    const/high16 v6, 0x42980000    # 76.0f

    invoke-direct {v4, v6, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/rb/_HandleTemplateRec;-><init>(Lcom/metamoji/rb/RbConstants$Activity;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Lcom/metamoji/rb/RbRubberBand;->handleTemplate:[Lcom/metamoji/rb/_HandleTemplateRec;

    .line 142
    array-length v0, v0

    sput v0, Lcom/metamoji/rb/RbRubberBand;->HANDLE_COUNT:I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x1c
        0x2
        0x1d
        0xe
        0x18
        0x3
        0x1e
        0x16
        0x14
        0xf
        0x19
        0x11
        0x4
        0x8
        0x1f
        0x1b
        0xd
        0x17
        0x15
        0x13
        0x10
        0x7
        0x1a
        0xc
        0x12
        0x6
        0xb
        0x5
        0xa
        0x9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    .line 145
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_center:Landroid/graphics/PointF;

    .line 146
    new-instance v0, Lcom/metamoji/rb/Insets;

    invoke-direct {v0}, Lcom/metamoji/rb/Insets;-><init>()V

    iput-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_outset:Lcom/metamoji/rb/Insets;

    .line 165
    new-instance v0, Lcom/metamoji/rb/_TouchStartInfo;

    invoke-direct {v0}, Lcom/metamoji/rb/_TouchStartInfo;-><init>()V

    iput-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_start:Lcom/metamoji/rb/_TouchStartInfo;

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    .line 180
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_fixedPoint:Landroid/graphics/PointF;

    .line 181
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_activePoint:Landroid/graphics/PointF;

    .line 182
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_direction:Landroid/graphics/PointF;

    .line 183
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_normalize:Landroid/graphics/PointF;

    .line 184
    new-instance v0, Lcom/metamoji/rb/_Jacobian;

    invoke-direct {v0}, Lcom/metamoji/rb/_Jacobian;-><init>()V

    iput-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_jacobian:Lcom/metamoji/rb/_Jacobian;

    .line 188
    new-instance v0, Lcom/metamoji/cm/SizeF;

    invoke-direct {v0}, Lcom/metamoji/cm/SizeF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_minSize:Lcom/metamoji/cm/SizeF;

    new-instance v0, Lcom/metamoji/cm/SizeF;

    invoke-direct {v0}, Lcom/metamoji/cm/SizeF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_maxSize:Lcom/metamoji/cm/SizeF;

    .line 189
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_minScale:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_maxScale:Landroid/graphics/PointF;

    .line 245
    new-instance v0, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    iput-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 247
    iput v0, p0, Lcom/metamoji/rb/RbRubberBand;->_scale:F

    .line 249
    sget-object v1, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_ALL:Lcom/metamoji/rb/RbConstants$Activity;

    invoke-virtual {v1}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v1

    iput v1, p0, Lcom/metamoji/rb/RbRubberBand;->_handleVisibility:I

    const/4 v1, 0x0

    .line 250
    iput-boolean v1, p0, Lcom/metamoji/rb/RbRubberBand;->_hideInactiveHandles:Z

    .line 251
    new-instance v2, Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_e1:Landroid/graphics/PointF;

    .line 252
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_e2:Landroid/graphics/PointF;

    .line 254
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v0

    .line 255
    iput v2, p0, Lcom/metamoji/rb/RbRubberBand;->_framePadding:F

    .line 257
    sget v2, Lcom/metamoji/rb/RbRubberBand;->HANDLE_COUNT:I

    new-array v2, v2, [Lcom/metamoji/rb/handle_t;

    iput-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    .line 258
    :goto_0
    sget v2, Lcom/metamoji/rb/RbRubberBand;->HANDLE_COUNT:I

    if-ge v1, v2, :cond_0

    .line 259
    sget-object v2, Lcom/metamoji/rb/RbRubberBand;->handleTemplate:[Lcom/metamoji/rb/_HandleTemplateRec;

    aget-object v2, v2, v1

    .line 260
    iget-object v3, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    new-instance v4, Lcom/metamoji/rb/handle_t;

    invoke-direct {v4}, Lcom/metamoji/rb/handle_t;-><init>()V

    aput-object v4, v3, v1

    .line 261
    iget-object v3, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v3, v3, v1

    iget-object v4, v2, Lcom/metamoji/rb/_HandleTemplateRec;->type:Lcom/metamoji/rb/RbConstants$Activity;

    iput-object v4, v3, Lcom/metamoji/rb/handle_t;->type:Lcom/metamoji/rb/RbConstants$Activity;

    .line 262
    iget-object v3, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v3, v3, v1

    iget-object v4, v2, Lcom/metamoji/rb/_HandleTemplateRec;->relativePosition:Landroid/graphics/PointF;

    iput-object v4, v3, Lcom/metamoji/rb/handle_t;->relative:Landroid/graphics/PointF;

    .line 265
    iget-object v2, v2, Lcom/metamoji/rb/_HandleTemplateRec;->offset:Landroid/graphics/PointF;

    .line 266
    iget-object v3, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v3, v3, v1

    new-instance v4, Landroid/graphics/PointF;

    iget v5, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v0

    iget v2, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v0

    invoke-direct {v4, v5, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v4, v3, Lcom/metamoji/rb/handle_t;->offset:Landroid/graphics/PointF;

    .line 267
    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v2, v2, v1

    const/high16 v3, 0x40f00000    # 7.5f

    iput v3, v2, Lcom/metamoji/rb/handle_t;->radius:F

    .line 268
    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v2, v2, v1

    const/high16 v3, 0x40a00000    # 5.0f

    iput v3, v2, Lcom/metamoji/rb/handle_t;->margin:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 271
    :cond_0
    new-instance v0, Lcom/metamoji/cm/SizeF;

    const v1, 0x461c4000    # 10000.0f

    invoke-direct {v0, v1, v1}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    invoke-virtual {p0, v0}, Lcom/metamoji/rb/RbRubberBand;->setMaxSize(Lcom/metamoji/cm/SizeF;)V

    const/16 v0, 0x2d

    .line 273
    iput v0, p0, Lcom/metamoji/rb/RbRubberBand;->_rotationStep:I

    return-void
.end method

.method private static CGRectStandardize(FFFF)Lcom/metamoji/cm/RectEx;
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_0

    add-float/2addr p0, p2

    :cond_0
    cmpg-float v0, p3, v0

    if-gez v0, :cond_1

    add-float/2addr p1, p3

    .line 206
    :cond_1
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    return-object v0
.end method

.method private static bit_position(I)I
    .locals 2

    .line 112
    sget-object v0, Lcom/metamoji/rb/RbRubberBand;->_MultiplyDeBruijnBitPosition2:[I

    const v1, 0x77cb531

    mul-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x1b

    aget v0, v0, v1

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    if-ne v1, p0, :cond_0

    return v0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private containsPoint(Landroid/graphics/PointF;)Z
    .locals 1

    .line 900
    invoke-virtual {p0, p1}, Lcom/metamoji/rb/RbRubberBand;->hitTest(Landroid/graphics/PointF;)Lcom/metamoji/rb/RbConstants$Activity;

    move-result-object p1

    sget-object v0, Lcom/metamoji/rb/RbConstants$Activity;->NONE:Lcom/metamoji/rb/RbConstants$Activity;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static limit_scale(FFFZ)F
    .locals 1

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    cmpl-float p3, p0, p3

    const/4 v0, 0x0

    if-lez p3, :cond_0

    .line 228
    invoke-static {p0, p1, p2, v0}, Lcom/metamoji/rb/RbRubberBand;->limit_scale(FFFZ)F

    move-result p0

    return p0

    :cond_0
    neg-float p0, p0

    invoke-static {p0, p1, p2, v0}, Lcom/metamoji/rb/RbRubberBand;->limit_scale(FFFZ)F

    move-result p0

    neg-float p0, p0

    return p0

    :cond_1
    cmpg-float p3, p0, p1

    if-gez p3, :cond_2

    return p1

    :cond_2
    cmpl-float p1, p0, p2

    if-lez p1, :cond_3

    return p2

    :cond_3
    return p0
.end method

.method private static newMatrix(FFFFFF)Landroid/graphics/Matrix;
    .locals 3

    .line 212
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/16 v1, 0x9

    .line 213
    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    aput p1, v1, p0

    const/4 p0, 0x2

    const/4 p1, 0x0

    aput p1, v1, p0

    const/4 p0, 0x3

    aput p2, v1, p0

    const/4 p0, 0x4

    aput p3, v1, p0

    const/4 p0, 0x5

    aput p1, v1, p0

    const/4 p0, 0x6

    aput p4, v1, p0

    const/4 p0, 0x7

    aput p5, v1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    const/16 p1, 0x8

    aput p0, v1, p1

    .line 214
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    return-object v0
.end method

.method private static rect_inset(Lcom/metamoji/cm/RectEx;FF)Lcom/metamoji/cm/RectEx;
    .locals 5

    .line 198
    new-instance v0, Lcom/metamoji/cm/RectEx;

    iget v1, p0, Lcom/metamoji/cm/RectEx;->x:F

    add-float/2addr v1, p1

    iget v2, p0, Lcom/metamoji/cm/RectEx;->y:F

    add-float/2addr v2, p2

    iget v3, p0, Lcom/metamoji/cm/RectEx;->width:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr p1, v4

    sub-float/2addr v3, p1

    iget p0, p0, Lcom/metamoji/cm/RectEx;->height:F

    mul-float/2addr p2, v4

    sub-float/2addr p0, p2

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    return-object v0
.end method

.method private static transformBounds(Lcom/metamoji/cm/RectEx;Landroid/graphics/Matrix;)Lcom/metamoji/cm/RectEx;
    .locals 0

    .line 218
    invoke-virtual {p0}, Lcom/metamoji/cm/RectEx;->getRectF()Landroid/graphics/RectF;

    move-result-object p0

    .line 219
    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 220
    new-instance p1, Lcom/metamoji/cm/RectEx;

    invoke-direct {p1, p0}, Lcom/metamoji/cm/RectEx;-><init>(Landroid/graphics/RectF;)V

    return-object p1
.end method

.method private updateHandles()V
    .locals 10

    .line 823
    iget v0, p0, Lcom/metamoji/rb/RbRubberBand;->_scale:F

    iget v1, p0, Lcom/metamoji/rb/RbRubberBand;->_framePadding:F

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_frameStyle:Lcom/metamoji/rb/RbPathStyle;

    invoke-virtual {v2}, Lcom/metamoji/rb/RbPathStyle;->lineWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 824
    invoke-virtual {p0}, Lcom/metamoji/rb/RbRubberBand;->contentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    neg-float v0, v0

    invoke-static {v1, v0, v0}, Lcom/metamoji/rb/RbRubberBand;->rect_inset(Lcom/metamoji/cm/RectEx;FF)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    .line 826
    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_center:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/metamoji/rb/RbRubberBand;->_center:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 827
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/metamoji/rb/RbRubberBand;->_outset:Lcom/metamoji/rb/Insets;

    iget v4, v4, Lcom/metamoji/rb/Insets;->right:F

    iget-object v5, p0, Lcom/metamoji/rb/RbRubberBand;->_outset:Lcom/metamoji/rb/Insets;

    iget v5, v5, Lcom/metamoji/rb/Insets;->left:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 828
    iget v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/metamoji/rb/RbRubberBand;->_outset:Lcom/metamoji/rb/Insets;

    iget v4, v4, Lcom/metamoji/rb/Insets;->bottom:F

    iget-object v5, p0, Lcom/metamoji/rb/RbRubberBand;->_outset:Lcom/metamoji/rb/Insets;

    iget v5, v5, Lcom/metamoji/rb/Insets;->top:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 831
    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_e1:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v4, v0, Lcom/metamoji/cm/RectEx;->width:F

    mul-float/2addr v2, v4

    div-float/2addr v2, v3

    iget-object v4, p0, Lcom/metamoji/rb/RbRubberBand;->_e1:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, v0, Lcom/metamoji/cm/RectEx;->width:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v3

    invoke-direct {v1, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 832
    new-instance v2, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/metamoji/rb/RbRubberBand;->_e2:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget v5, v0, Lcom/metamoji/cm/RectEx;->height:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v3

    iget-object v5, p0, Lcom/metamoji/rb/RbRubberBand;->_e2:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v0, v0, Lcom/metamoji/cm/RectEx;->height:F

    mul-float/2addr v5, v0

    div-float/2addr v5, v3

    invoke-direct {v2, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v0, 0x0

    .line 834
    :goto_0
    sget v3, Lcom/metamoji/rb/RbRubberBand;->HANDLE_COUNT:I

    if-ge v0, v3, :cond_1

    .line 835
    iget v3, p0, Lcom/metamoji/rb/RbRubberBand;->_currentHandleVisibility:I

    iget-object v4, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/metamoji/rb/handle_t;->type:Lcom/metamoji/rb/RbConstants$Activity;

    invoke-virtual {v4}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v4

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 839
    :cond_0
    iget-object v3, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v3, v3, v0

    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/metamoji/rb/RbRubberBand;->_center:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/metamoji/rb/handle_t;->relative:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget v7, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/metamoji/rb/handle_t;->relative:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget v7, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/metamoji/rb/handle_t;->offset:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/metamoji/rb/RbRubberBand;->_e1:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, v7

    iget-object v7, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v7, v7, v0

    iget-object v7, v7, Lcom/metamoji/rb/handle_t;->offset:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget-object v8, p0, Lcom/metamoji/rb/RbRubberBand;->_e2:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, p0, Lcom/metamoji/rb/RbRubberBand;->_scale:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/metamoji/rb/RbRubberBand;->_center:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v7, v7, v0

    iget-object v7, v7, Lcom/metamoji/rb/handle_t;->relative:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget v8, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v7, v7, v0

    iget-object v7, v7, Lcom/metamoji/rb/handle_t;->relative:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v8, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v7, v7, v0

    iget-object v7, v7, Lcom/metamoji/rb/handle_t;->offset:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lcom/metamoji/rb/RbRubberBand;->_e1:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v8, v8, v0

    iget-object v8, v8, Lcom/metamoji/rb/handle_t;->offset:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iget-object v9, p0, Lcom/metamoji/rb/RbRubberBand;->_e2:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget v8, p0, Lcom/metamoji/rb/RbRubberBand;->_scale:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v4, v3, Lcom/metamoji/rb/handle_t;->center:Landroid/graphics/PointF;

    .line 844
    iget-object v3, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/metamoji/rb/handle_t;->radius:F

    iget-object v4, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/metamoji/rb/handle_t;->margin:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/metamoji/rb/RbRubberBand;->_scale:F

    mul-float/2addr v3, v4

    .line 845
    iget-object v4, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v4, v4, v0

    mul-float/2addr v3, v3

    iput v3, v4, Lcom/metamoji/rb/handle_t;->hitRadius2:F

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private updateSprite()V
    .locals 11

    .line 850
    invoke-virtual {p0}, Lcom/metamoji/rb/RbRubberBand;->visible()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_frameStyle:Lcom/metamoji/rb/RbPathStyle;

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 858
    :cond_1
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v0

    .line 859
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 861
    iget v1, p0, Lcom/metamoji/rb/RbRubberBand;->_scale:F

    iget v2, p0, Lcom/metamoji/rb/RbRubberBand;->_framePadding:F

    iget-object v3, p0, Lcom/metamoji/rb/RbRubberBand;->_frameStyle:Lcom/metamoji/rb/RbPathStyle;

    invoke-virtual {v3}, Lcom/metamoji/rb/RbPathStyle;->lineWidth()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    .line 862
    invoke-virtual {p0}, Lcom/metamoji/rb/RbRubberBand;->contentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v2

    neg-float v1, v1

    invoke-static {v2, v1, v1}, Lcom/metamoji/rb/RbRubberBand;->rect_inset(Lcom/metamoji/cm/RectEx;FF)Lcom/metamoji/cm/RectEx;

    move-result-object v1

    .line 864
    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    iget-object v3, p0, Lcom/metamoji/rb/RbRubberBand;->_center:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/metamoji/rb/RbRubberBand;->_outset:Lcom/metamoji/rb/Insets;

    iget v5, v5, Lcom/metamoji/rb/Insets;->right:F

    iget-object v6, p0, Lcom/metamoji/rb/RbRubberBand;->_outset:Lcom/metamoji/rb/Insets;

    iget v6, v6, Lcom/metamoji/rb/Insets;->left:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 865
    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    iget-object v3, p0, Lcom/metamoji/rb/RbRubberBand;->_center:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/metamoji/rb/RbRubberBand;->_outset:Lcom/metamoji/rb/Insets;

    iget v5, v5, Lcom/metamoji/rb/Insets;->bottom:F

    iget-object v6, p0, Lcom/metamoji/rb/RbRubberBand;->_outset:Lcom/metamoji/rb/Insets;

    iget v6, v6, Lcom/metamoji/rb/Insets;->top:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 866
    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p0}, Lcom/metamoji/rb/RbRubberBand;->angle()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/metamoji/df/sprite/Sprite;->setRotation(F)V

    .line 868
    iget v2, v1, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v2, v4

    .line 869
    iget v3, v1, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr v3, v4

    .line 871
    invoke-virtual {p0}, Lcom/metamoji/rb/RbRubberBand;->hideFrame()Z

    move-result v4

    if-nez v4, :cond_2

    .line 872
    iget-object v4, p0, Lcom/metamoji/rb/RbRubberBand;->_frameStyle:Lcom/metamoji/rb/RbPathStyle;

    iget v5, p0, Lcom/metamoji/rb/RbRubberBand;->_scale:F

    invoke-virtual {v4, v0, v5}, Lcom/metamoji/rb/RbPathStyle;->applyToGraphics(Lcom/metamoji/df/sprite/Graphics;F)V

    neg-float v4, v2

    neg-float v5, v3

    .line 873
    iget v6, v1, Lcom/metamoji/cm/RectEx;->width:F

    iget v1, v1, Lcom/metamoji/cm/RectEx;->height:F

    invoke-virtual {v0, v4, v5, v6, v1}, Lcom/metamoji/df/sprite/Graphics;->drawRect(FFFF)V

    :cond_2
    const/4 v1, 0x0

    move v4, v1

    .line 877
    :goto_0
    sget v5, Lcom/metamoji/rb/RbRubberBand;->HANDLE_COUNT:I

    if-ge v4, v5, :cond_5

    .line 878
    iget v5, p0, Lcom/metamoji/rb/RbRubberBand;->_currentHandleVisibility:I

    iget-object v6, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v6, v6, v4

    iget-object v6, v6, Lcom/metamoji/rb/handle_t;->type:Lcom/metamoji/rb/RbConstants$Activity;

    invoke-virtual {v6}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v6

    and-int/2addr v5, v6

    if-nez v5, :cond_3

    goto/16 :goto_1

    .line 882
    :cond_3
    iget-object v5, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v5, v5, v4

    iget-object v5, v5, Lcom/metamoji/rb/handle_t;->relative:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v2

    iget-object v6, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v6, v6, v4

    iget-object v6, v6, Lcom/metamoji/rb/handle_t;->offset:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget v7, p0, Lcom/metamoji/rb/RbRubberBand;->_scale:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 883
    iget-object v6, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v6, v6, v4

    iget-object v6, v6, Lcom/metamoji/rb/handle_t;->relative:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v3

    iget-object v7, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v7, v7, v4

    iget-object v7, v7, Lcom/metamoji/rb/handle_t;->offset:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v8, p0, Lcom/metamoji/rb/RbRubberBand;->_scale:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    .line 885
    iget-object v7, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v7, v7, v4

    iget-object v7, v7, Lcom/metamoji/rb/handle_t;->image:Landroid/graphics/Bitmap;

    .line 888
    iget-object v8, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    if-nez v7, :cond_4

    .line 886
    aget-object v7, v8, v4

    iget v7, v7, Lcom/metamoji/rb/handle_t;->radius:F

    iget v8, p0, Lcom/metamoji/rb/RbRubberBand;->_scale:F

    mul-float/2addr v7, v8

    invoke-virtual {v0, v5, v6, v7}, Lcom/metamoji/df/sprite/Graphics;->drawCircle(FFF)V

    goto :goto_1

    .line 888
    :cond_4
    aget-object v7, v8, v4

    iget-object v7, v7, Lcom/metamoji/rb/handle_t;->pivot:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget v8, p0, Lcom/metamoji/rb/RbRubberBand;->_scale:F

    mul-float/2addr v7, v8

    sub-float/2addr v5, v7

    .line 889
    iget-object v7, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v7, v7, v4

    iget-object v7, v7, Lcom/metamoji/rb/handle_t;->pivot:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v8, p0, Lcom/metamoji/rb/RbRubberBand;->_scale:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    .line 892
    iget-object v7, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v7, v7, v4

    iget-object v7, v7, Lcom/metamoji/rb/handle_t;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v8, v8, v4

    iget-object v8, v8, Lcom/metamoji/rb/handle_t;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v1, v1, v7, v8}, Lcom/metamoji/cm/RectEx;->newRect(IIII)Landroid/graphics/Rect;

    move-result-object v7

    .line 893
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/metamoji/rb/RbRubberBand;->_scale:F

    mul-float/2addr v8, v9

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/metamoji/rb/RbRubberBand;->_scale:F

    mul-float/2addr v9, v10

    invoke-static {v5, v6, v8, v9}, Lcom/metamoji/cm/RectEx;->newRectF(FFFF)Landroid/graphics/RectF;

    move-result-object v5

    .line 894
    iget-object v6, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v6, v6, v4

    iget-object v6, v6, Lcom/metamoji/rb/handle_t;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v6, v7, v5}, Lcom/metamoji/df/sprite/Graphics;->drawImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public action()Lcom/metamoji/rb/RbRubberBandAction;
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_action:Lcom/metamoji/rb/RbRubberBandAction;

    return-object v0
.end method

.method public angle()F
    .locals 1

    .line 298
    iget v0, p0, Lcom/metamoji/rb/RbRubberBand;->_angle:F

    return v0
.end method

.method public baseBounds()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    return-object v0
.end method

.method public bounds()Lcom/metamoji/cm/RectEx;
    .locals 10

    .line 464
    invoke-virtual {p0}, Lcom/metamoji/rb/RbRubberBand;->visible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 465
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    return-object v0

    .line 468
    :cond_0
    iget v0, p0, Lcom/metamoji/rb/RbRubberBand;->_scale:F

    iget v2, p0, Lcom/metamoji/rb/RbRubberBand;->_framePadding:F

    iget-object v3, p0, Lcom/metamoji/rb/RbRubberBand;->_frameStyle:Lcom/metamoji/rb/RbPathStyle;

    invoke-virtual {v3}, Lcom/metamoji/rb/RbPathStyle;->lineWidth()F

    move-result v3

    add-float/2addr v2, v3

    mul-float/2addr v0, v2

    .line 469
    invoke-virtual {p0}, Lcom/metamoji/rb/RbRubberBand;->contentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v2

    neg-float v0, v0

    invoke-static {v2, v0, v0}, Lcom/metamoji/rb/RbRubberBand;->rect_inset(Lcom/metamoji/cm/RectEx;FF)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    .line 470
    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_e1:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_e1:Landroid/graphics/PointF;

    iget v4, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_e2:Landroid/graphics/PointF;

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_e2:Landroid/graphics/PointF;

    iget v6, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_e1:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v2, v7, v2

    iget-object v8, p0, Lcom/metamoji/rb/RbRubberBand;->_center:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v8

    iget-object v8, p0, Lcom/metamoji/rb/RbRubberBand;->_e2:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    sub-float v8, v1, v8

    iget-object v9, p0, Lcom/metamoji/rb/RbRubberBand;->_center:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    mul-float/2addr v8, v9

    add-float/2addr v2, v8

    iget-object v8, p0, Lcom/metamoji/rb/RbRubberBand;->_e1:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v8

    iget-object v8, p0, Lcom/metamoji/rb/RbRubberBand;->_center:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v8

    iget-object v8, p0, Lcom/metamoji/rb/RbRubberBand;->_e2:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/metamoji/rb/RbRubberBand;->_center:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    mul-float/2addr v7, v8

    add-float v8, v1, v7

    move v7, v2

    invoke-static/range {v3 .. v8}, Lcom/metamoji/rb/RbRubberBand;->newMatrix(FFFFFF)Landroid/graphics/Matrix;

    move-result-object v1

    .line 476
    invoke-static {v0, v1}, Lcom/metamoji/rb/RbRubberBand;->transformBounds(Lcom/metamoji/cm/RectEx;Landroid/graphics/Matrix;)Lcom/metamoji/cm/RectEx;

    .line 478
    iget v1, p0, Lcom/metamoji/rb/RbRubberBand;->_currentHandleVisibility:I

    sget-object v2, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_ALL:Lcom/metamoji/rb/RbConstants$Activity;

    invoke-virtual {v2}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v2

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    return-object v0

    .line 481
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/rb/RbRubberBand;->updateHandles()V

    .line 483
    iget v1, v0, Lcom/metamoji/cm/RectEx;->x:F

    iget v2, v0, Lcom/metamoji/cm/RectEx;->width:F

    add-float/2addr v2, v1

    .line 484
    iget v3, v0, Lcom/metamoji/cm/RectEx;->y:F

    iget v0, v0, Lcom/metamoji/cm/RectEx;->height:F

    add-float/2addr v0, v3

    const/4 v4, 0x0

    .line 485
    :goto_0
    sget v5, Lcom/metamoji/rb/RbRubberBand;->HANDLE_COUNT:I

    if-ge v4, v5, :cond_3

    .line 486
    iget-object v5, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v5, v5, v4

    .line 487
    iget v6, p0, Lcom/metamoji/rb/RbRubberBand;->_currentHandleVisibility:I

    iget-object v7, v5, Lcom/metamoji/rb/handle_t;->type:Lcom/metamoji/rb/RbConstants$Activity;

    invoke-virtual {v7}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v7

    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    .line 488
    iget v6, p0, Lcom/metamoji/rb/RbRubberBand;->_scale:F

    iget v7, v5, Lcom/metamoji/rb/handle_t;->radius:F

    mul-float/2addr v6, v7

    .line 489
    iget-object v7, v5, Lcom/metamoji/rb/handle_t;->center:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v6

    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 490
    iget-object v7, v5, Lcom/metamoji/rb/handle_t;->center:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v6

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 491
    iget-object v7, v5, Lcom/metamoji/rb/handle_t;->center:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v6

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 492
    iget-object v5, v5, Lcom/metamoji/rb/handle_t;->center:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v6

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 495
    :cond_3
    new-instance v4, Lcom/metamoji/cm/RectEx;

    sub-float/2addr v2, v1

    sub-float/2addr v0, v3

    invoke-direct {v4, v1, v3, v2, v0}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    return-object v4
.end method

.method public contentBounds()Lcom/metamoji/cm/RectEx;
    .locals 5

    .line 319
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->x:F

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_outset:Lcom/metamoji/rb/Insets;

    iget v1, v1, Lcom/metamoji/rb/Insets;->left:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget v1, v1, Lcom/metamoji/cm/RectEx;->y:F

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_outset:Lcom/metamoji/rb/Insets;

    iget v2, v2, Lcom/metamoji/rb/Insets;->top:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget v2, v2, Lcom/metamoji/cm/RectEx;->width:F

    iget-object v3, p0, Lcom/metamoji/rb/RbRubberBand;->_outset:Lcom/metamoji/rb/Insets;

    iget v3, v3, Lcom/metamoji/rb/Insets;->left:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/metamoji/rb/RbRubberBand;->_outset:Lcom/metamoji/rb/Insets;

    iget v3, v3, Lcom/metamoji/rb/Insets;->right:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget v3, v3, Lcom/metamoji/cm/RectEx;->height:F

    iget-object v4, p0, Lcom/metamoji/rb/RbRubberBand;->_outset:Lcom/metamoji/rb/Insets;

    iget v4, v4, Lcom/metamoji/rb/Insets;->top:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/metamoji/rb/RbRubberBand;->_outset:Lcom/metamoji/rb/Insets;

    iget v4, v4, Lcom/metamoji/rb/Insets;->bottom:F

    add-float/2addr v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/rb/RbRubberBand;->CGRectStandardize(FFFF)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0
.end method

.method public displayBounds()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_displayBounds:Lcom/metamoji/cm/RectEx;

    return-object v0
.end method

.method public frameStyle()Lcom/metamoji/rb/RbPathStyle;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_frameStyle:Lcom/metamoji/rb/RbPathStyle;

    return-object v0
.end method

.method public getCenterOf(Lcom/metamoji/rb/RbConstants$Activity;)Landroid/graphics/PointF;
    .locals 2

    .line 566
    sget-object v0, Lcom/metamoji/rb/RbConstants$Activity;->NONE:Lcom/metamoji/rb/RbConstants$Activity;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return-object v1

    .line 569
    :cond_0
    sget-object v0, Lcom/metamoji/rb/RbConstants$Activity;->BODY:Lcom/metamoji/rb/RbConstants$Activity;

    if-ne p1, v0, :cond_1

    .line 570
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_center:Landroid/graphics/PointF;

    return-object p1

    .line 573
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result p1

    invoke-static {p1}, Lcom/metamoji/rb/RbRubberBand;->bit_position(I)I

    move-result p1

    if-lez p1, :cond_2

    .line 574
    sget v0, Lcom/metamoji/rb/RbRubberBand;->HANDLE_COUNT:I

    if-gt p1, v0, :cond_2

    .line 575
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/metamoji/rb/handle_t;->center:Landroid/graphics/PointF;

    return-object p1

    :cond_2
    return-object v1
.end method

.method public getSizeOf(Lcom/metamoji/rb/RbConstants$Activity;)Lcom/metamoji/cm/SizeF;
    .locals 3

    .line 588
    sget-object v0, Lcom/metamoji/rb/RbConstants$Activity;->NONE:Lcom/metamoji/rb/RbConstants$Activity;

    if-ne p1, v0, :cond_0

    .line 589
    new-instance p1, Lcom/metamoji/cm/SizeF;

    invoke-direct {p1}, Lcom/metamoji/cm/SizeF;-><init>()V

    return-object p1

    .line 591
    :cond_0
    sget-object v0, Lcom/metamoji/rb/RbConstants$Activity;->BODY:Lcom/metamoji/rb/RbConstants$Activity;

    const/high16 v1, 0x40000000    # 2.0f

    if-ne p1, v0, :cond_1

    .line 592
    iget p1, p0, Lcom/metamoji/rb/RbRubberBand;->_scale:F

    mul-float/2addr p1, v1

    iget v0, p0, Lcom/metamoji/rb/RbRubberBand;->_framePadding:F

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_frameStyle:Lcom/metamoji/rb/RbPathStyle;

    invoke-virtual {v1}, Lcom/metamoji/rb/RbPathStyle;->lineWidth()F

    move-result v1

    add-float/2addr v0, v1

    mul-float/2addr p1, v0

    .line 593
    new-instance v0, Lcom/metamoji/cm/SizeF;

    invoke-virtual {p0}, Lcom/metamoji/rb/RbRubberBand;->contentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    iget v1, v1, Lcom/metamoji/cm/RectEx;->width:F

    add-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/metamoji/rb/RbRubberBand;->contentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/cm/RectEx;->height:F

    add-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    return-object v0

    .line 596
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result p1

    invoke-static {p1}, Lcom/metamoji/rb/RbRubberBand;->bit_position(I)I

    move-result p1

    if-lez p1, :cond_2

    .line 597
    sget v0, Lcom/metamoji/rb/RbRubberBand;->HANDLE_COUNT:I

    if-gt p1, v0, :cond_2

    .line 598
    iget v0, p0, Lcom/metamoji/rb/RbRubberBand;->_scale:F

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v2, p1

    iget p1, p1, Lcom/metamoji/rb/handle_t;->radius:F

    mul-float/2addr p1, v1

    mul-float/2addr v0, p1

    .line 599
    new-instance p1, Lcom/metamoji/cm/SizeF;

    invoke-direct {p1, v0, v0}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    return-object p1

    .line 602
    :cond_2
    new-instance p1, Lcom/metamoji/cm/SizeF;

    invoke-direct {p1}, Lcom/metamoji/cm/SizeF;-><init>()V

    return-object p1
.end method

.method public handleStyle()Lcom/metamoji/rb/RbHandleStyle;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_handleStyle:Lcom/metamoji/rb/RbHandleStyle;

    return-object v0
.end method

.method public handleVisibility()I
    .locals 1

    .line 371
    iget v0, p0, Lcom/metamoji/rb/RbRubberBand;->_handleVisibility:I

    return v0
.end method

.method public hideFrame()Z
    .locals 1

    .line 392
    iget-boolean v0, p0, Lcom/metamoji/rb/RbRubberBand;->_hideFrame:Z

    return v0
.end method

.method public hideInteractiveHandles()Z
    .locals 1

    .line 380
    iget-boolean v0, p0, Lcom/metamoji/rb/RbRubberBand;->_hideInactiveHandles:Z

    return v0
.end method

.method public hitTest(Landroid/graphics/PointF;)Lcom/metamoji/rb/RbConstants$Activity;
    .locals 8

    .line 508
    iget v0, p0, Lcom/metamoji/rb/RbRubberBand;->_currentHandleVisibility:I

    sget-object v1, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_ALL:Lcom/metamoji/rb/RbConstants$Activity;

    invoke-virtual {v1}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 509
    invoke-direct {p0}, Lcom/metamoji/rb/RbRubberBand;->updateHandles()V

    .line 511
    sget v0, Lcom/metamoji/rb/RbRubberBand;->HANDLE_COUNT:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 512
    iget v1, p0, Lcom/metamoji/rb/RbRubberBand;->_currentHandleVisibility:I

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/metamoji/rb/handle_t;->type:Lcom/metamoji/rb/RbConstants$Activity;

    invoke-virtual {v2}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 514
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/metamoji/rb/handle_t;->center:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    .line 515
    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/metamoji/rb/handle_t;->center:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    .line 516
    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/metamoji/rb/handle_t;->hitRadius2:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 517
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object p1, p1, v0

    iget-object p1, p1, Lcom/metamoji/rb/handle_t;->type:Lcom/metamoji/rb/RbConstants$Activity;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 523
    :cond_1
    iget v0, p0, Lcom/metamoji/rb/RbRubberBand;->_scale:F

    iget v1, p0, Lcom/metamoji/rb/RbRubberBand;->_framePadding:F

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_frameStyle:Lcom/metamoji/rb/RbPathStyle;

    invoke-virtual {v2}, Lcom/metamoji/rb/RbPathStyle;->lineWidth()F

    move-result v2

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 524
    invoke-virtual {p0}, Lcom/metamoji/rb/RbRubberBand;->contentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    neg-float v0, v0

    invoke-static {v1, v0, v0}, Lcom/metamoji/rb/RbRubberBand;->rect_inset(Lcom/metamoji/cm/RectEx;FF)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    .line 526
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 528
    iget v2, p0, Lcom/metamoji/rb/RbRubberBand;->_angle:F

    const/4 v3, 0x0

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_3

    .line 530
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_center:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget v6, p1, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcom/metamoji/rb/RbRubberBand;->_center:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 533
    new-instance v4, Landroid/graphics/PointF;

    iget v5, p1, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/metamoji/rb/RbRubberBand;->_center:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/metamoji/rb/RbRubberBand;->_center:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v6

    invoke-direct {v4, v5, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 537
    iget p1, v4, Landroid/graphics/PointF;->x:F

    cmpl-float p1, v3, p1

    if-eqz p1, :cond_2

    .line 538
    iget p1, v4, Landroid/graphics/PointF;->y:F

    iget v3, v4, Landroid/graphics/PointF;->x:F

    div-float/2addr p1, v3

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    goto :goto_1

    :cond_2
    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 542
    :goto_1
    iget p1, p0, Lcom/metamoji/rb/RbRubberBand;->_angle:F

    float-to-double v5, p1

    sub-double/2addr v3, v5

    .line 545
    new-instance p1, Landroid/graphics/PointF;

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v1

    double-to-float v5, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-float v1, v1

    invoke-direct {p1, v5, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 548
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_center:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 549
    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_center:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/PointF;->y:F

    move-object v1, p1

    .line 552
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/cm/RectEx;->getRectF()Landroid/graphics/RectF;

    move-result-object p1

    iget v0, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 554
    sget-object p1, Lcom/metamoji/rb/RbConstants$Activity;->BODY:Lcom/metamoji/rb/RbConstants$Activity;

    return-object p1

    .line 556
    :cond_4
    sget-object p1, Lcom/metamoji/rb/RbConstants$Activity;->NONE:Lcom/metamoji/rb/RbConstants$Activity;

    return-object p1
.end method

.method public invertible()Z
    .locals 1

    .line 450
    iget-boolean v0, p0, Lcom/metamoji/rb/RbRubberBand;->_invertible:Z

    return v0
.end method

.method public keepAspectRatio()I
    .locals 1

    .line 400
    iget v0, p0, Lcom/metamoji/rb/RbRubberBand;->_keepAspectRatio:I

    return v0
.end method

.method public label()Ljava/lang/String;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_label:Ljava/lang/String;

    return-object v0
.end method

.method public maxScale()Landroid/graphics/PointF;
    .locals 4

    .line 442
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_maxScale:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_maxScale:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 443
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_maxSize:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->width:F

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget v2, v2, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_maxSize:Lcom/metamoji/cm/SizeF;

    iget v2, v2, Lcom/metamoji/cm/SizeF;->height:F

    iget-object v3, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget v3, v3, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_maxScale:Landroid/graphics/PointF;

    return-object v0
.end method

.method public maxSize()Lcom/metamoji/cm/SizeF;
    .locals 4

    .line 425
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_maxSize:Lcom/metamoji/cm/SizeF;

    invoke-virtual {v0}, Lcom/metamoji/cm/SizeF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/metamoji/cm/SizeF;

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_maxScale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget v2, v2, Lcom/metamoji/cm/RectEx;->width:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_maxScale:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget v3, v3, Lcom/metamoji/cm/RectEx;->height:F

    mul-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_maxSize:Lcom/metamoji/cm/SizeF;

    return-object v0
.end method

.method public minScale()Landroid/graphics/PointF;
    .locals 4

    .line 433
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_minScale:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_minScale:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 434
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_minSize:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->width:F

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget v2, v2, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_minSize:Lcom/metamoji/cm/SizeF;

    iget v2, v2, Lcom/metamoji/cm/SizeF;->height:F

    iget-object v3, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget v3, v3, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_minScale:Landroid/graphics/PointF;

    return-object v0
.end method

.method public minSize()Lcom/metamoji/cm/SizeF;
    .locals 4

    .line 417
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_minSize:Lcom/metamoji/cm/SizeF;

    invoke-virtual {v0}, Lcom/metamoji/cm/SizeF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/metamoji/cm/SizeF;

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_minScale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget v2, v2, Lcom/metamoji/cm/RectEx;->width:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_minScale:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget v3, v3, Lcom/metamoji/cm/RectEx;->height:F

    mul-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_minSize:Lcom/metamoji/cm/SizeF;

    return-object v0
.end method

.method public rotationStep()I
    .locals 1

    .line 396
    iget v0, p0, Lcom/metamoji/rb/RbRubberBand;->_rotationStep:I

    return v0
.end method

.method public setAngle(F)V
    .locals 5

    .line 300
    iput p1, p0, Lcom/metamoji/rb/RbRubberBand;->_angle:F

    .line 301
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_e1:Landroid/graphics/PointF;

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float p1, v3

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 302
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_e1:Landroid/graphics/PointF;

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 303
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_e2:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_e1:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    neg-float v0, v0

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 304
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_e2:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_e1:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 306
    invoke-direct {p0}, Lcom/metamoji/rb/RbRubberBand;->updateSprite()V

    return-void
.end method

.method public setBaseBounds(Lcom/metamoji/cm/RectEx;)V
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 290
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_outset:Lcom/metamoji/rb/Insets;

    invoke-virtual {p1}, Lcom/metamoji/rb/Insets;->reset()V

    .line 291
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_center:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->x:F

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget v1, v1, Lcom/metamoji/cm/RectEx;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 292
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_center:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->y:F

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget v1, v1, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 294
    invoke-direct {p0}, Lcom/metamoji/rb/RbRubberBand;->updateSprite()V

    return-void
.end method

.method public setContentBounds(Lcom/metamoji/cm/RectEx;)V
    .locals 3

    .line 326
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_outset:Lcom/metamoji/rb/Insets;

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget v1, v1, Lcom/metamoji/cm/RectEx;->x:F

    iget v2, p1, Lcom/metamoji/cm/RectEx;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/metamoji/rb/Insets;->left:F

    .line 327
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_outset:Lcom/metamoji/rb/Insets;

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget v1, v1, Lcom/metamoji/cm/RectEx;->y:F

    iget v2, p1, Lcom/metamoji/cm/RectEx;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/metamoji/rb/Insets;->top:F

    .line 328
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_outset:Lcom/metamoji/rb/Insets;

    iget v1, p1, Lcom/metamoji/cm/RectEx;->width:F

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget v2, v2, Lcom/metamoji/cm/RectEx;->width:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_outset:Lcom/metamoji/rb/Insets;

    iget v2, v2, Lcom/metamoji/rb/Insets;->left:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/metamoji/rb/Insets;->right:F

    .line 329
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_outset:Lcom/metamoji/rb/Insets;

    iget p1, p1, Lcom/metamoji/cm/RectEx;->height:F

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget v1, v1, Lcom/metamoji/cm/RectEx;->height:F

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_outset:Lcom/metamoji/rb/Insets;

    iget v1, v1, Lcom/metamoji/rb/Insets;->top:F

    sub-float/2addr p1, v1

    iput p1, v0, Lcom/metamoji/rb/Insets;->bottom:F

    .line 331
    invoke-direct {p0}, Lcom/metamoji/rb/RbRubberBand;->updateSprite()V

    return-void
.end method

.method public setDisplayBounds(Lcom/metamoji/cm/RectEx;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_displayBounds:Lcom/metamoji/cm/RectEx;

    return-void
.end method

.method public setFrameStyle(Lcom/metamoji/rb/RbPathStyle;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_frameStyle:Lcom/metamoji/rb/RbPathStyle;

    .line 347
    invoke-direct {p0}, Lcom/metamoji/rb/RbRubberBand;->updateSprite()V

    return-void
.end method

.method public setHandleMargin(F)V
    .locals 2

    const/4 v0, 0x0

    .line 281
    :goto_0
    sget v1, Lcom/metamoji/rb/RbRubberBand;->HANDLE_COUNT:I

    if-ge v0, v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v1, v1, v0

    iput p1, v1, Lcom/metamoji/rb/handle_t;->margin:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setHandleStyle(Lcom/metamoji/rb/RbHandleStyle;)V
    .locals 7

    .line 353
    iput-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_handleStyle:Lcom/metamoji/rb/RbHandleStyle;

    .line 354
    invoke-virtual {p1}, Lcom/metamoji/rb/RbHandleStyle;->images()[Landroid/graphics/Bitmap;

    move-result-object p1

    .line 355
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_handleStyle:Lcom/metamoji/rb/RbHandleStyle;

    invoke-virtual {v0}, Lcom/metamoji/rb/RbHandleStyle;->center()[Landroid/graphics/PointF;

    move-result-object v0

    const/4 v1, 0x0

    .line 356
    :goto_0
    sget v2, Lcom/metamoji/rb/RbRubberBand;->HANDLE_COUNT:I

    if-ge v1, v2, :cond_1

    .line 357
    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/metamoji/rb/handle_t;->type:Lcom/metamoji/rb/RbConstants$Activity;

    invoke-virtual {v2}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v2

    invoke-static {v2}, Lcom/metamoji/rb/RbRubberBand;->bit_position(I)I

    move-result v2

    .line 358
    aget-object v3, p1, v2

    .line 359
    aget-object v4, v0, v2

    .line 360
    iget-object v5, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v5, v5, v1

    iput-object v3, v5, Lcom/metamoji/rb/handle_t;->image:Landroid/graphics/Bitmap;

    .line 361
    iget-object v3, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v3, v3, v1

    if-eqz v4, :cond_0

    new-instance v5, Landroid/graphics/PointF;

    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {v5, v6, v4}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    iput-object v5, v3, Lcom/metamoji/rb/handle_t;->pivot:Landroid/graphics/PointF;

    .line 362
    iget-object v3, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/metamoji/rb/RbRubberBand;->_handleStyle:Lcom/metamoji/rb/RbHandleStyle;

    invoke-virtual {v4}, Lcom/metamoji/rb/RbHandleStyle;->radius()[F

    move-result-object v4

    aget v2, v4, v2

    iput v2, v3, Lcom/metamoji/rb/handle_t;->radius:F

    .line 363
    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/metamoji/rb/handle_t;->radius:F

    iget-object v3, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/metamoji/rb/handle_t;->margin:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/metamoji/rb/RbRubberBand;->_scale:F

    mul-float/2addr v2, v3

    .line 364
    iget-object v3, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    aget-object v3, v3, v1

    mul-float/2addr v2, v2

    iput v2, v3, Lcom/metamoji/rb/handle_t;->hitRadius2:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/rb/RbRubberBand;->updateSprite()V

    return-void
.end method

.method public setHandleVisibility(I)V
    .locals 0

    .line 373
    iput p1, p0, Lcom/metamoji/rb/RbRubberBand;->_handleVisibility:I

    .line 374
    iput p1, p0, Lcom/metamoji/rb/RbRubberBand;->_currentHandleVisibility:I

    .line 376
    invoke-direct {p0}, Lcom/metamoji/rb/RbRubberBand;->updateSprite()V

    return-void
.end method

.method public setHideFrame(Z)V
    .locals 0

    .line 393
    iput-boolean p1, p0, Lcom/metamoji/rb/RbRubberBand;->_hideFrame:Z

    return-void
.end method

.method public setHideInteractiveHandles(Z)V
    .locals 1

    .line 382
    iget-boolean v0, p0, Lcom/metamoji/rb/RbRubberBand;->_hideInactiveHandles:Z

    if-ne v0, p1, :cond_0

    goto :goto_1

    .line 385
    :cond_0
    iput-boolean p1, p0, Lcom/metamoji/rb/RbRubberBand;->_hideInactiveHandles:Z

    .line 386
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_action:Lcom/metamoji/rb/RbRubberBandAction;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 387
    invoke-virtual {v0}, Lcom/metamoji/rb/RbRubberBandAction;->activity()Lcom/metamoji/rb/RbConstants$Activity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result p1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/metamoji/rb/RbRubberBand;->_handleVisibility:I

    :goto_0
    iput p1, p0, Lcom/metamoji/rb/RbRubberBand;->_currentHandleVisibility:I

    :cond_2
    :goto_1
    return-void
.end method

.method public setInvertible(Z)V
    .locals 0

    .line 451
    iput-boolean p1, p0, Lcom/metamoji/rb/RbRubberBand;->_invertible:Z

    return-void
.end method

.method public setKeepAspectRatio(I)V
    .locals 0

    .line 401
    iput p1, p0, Lcom/metamoji/rb/RbRubberBand;->_keepAspectRatio:I

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_label:Ljava/lang/String;

    return-void
.end method

.method public setMaxScale(Landroid/graphics/PointF;)V
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_maxScale:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 447
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_maxSize:Lcom/metamoji/cm/SizeF;

    const/4 v0, 0x0

    iput v0, p1, Lcom/metamoji/cm/SizeF;->height:F

    iput v0, p1, Lcom/metamoji/cm/SizeF;->width:F

    return-void
.end method

.method public setMaxSize(Lcom/metamoji/cm/SizeF;)V
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_maxSize:Lcom/metamoji/cm/SizeF;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/SizeF;->set(Lcom/metamoji/cm/SizeF;)V

    .line 429
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_maxScale:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    iput v0, p1, Landroid/graphics/PointF;->x:F

    return-void
.end method

.method public setMinScale(Landroid/graphics/PointF;)V
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_minScale:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 438
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_minSize:Lcom/metamoji/cm/SizeF;

    const/4 v0, 0x0

    iput v0, p1, Lcom/metamoji/cm/SizeF;->height:F

    iput v0, p1, Lcom/metamoji/cm/SizeF;->width:F

    return-void
.end method

.method public setMinSize(Lcom/metamoji/cm/SizeF;)V
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_minSize:Lcom/metamoji/cm/SizeF;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/SizeF;->set(Lcom/metamoji/cm/SizeF;)V

    .line 421
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_minScale:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    iput v0, p1, Landroid/graphics/PointF;->x:F

    return-void
.end method

.method public setRotationStep(I)V
    .locals 0

    .line 397
    iput p1, p0, Lcom/metamoji/rb/RbRubberBand;->_rotationStep:I

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->setVisible(Z)V

    .line 339
    invoke-direct {p0}, Lcom/metamoji/rb/RbRubberBand;->updateSprite()V

    return-void
.end method

.method public setZoom(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    .line 312
    iput v0, p0, Lcom/metamoji/rb/RbRubberBand;->_scale:F

    .line 314
    invoke-direct {p0}, Lcom/metamoji/rb/RbRubberBand;->updateSprite()V

    return-void
.end method

.method public sprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    return-object v0
.end method

.method public touchCancel()V
    .locals 2

    .line 812
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_action:Lcom/metamoji/rb/RbRubberBandAction;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 815
    iput-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_action:Lcom/metamoji/rb/RbRubberBandAction;

    .line 816
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_start:Lcom/metamoji/rb/_TouchStartInfo;

    iget-object v1, v1, Lcom/metamoji/rb/_TouchStartInfo;->rect:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 817
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_outset:Lcom/metamoji/rb/Insets;

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_start:Lcom/metamoji/rb/_TouchStartInfo;

    iget-object v1, v1, Lcom/metamoji/rb/_TouchStartInfo;->outset:Lcom/metamoji/rb/Insets;

    invoke-virtual {v0, v1}, Lcom/metamoji/rb/Insets;->set(Lcom/metamoji/rb/Insets;)V

    .line 818
    iget v0, p0, Lcom/metamoji/rb/RbRubberBand;->_handleVisibility:I

    iput v0, p0, Lcom/metamoji/rb/RbRubberBand;->_currentHandleVisibility:I

    .line 819
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_start:Lcom/metamoji/rb/_TouchStartInfo;

    iget v0, v0, Lcom/metamoji/rb/_TouchStartInfo;->angle:F

    invoke-virtual {p0, v0}, Lcom/metamoji/rb/RbRubberBand;->setAngle(F)V

    return-void
.end method

.method public touchEnd(Landroid/graphics/PointF;)Lcom/metamoji/rb/RbRubberBandAction;
    .locals 2

    .line 796
    const-string v0, "[RB]touchEnd"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 798
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_action:Lcom/metamoji/rb/RbRubberBandAction;

    if-eqz v0, :cond_0

    .line 803
    invoke-virtual {p0, p1}, Lcom/metamoji/rb/RbRubberBand;->touchMove(Landroid/graphics/PointF;)Lcom/metamoji/rb/RbRubberBandAction;

    .line 804
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_action:Lcom/metamoji/rb/RbRubberBandAction;

    const/4 v0, 0x0

    .line 805
    iput-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_action:Lcom/metamoji/rb/RbRubberBandAction;

    .line 807
    iget v0, p0, Lcom/metamoji/rb/RbRubberBand;->_handleVisibility:I

    iput v0, p0, Lcom/metamoji/rb/RbRubberBand;->_currentHandleVisibility:I

    return-object p1

    .line 799
    :cond_0
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string v0, "RB004"

    const-string v1, "- [touchStart:] must be called first"

    invoke-direct {p1, v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public touchMove(Landroid/graphics/PointF;)Lcom/metamoji/rb/RbRubberBandAction;
    .locals 8

    .line 716
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_action:Lcom/metamoji/rb/RbRubberBandAction;

    if-eqz v0, :cond_7

    .line 720
    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_actionType:Lcom/metamoji/rb/RbConstants$ActionType;

    invoke-virtual {v0, v1}, Lcom/metamoji/rb/RbRubberBandAction;->setType(Lcom/metamoji/rb/RbConstants$ActionType;)V

    .line 723
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_start:Lcom/metamoji/rb/_TouchStartInfo;

    iget v2, v2, Lcom/metamoji/rb/_TouchStartInfo;->x:F

    sub-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/metamoji/rb/RbRubberBand;->_start:Lcom/metamoji/rb/_TouchStartInfo;

    iget v3, v3, Lcom/metamoji/rb/_TouchStartInfo;->y:F

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 725
    sget-object v1, Lcom/metamoji/rb/RbRubberBand$1;->$SwitchMap$com$metamoji$rb$RbConstants$ActionType:[I

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_actionType:Lcom/metamoji/rb/RbConstants$ActionType;

    invoke-virtual {v2}, Lcom/metamoji/rb/RbConstants$ActionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v0, 0x3

    if-ne v1, v0, :cond_1

    .line 776
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_center:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_center:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v2

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p1, v0

    .line 777
    iget v0, p0, Lcom/metamoji/rb/RbRubberBand;->_initialAngle:F

    sub-float/2addr p1, v0

    .line 778
    iget v0, p0, Lcom/metamoji/rb/RbRubberBand;->_rotationStepRadian:F

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 779
    iget v0, p0, Lcom/metamoji/rb/RbRubberBand;->_rotationStepNumber:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_action:Lcom/metamoji/rb/RbRubberBandAction;

    int-to-float v1, p1

    iget v2, p0, Lcom/metamoji/rb/RbRubberBand;->_rotationStepRadian:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/metamoji/rb/RbRubberBandAction;->setDa(F)V

    .line 783
    iput p1, p0, Lcom/metamoji/rb/RbRubberBand;->_rotationStepNumber:I

    .line 784
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_start:Lcom/metamoji/rb/_TouchStartInfo;

    iget p1, p1, Lcom/metamoji/rb/_TouchStartInfo;->angle:F

    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_action:Lcom/metamoji/rb/RbRubberBandAction;

    invoke-virtual {v0}, Lcom/metamoji/rb/RbRubberBandAction;->da()F

    move-result v0

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/metamoji/rb/RbRubberBand;->setAngle(F)V

    goto/16 :goto_3

    .line 787
    :cond_1
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string v0, "RB003"

    const-string v1, "invalid activity"

    invoke-direct {p1, v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 737
    :cond_2
    new-instance p1, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_e1:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_e1:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_e2:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v4

    iget-object v4, p0, Lcom/metamoji/rb/RbRubberBand;->_e2:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v0

    add-float/2addr v2, v4

    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 739
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_start:Lcom/metamoji/rb/_TouchStartInfo;

    iget-object v0, v0, Lcom/metamoji/rb/_TouchStartInfo;->minScale:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_start:Lcom/metamoji/rb/_TouchStartInfo;

    iget-object v1, v1, Lcom/metamoji/rb/_TouchStartInfo;->maxScale:Landroid/graphics/PointF;

    .line 740
    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_start:Lcom/metamoji/rb/_TouchStartInfo;

    iget-boolean v2, v2, Lcom/metamoji/rb/_TouchStartInfo;->keepAspectRatio:Z

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v2, :cond_5

    .line 742
    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_direction:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-nez v2, :cond_3

    .line 743
    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/metamoji/rb/RbRubberBand;->_normalize:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    :goto_0
    mul-float/2addr v2, v5

    goto :goto_1

    .line 744
    :cond_3
    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_direction:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_4

    .line 745
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/metamoji/rb/RbRubberBand;->_normalize:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    goto :goto_0

    .line 748
    :cond_4
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/metamoji/rb/RbRubberBand;->_normalize:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v5

    iget v5, p1, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/metamoji/rb/RbRubberBand;->_normalize:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :goto_1
    add-float/2addr v2, v4

    .line 751
    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/metamoji/rb/RbRubberBand;->invertible()Z

    move-result v5

    invoke-static {v2, v0, v1, v5}, Lcom/metamoji/rb/RbRubberBand;->limit_scale(FFFZ)F

    move-result v0

    sub-float/2addr v0, v4

    .line 752
    iput v0, p1, Landroid/graphics/PointF;->y:F

    iput v0, p1, Landroid/graphics/PointF;->x:F

    goto :goto_2

    .line 754
    :cond_5
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/metamoji/rb/RbRubberBand;->_normalize:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v5

    iput v2, p1, Landroid/graphics/PointF;->x:F

    .line 755
    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/metamoji/rb/RbRubberBand;->_normalize:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v5

    iput v2, p1, Landroid/graphics/PointF;->y:F

    .line 756
    iget v2, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v4

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/metamoji/rb/RbRubberBand;->invertible()Z

    move-result v7

    invoke-static {v2, v5, v6, v7}, Lcom/metamoji/rb/RbRubberBand;->limit_scale(FFFZ)F

    move-result v2

    sub-float/2addr v2, v4

    iput v2, p1, Landroid/graphics/PointF;->x:F

    .line 757
    iget v2, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/metamoji/rb/RbRubberBand;->invertible()Z

    move-result v5

    invoke-static {v2, v0, v1, v5}, Lcom/metamoji/rb/RbRubberBand;->limit_scale(FFFZ)F

    move-result v0

    sub-float/2addr v0, v4

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 760
    :goto_2
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_action:Lcom/metamoji/rb/RbRubberBandAction;

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_jacobian:Lcom/metamoji/rb/_Jacobian;

    iget v1, v1, Lcom/metamoji/rb/_Jacobian;->xx:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_jacobian:Lcom/metamoji/rb/_Jacobian;

    iget v2, v2, Lcom/metamoji/rb/_Jacobian;->xy:F

    iget v5, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/metamoji/rb/RbRubberBandAction;->setDx(F)V

    .line 761
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_action:Lcom/metamoji/rb/RbRubberBandAction;

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_jacobian:Lcom/metamoji/rb/_Jacobian;

    iget v1, v1, Lcom/metamoji/rb/_Jacobian;->yx:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_jacobian:Lcom/metamoji/rb/_Jacobian;

    iget v2, v2, Lcom/metamoji/rb/_Jacobian;->yy:F

    iget v5, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/metamoji/rb/RbRubberBandAction;->setDy(F)V

    .line 762
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_action:Lcom/metamoji/rb/RbRubberBandAction;

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_start:Lcom/metamoji/rb/_TouchStartInfo;

    iget-object v1, v1, Lcom/metamoji/rb/_TouchStartInfo;->rect:Lcom/metamoji/cm/RectEx;

    iget v1, v1, Lcom/metamoji/cm/RectEx;->width:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/metamoji/rb/RbRubberBandAction;->setDw(F)V

    .line 763
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_action:Lcom/metamoji/rb/RbRubberBandAction;

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_start:Lcom/metamoji/rb/_TouchStartInfo;

    iget-object v1, v1, Lcom/metamoji/rb/_TouchStartInfo;->rect:Lcom/metamoji/cm/RectEx;

    iget v1, v1, Lcom/metamoji/cm/RectEx;->height:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/metamoji/rb/RbRubberBandAction;->setDh(F)V

    .line 764
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_action:Lcom/metamoji/rb/RbRubberBandAction;

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v4

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, v4

    invoke-direct {v1, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/metamoji/rb/RbRubberBandAction;->setScale(Landroid/graphics/PointF;)V

    .line 766
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_start:Lcom/metamoji/rb/_TouchStartInfo;

    iget-object v0, v0, Lcom/metamoji/rb/_TouchStartInfo;->rect:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->x:F

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_action:Lcom/metamoji/rb/RbRubberBandAction;

    invoke-virtual {v1}, Lcom/metamoji/rb/RbRubberBandAction;->dx()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p1, Lcom/metamoji/cm/RectEx;->x:F

    .line 767
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_start:Lcom/metamoji/rb/_TouchStartInfo;

    iget-object v0, v0, Lcom/metamoji/rb/_TouchStartInfo;->rect:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->y:F

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_action:Lcom/metamoji/rb/RbRubberBandAction;

    invoke-virtual {v1}, Lcom/metamoji/rb/RbRubberBandAction;->dy()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p1, Lcom/metamoji/cm/RectEx;->y:F

    .line 768
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_start:Lcom/metamoji/rb/_TouchStartInfo;

    iget-object v0, v0, Lcom/metamoji/rb/_TouchStartInfo;->rect:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->width:F

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_action:Lcom/metamoji/rb/RbRubberBandAction;

    invoke-virtual {v1}, Lcom/metamoji/rb/RbRubberBandAction;->dw()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p1, Lcom/metamoji/cm/RectEx;->width:F

    .line 769
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_start:Lcom/metamoji/rb/_TouchStartInfo;

    iget-object v0, v0, Lcom/metamoji/rb/_TouchStartInfo;->rect:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->height:F

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_action:Lcom/metamoji/rb/RbRubberBandAction;

    invoke-virtual {v1}, Lcom/metamoji/rb/RbRubberBandAction;->dh()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p1, Lcom/metamoji/cm/RectEx;->height:F

    .line 770
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_center:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->x:F

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget v1, v1, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 771
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_center:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->y:F

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget v1, v1, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->y:F

    goto :goto_3

    .line 727
    :cond_6
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_action:Lcom/metamoji/rb/RbRubberBandAction;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v1}, Lcom/metamoji/rb/RbRubberBandAction;->setDx(F)V

    .line 728
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_action:Lcom/metamoji/rb/RbRubberBandAction;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1}, Lcom/metamoji/rb/RbRubberBandAction;->setDy(F)V

    .line 729
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_start:Lcom/metamoji/rb/_TouchStartInfo;

    iget-object v1, v1, Lcom/metamoji/rb/_TouchStartInfo;->rect:Lcom/metamoji/cm/RectEx;

    iget v1, v1, Lcom/metamoji/cm/RectEx;->x:F

    iget v2, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iput v1, p1, Lcom/metamoji/cm/RectEx;->x:F

    .line 730
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_start:Lcom/metamoji/rb/_TouchStartInfo;

    iget-object v1, v1, Lcom/metamoji/rb/_TouchStartInfo;->rect:Lcom/metamoji/cm/RectEx;

    iget v1, v1, Lcom/metamoji/cm/RectEx;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v0

    iput v1, p1, Lcom/metamoji/cm/RectEx;->y:F

    .line 731
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_center:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->x:F

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget v1, v1, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 732
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_center:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->y:F

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget v1, v1, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 790
    :goto_3
    invoke-direct {p0}, Lcom/metamoji/rb/RbRubberBand;->updateSprite()V

    .line 792
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_action:Lcom/metamoji/rb/RbRubberBandAction;

    return-object p1

    .line 717
    :cond_7
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string v0, "RB002"

    const-string v1, "-[touchStart:] must be called first"

    invoke-direct {p1, v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public touchStart(Landroid/graphics/PointF;)Lcom/metamoji/rb/RbRubberBandAction;
    .locals 12

    .line 612
    const-string v0, "[RB]touchStart"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p0, p1}, Lcom/metamoji/rb/RbRubberBand;->hitTest(Landroid/graphics/PointF;)Lcom/metamoji/rb/RbConstants$Activity;

    move-result-object v0

    .line 614
    sget-object v1, Lcom/metamoji/rb/RbConstants$Activity;->NONE:Lcom/metamoji/rb/RbConstants$Activity;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 618
    :cond_0
    new-instance v1, Lcom/metamoji/rb/RbRubberBandAction;

    invoke-direct {v1}, Lcom/metamoji/rb/RbRubberBandAction;-><init>()V

    iput-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_action:Lcom/metamoji/rb/RbRubberBandAction;

    .line 619
    sget-object v2, Lcom/metamoji/rb/RbConstants$ActionType;->REACTED:Lcom/metamoji/rb/RbConstants$ActionType;

    invoke-virtual {v1, v2}, Lcom/metamoji/rb/RbRubberBandAction;->setType(Lcom/metamoji/rb/RbConstants$ActionType;)V

    .line 620
    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_action:Lcom/metamoji/rb/RbRubberBandAction;

    invoke-virtual {v1, v0}, Lcom/metamoji/rb/RbRubberBandAction;->setActivity(Lcom/metamoji/rb/RbConstants$Activity;)V

    .line 621
    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_action:Lcom/metamoji/rb/RbRubberBandAction;

    new-instance v2, Landroid/graphics/PointF;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v2}, Lcom/metamoji/rb/RbRubberBandAction;->setScale(Landroid/graphics/PointF;)V

    .line 623
    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_start:Lcom/metamoji/rb/_TouchStartInfo;

    iget-object v1, v1, Lcom/metamoji/rb/_TouchStartInfo;->rect:Lcom/metamoji/cm/RectEx;

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 624
    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_start:Lcom/metamoji/rb/_TouchStartInfo;

    iget-object v1, v1, Lcom/metamoji/rb/_TouchStartInfo;->outset:Lcom/metamoji/rb/Insets;

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_outset:Lcom/metamoji/rb/Insets;

    invoke-virtual {v1, v2}, Lcom/metamoji/rb/Insets;->set(Lcom/metamoji/rb/Insets;)V

    .line 625
    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_start:Lcom/metamoji/rb/_TouchStartInfo;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iput v2, v1, Lcom/metamoji/rb/_TouchStartInfo;->x:F

    .line 626
    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_start:Lcom/metamoji/rb/_TouchStartInfo;

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iput v2, v1, Lcom/metamoji/rb/_TouchStartInfo;->y:F

    .line 628
    iget-boolean v1, p0, Lcom/metamoji/rb/RbRubberBand;->_hideInactiveHandles:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/metamoji/rb/RbRubberBand;->_handleVisibility:I

    :goto_0
    iput v1, p0, Lcom/metamoji/rb/RbRubberBand;->_currentHandleVisibility:I

    .line 632
    sget-object v1, Lcom/metamoji/rb/RbConstants$Activity;->BODY:Lcom/metamoji/rb/RbConstants$Activity;

    if-ne v0, v1, :cond_2

    .line 633
    sget-object p1, Lcom/metamoji/rb/RbConstants$ActionType;->MOVED:Lcom/metamoji/rb/RbConstants$ActionType;

    iput-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_actionType:Lcom/metamoji/rb/RbConstants$ActionType;

    .line 634
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_action:Lcom/metamoji/rb/RbRubberBandAction;

    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_center:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Lcom/metamoji/rb/RbRubberBandAction;->setCenter(Landroid/graphics/PointF;)V

    goto/16 :goto_4

    .line 635
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v1

    sget-object v2, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_TO_RESIZE_OR_SCALE:Lcom/metamoji/rb/RbConstants$Activity;

    invoke-virtual {v2}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v2

    and-int/2addr v1, v2

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 636
    sget-object p1, Lcom/metamoji/rb/RbConstants$ActionType;->RESIZED:Lcom/metamoji/rb/RbConstants$ActionType;

    iput-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_actionType:Lcom/metamoji/rb/RbConstants$ActionType;

    .line 639
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_activePoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_handle:[Lcom/metamoji/rb/handle_t;

    invoke-virtual {v0}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v4

    invoke-static {v4}, Lcom/metamoji/rb/RbRubberBand;->bit_position(I)I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget-object v1, v1, v4

    iget-object v1, v1, Lcom/metamoji/rb/handle_t;->relative:Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 641
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_fixedPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_activePoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    neg-float v1, v1

    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 642
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_fixedPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_activePoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    neg-float v1, v1

    iput v1, p1, Landroid/graphics/PointF;->y:F

    .line 644
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget p1, p1, Lcom/metamoji/cm/RectEx;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    iget-object v4, p0, Lcom/metamoji/rb/RbRubberBand;->_rect:Lcom/metamoji/cm/RectEx;

    iget v4, v4, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr v4, v1

    .line 645
    new-instance v1, Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/metamoji/rb/RbRubberBand;->_e1:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, p1

    iget-object v7, p0, Lcom/metamoji/rb/RbRubberBand;->_e1:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    mul-float/2addr v7, p1

    invoke-direct {v1, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 646
    new-instance v6, Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/metamoji/rb/RbRubberBand;->_e2:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    mul-float/2addr v7, v4

    iget-object v8, p0, Lcom/metamoji/rb/RbRubberBand;->_e2:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    mul-float/2addr v8, v4

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 647
    iget-object v7, p0, Lcom/metamoji/rb/RbRubberBand;->_action:Lcom/metamoji/rb/RbRubberBandAction;

    new-instance v8, Landroid/graphics/PointF;

    iget-object v9, p0, Lcom/metamoji/rb/RbRubberBand;->_center:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    iget-object v10, p0, Lcom/metamoji/rb/RbRubberBand;->_fixedPoint:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    iget v11, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/metamoji/rb/RbRubberBand;->_fixedPoint:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    iget v11, v6, Landroid/graphics/PointF;->x:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/metamoji/rb/RbRubberBand;->_center:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    iget-object v11, p0, Lcom/metamoji/rb/RbRubberBand;->_fixedPoint:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v11, v1

    add-float/2addr v10, v11

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_fixedPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v6

    add-float/2addr v10, v1

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v7, v8}, Lcom/metamoji/rb/RbRubberBandAction;->setCenter(Landroid/graphics/PointF;)V

    .line 652
    invoke-virtual {v0}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v1

    sget-object v6, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_LEFT_RIGHT:Lcom/metamoji/rb/RbConstants$Activity;

    invoke-virtual {v6}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v6

    and-int/2addr v1, v6

    if-eqz v1, :cond_3

    .line 653
    iput-boolean v5, p0, Lcom/metamoji/rb/RbRubberBand;->_resizingX:Z

    .line 654
    iput-boolean v2, p0, Lcom/metamoji/rb/RbRubberBand;->_resizingY:Z

    goto :goto_1

    .line 655
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v1

    sget-object v6, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_TOP_BOTTOM:Lcom/metamoji/rb/RbConstants$Activity;

    invoke-virtual {v6}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v6

    and-int/2addr v1, v6

    if-eqz v1, :cond_4

    .line 656
    iput-boolean v2, p0, Lcom/metamoji/rb/RbRubberBand;->_resizingX:Z

    .line 657
    iput-boolean v5, p0, Lcom/metamoji/rb/RbRubberBand;->_resizingY:Z

    goto :goto_1

    .line 659
    :cond_4
    iput-boolean v5, p0, Lcom/metamoji/rb/RbRubberBand;->_resizingY:Z

    iput-boolean v5, p0, Lcom/metamoji/rb/RbRubberBand;->_resizingX:Z

    .line 661
    :goto_1
    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_start:Lcom/metamoji/rb/_TouchStartInfo;

    .line 662
    invoke-virtual {v0}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v6

    sget-object v7, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_TO_SCALE:Lcom/metamoji/rb/RbConstants$Activity;

    invoke-virtual {v7}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v7

    and-int/2addr v6, v7

    if-nez v6, :cond_5

    .line 663
    invoke-virtual {v0}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/rb/RbRubberBand;->keepAspectRatio()I

    move-result v6

    and-int/2addr v0, v6

    if-eqz v0, :cond_6

    :cond_5
    move v2, v5

    :cond_6
    iput-boolean v2, v1, Lcom/metamoji/rb/_TouchStartInfo;->keepAspectRatio:Z

    .line 666
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_fixedPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    neg-float v1, v1

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_fixedPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    neg-float v2, v2

    mul-float/2addr v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 667
    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_jacobian:Lcom/metamoji/rb/_Jacobian;

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_e1:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v5

    sub-float/2addr v2, p1

    iput v2, v1, Lcom/metamoji/rb/_Jacobian;->xx:F

    .line 668
    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_jacobian:Lcom/metamoji/rb/_Jacobian;

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_e2:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v5

    iput v2, v1, Lcom/metamoji/rb/_Jacobian;->xy:F

    .line 669
    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_jacobian:Lcom/metamoji/rb/_Jacobian;

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_e1:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v5, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v5

    iput v2, v1, Lcom/metamoji/rb/_Jacobian;->yx:F

    .line 670
    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_jacobian:Lcom/metamoji/rb/_Jacobian;

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_e2:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v0

    sub-float/2addr v2, v4

    iput v2, v1, Lcom/metamoji/rb/_Jacobian;->yy:F

    .line 671
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_direction:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_activePoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/metamoji/rb/RbRubberBand;->_fixedPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 672
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_direction:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_activePoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_fixedPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v4

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 673
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_normalize:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_direction:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_direction:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    div-float v0, v3, v0

    goto :goto_2

    :cond_7
    move v0, v1

    :goto_2
    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 674
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_normalize:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_direction:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_direction:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float v1, v3, v0

    :cond_8
    iput v1, p1, Landroid/graphics/PointF;->y:F

    .line 676
    invoke-virtual {p0}, Lcom/metamoji/rb/RbRubberBand;->minScale()Landroid/graphics/PointF;

    move-result-object p1

    .line 677
    invoke-virtual {p0}, Lcom/metamoji/rb/RbRubberBand;->maxScale()Landroid/graphics/PointF;

    move-result-object v0

    .line 678
    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_start:Lcom/metamoji/rb/_TouchStartInfo;

    iget-boolean v1, v1, Lcom/metamoji/rb/_TouchStartInfo;->keepAspectRatio:Z

    if-eqz v1, :cond_9

    .line 679
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 680
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 681
    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_start:Lcom/metamoji/rb/_TouchStartInfo;

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, p1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, v1, Lcom/metamoji/rb/_TouchStartInfo;->minScale:Landroid/graphics/PointF;

    .line 682
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_start:Lcom/metamoji/rb/_TouchStartInfo;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p1, Lcom/metamoji/rb/_TouchStartInfo;->maxScale:Landroid/graphics/PointF;

    goto/16 :goto_4

    .line 684
    :cond_9
    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_start:Lcom/metamoji/rb/_TouchStartInfo;

    new-instance v2, Landroid/graphics/PointF;

    iget v4, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-direct {v2, v4, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, v1, Lcom/metamoji/rb/_TouchStartInfo;->minScale:Landroid/graphics/PointF;

    .line 685
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_start:Lcom/metamoji/rb/_TouchStartInfo;

    new-instance v1, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p1, Lcom/metamoji/rb/_TouchStartInfo;->maxScale:Landroid/graphics/PointF;

    goto :goto_4

    .line 687
    :cond_a
    invoke-virtual {v0}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v1

    sget-object v3, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_TO_ROTATE:Lcom/metamoji/rb/RbConstants$Activity;

    invoke-virtual {v3}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v3

    and-int/2addr v1, v3

    if-eqz v1, :cond_c

    .line 688
    sget-object v1, Lcom/metamoji/rb/RbConstants$ActionType;->ROTATED:Lcom/metamoji/rb/RbConstants$ActionType;

    iput-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_actionType:Lcom/metamoji/rb/RbConstants$ActionType;

    .line 689
    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_action:Lcom/metamoji/rb/RbRubberBandAction;

    iget-object v3, p0, Lcom/metamoji/rb/RbRubberBand;->_center:Landroid/graphics/PointF;

    invoke-virtual {v1, v3}, Lcom/metamoji/rb/RbRubberBandAction;->setCenter(Landroid/graphics/PointF;)V

    .line 690
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_fixedPoint:Landroid/graphics/PointF;

    .line 692
    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_start:Lcom/metamoji/rb/_TouchStartInfo;

    iget v3, p0, Lcom/metamoji/rb/RbRubberBand;->_angle:F

    iput v3, v1, Lcom/metamoji/rb/_TouchStartInfo;->angle:F

    .line 694
    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/metamoji/rb/RbRubberBand;->_center:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v3

    float-to-double v3, v1

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/metamoji/rb/RbRubberBand;->_center:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v1

    float-to-double v5, p1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    double-to-float p1, v3

    iput p1, p0, Lcom/metamoji/rb/RbRubberBand;->_initialAngle:F

    .line 696
    invoke-virtual {v0}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result p1

    sget-object v0, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_STEP_ROTATION:Lcom/metamoji/rb/RbConstants$Activity;

    invoke-virtual {v0}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v0

    and-int/2addr p1, v0

    const v0, 0x3c8efa35

    if-eqz p1, :cond_b

    .line 697
    invoke-virtual {p0}, Lcom/metamoji/rb/RbRubberBand;->rotationStep()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/metamoji/rb/RbRubberBand;->_rotationStepRadian:F

    goto :goto_3

    .line 699
    :cond_b
    iput v0, p0, Lcom/metamoji/rb/RbRubberBand;->_rotationStepRadian:F

    .line 701
    :goto_3
    iput v2, p0, Lcom/metamoji/rb/RbRubberBand;->_rotationStepNumber:I

    .line 706
    :goto_4
    iget-object p1, p0, Lcom/metamoji/rb/RbRubberBand;->_action:Lcom/metamoji/rb/RbRubberBandAction;

    return-object p1

    .line 703
    :cond_c
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string v0, "RB001"

    const-string v1, "invalid activity"

    invoke-direct {p1, v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public touching()Z
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_action:Lcom/metamoji/rb/RbRubberBandAction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public visible()Z
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/metamoji/rb/RbRubberBand;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->isVisible()Z

    move-result v0

    return v0
.end method

.method public zoom()F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 310
    iget v1, p0, Lcom/metamoji/rb/RbRubberBand;->_scale:F

    div-float/2addr v0, v1

    return v0
.end method
