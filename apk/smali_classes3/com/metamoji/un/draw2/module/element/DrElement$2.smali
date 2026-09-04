.class synthetic Lcom/metamoji/un/draw2/module/element/DrElement$2;
.super Ljava/lang/Object;
.source "DrElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/module/element/DrElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$un$draw2$module$element$DrEditType:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$module$element$arrow$DrArrowType:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$module$element$shape$DrShapeType:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$module$element$stroke$DrStrokeType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1712
    invoke-static {}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->values()[Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/un/draw2/module/element/DrElement$2;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->POINTS:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/metamoji/un/draw2/module/element/DrElement$2;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I

    sget-object v3, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->RECT:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 1659
    :catch_1
    invoke-static {}, Lcom/metamoji/un/draw2/module/element/DrElementType;->values()[Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/metamoji/un/draw2/module/element/DrElement$2;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    :try_start_2
    sget-object v3, Lcom/metamoji/un/draw2/module/element/DrElementType;->STROKE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/metamoji/un/draw2/module/element/DrElement$2;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    sget-object v3, Lcom/metamoji/un/draw2/module/element/DrElementType;->UNIT:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v2, 0x3

    :try_start_4
    sget-object v3, Lcom/metamoji/un/draw2/module/element/DrElement$2;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    sget-object v4, Lcom/metamoji/un/draw2/module/element/DrElementType;->SHAPE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v3, 0x4

    :try_start_5
    sget-object v4, Lcom/metamoji/un/draw2/module/element/DrElement$2;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    sget-object v5, Lcom/metamoji/un/draw2/module/element/DrElementType;->ARROW:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 1700
    :catch_5
    invoke-static {}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->values()[Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/metamoji/un/draw2/module/element/DrElement$2;->$SwitchMap$com$metamoji$un$draw2$module$element$arrow$DrArrowType:[I

    :try_start_6
    sget-object v5, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->LINE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v4, Lcom/metamoji/un/draw2/module/element/DrElement$2;->$SwitchMap$com$metamoji$un$draw2$module$element$arrow$DrArrowType:[I

    sget-object v5, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->MULTI_LINE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 1677
    :catch_7
    invoke-static {}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->values()[Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/metamoji/un/draw2/module/element/DrElement$2;->$SwitchMap$com$metamoji$un$draw2$module$element$shape$DrShapeType:[I

    :try_start_8
    sget-object v5, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->SIMPLE_SHAPE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v4, Lcom/metamoji/un/draw2/module/element/DrElement$2;->$SwitchMap$com$metamoji$un$draw2$module$element$shape$DrShapeType:[I

    sget-object v5, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->TRIANGLE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v4, Lcom/metamoji/un/draw2/module/element/DrElement$2;->$SwitchMap$com$metamoji$un$draw2$module$element$shape$DrShapeType:[I

    sget-object v5, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->RECTANGLE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v4, Lcom/metamoji/un/draw2/module/element/DrElement$2;->$SwitchMap$com$metamoji$un$draw2$module$element$shape$DrShapeType:[I

    sget-object v5, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->DISK_SHAPE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    const/4 v4, 0x5

    :try_start_c
    sget-object v5, Lcom/metamoji/un/draw2/module/element/DrElement$2;->$SwitchMap$com$metamoji$un$draw2$module$element$shape$DrShapeType:[I

    sget-object v6, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->ARROW_SHAPE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v5, Lcom/metamoji/un/draw2/module/element/DrElement$2;->$SwitchMap$com$metamoji$un$draw2$module$element$shape$DrShapeType:[I

    sget-object v6, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->BALLOON_SHAPE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->ordinal()I

    move-result v6

    const/4 v7, 0x6

    aput v7, v5, v6
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v5, Lcom/metamoji/un/draw2/module/element/DrElement$2;->$SwitchMap$com$metamoji$un$draw2$module$element$shape$DrShapeType:[I

    sget-object v6, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->RECTANGLE_BALLOON_SHAPE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->ordinal()I

    move-result v6

    const/4 v7, 0x7

    aput v7, v5, v6
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    .line 1661
    :catch_e
    invoke-static {}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->values()[Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/metamoji/un/draw2/module/element/DrElement$2;->$SwitchMap$com$metamoji$un$draw2$module$element$stroke$DrStrokeType:[I

    :try_start_f
    sget-object v6, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->SIMPLE:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v5, Lcom/metamoji/un/draw2/module/element/DrElement$2;->$SwitchMap$com$metamoji$un$draw2$module$element$stroke$DrStrokeType:[I

    sget-object v6, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->REDUCED:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v5, Lcom/metamoji/un/draw2/module/element/DrElement$2;->$SwitchMap$com$metamoji$un$draw2$module$element$stroke$DrStrokeType:[I

    sget-object v6, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->CALLIGRAPHIC:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v5, Lcom/metamoji/un/draw2/module/element/DrElement$2;->$SwitchMap$com$metamoji$un$draw2$module$element$stroke$DrStrokeType:[I

    sget-object v6, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->FOUNTAIN:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    .line 222
    :catch_12
    invoke-static {}, Lcom/metamoji/un/draw2/module/element/DrEditType;->values()[Lcom/metamoji/un/draw2/module/element/DrEditType;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/metamoji/un/draw2/module/element/DrElement$2;->$SwitchMap$com$metamoji$un$draw2$module$element$DrEditType:[I

    :try_start_13
    sget-object v6, Lcom/metamoji/un/draw2/module/element/DrEditType;->TRANSLATE:Lcom/metamoji/un/draw2/module/element/DrEditType;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/DrEditType;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v1, Lcom/metamoji/un/draw2/module/element/DrElement$2;->$SwitchMap$com$metamoji$un$draw2$module$element$DrEditType:[I

    sget-object v5, Lcom/metamoji/un/draw2/module/element/DrEditType;->RESIZE:Lcom/metamoji/un/draw2/module/element/DrEditType;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrEditType;->ordinal()I

    move-result v5

    aput v0, v1, v5
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrElement$2;->$SwitchMap$com$metamoji$un$draw2$module$element$DrEditType:[I

    sget-object v1, Lcom/metamoji/un/draw2/module/element/DrEditType;->SCALE:Lcom/metamoji/un/draw2/module/element/DrEditType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrEditType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrElement$2;->$SwitchMap$com$metamoji$un$draw2$module$element$DrEditType:[I

    sget-object v1, Lcom/metamoji/un/draw2/module/element/DrEditType;->ROTATE:Lcom/metamoji/un/draw2/module/element/DrEditType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrEditType;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrElement$2;->$SwitchMap$com$metamoji$un$draw2$module$element$DrEditType:[I

    sget-object v1, Lcom/metamoji/un/draw2/module/element/DrEditType;->EDIT_EXTRA_HANDLE:Lcom/metamoji/un/draw2/module/element/DrEditType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrEditType;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    return-void
.end method
