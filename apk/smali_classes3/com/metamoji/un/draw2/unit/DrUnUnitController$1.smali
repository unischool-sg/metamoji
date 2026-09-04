.class synthetic Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;
.super Ljava/lang/Object;
.source "DrUnUnitController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/unit/DrUnUnitController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$df$controller$ModelCompatibility$Result:[I

.field static final synthetic $SwitchMap$com$metamoji$nt$NtCommand:[I

.field static final synthetic $SwitchMap$com$metamoji$nt$NtDocument$EditMode:[I

.field static final synthetic $SwitchMap$com$metamoji$nt$NtDocument$ToolMode:[I

.field static final synthetic $SwitchMap$com$metamoji$nt$NtToolChangedContext$Kind:[I

.field static final synthetic $SwitchMap$com$metamoji$nt$NtUnitController$AddUnitPosition:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$library$overlay$rubberband$DrOvRubberBandAction$Type:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStArrowPenStyle$DrStArrowHeadPosition:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStArrowPenStyle$DrStArrowHeadType:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStCalligraphicInkType:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStFountainInkType:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStPenType:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStSimplePenStyle$FillType:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$library$utility$order$DrUtOrderUtility$DrUtOrderType:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$module$collaboration$DrCollaborationTarget:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$module$collaboration$DrCollaborationType:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$module$command$DrCommandEventType:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$module$command$direction$DrDirectionType:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$module$element$stroke$DrStrokeType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 13529
    invoke-static {}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->values()[Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$module$element$stroke$DrStrokeType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->REDUCED:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$module$element$stroke$DrStrokeType:[I

    sget-object v3, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->CALLIGRAPHIC:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$module$element$stroke$DrStrokeType:[I

    sget-object v4, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->FOUNTAIN:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 8927
    :catch_2
    invoke-static {}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->values()[Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$rubberband$DrOvRubberBandAction$Type:[I

    :try_start_3
    sget-object v4, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->FRAME_MOVED:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$rubberband$DrOvRubberBandAction$Type:[I

    sget-object v4, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->FRAME_RESIZED:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 8534
    :catch_4
    invoke-static {}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->values()[Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I

    :try_start_5
    sget-object v4, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->POINTS:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v3, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I

    sget-object v4, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->RECT:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 8266
    :catch_6
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->values()[Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$library$utility$order$DrUtOrderUtility$DrUtOrderType:[I

    :try_start_7
    sget-object v4, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->ALIGNMENT_LEFT:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v3, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$library$utility$order$DrUtOrderUtility$DrUtOrderType:[I

    sget-object v4, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->ALIGNMENT_RIGHT:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v3, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$library$utility$order$DrUtOrderUtility$DrUtOrderType:[I

    sget-object v4, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->ALIGNMENT_TOP:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    const/4 v3, 0x4

    :try_start_a
    sget-object v4, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$library$utility$order$DrUtOrderUtility$DrUtOrderType:[I

    sget-object v5, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->ALIGNMENT_BOTTOM:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    const/4 v4, 0x5

    :try_start_b
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$library$utility$order$DrUtOrderUtility$DrUtOrderType:[I

    sget-object v6, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->ALIGNMENT_HORIZONTAL_CENTER:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    const/4 v5, 0x6

    :try_start_c
    sget-object v6, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$library$utility$order$DrUtOrderUtility$DrUtOrderType:[I

    sget-object v7, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->ALIGNMENT_VERTICAL_CENTER:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    const/4 v6, 0x7

    :try_start_d
    sget-object v7, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$library$utility$order$DrUtOrderUtility$DrUtOrderType:[I

    sget-object v8, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->JUSTIFICATION_HORIZONTAL_DISTANCE:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    const/16 v7, 0x8

    :try_start_e
    sget-object v8, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$library$utility$order$DrUtOrderUtility$DrUtOrderType:[I

    sget-object v9, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->JUSTIFICATION_VERTICAL_DISTANCE:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    const/16 v8, 0x9

    :try_start_f
    sget-object v9, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$library$utility$order$DrUtOrderUtility$DrUtOrderType:[I

    sget-object v10, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->LATTICE:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    .line 6786
    :catch_f
    invoke-static {}, Lcom/metamoji/nt/NtDocument$EditMode;->values()[Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtDocument$EditMode:[I

    :try_start_10
    sget-object v10, Lcom/metamoji/nt/NtDocument$EditMode;->EDITMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    invoke-virtual {v10}, Lcom/metamoji/nt/NtDocument$EditMode;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v9, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtDocument$EditMode:[I

    sget-object v10, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    invoke-virtual {v10}, Lcom/metamoji/nt/NtDocument$EditMode;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v9, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtDocument$EditMode:[I

    sget-object v10, Lcom/metamoji/nt/NtDocument$EditMode;->LASERMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    invoke-virtual {v10}, Lcom/metamoji/nt/NtDocument$EditMode;->ordinal()I

    move-result v10

    aput v2, v9, v10
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    .line 5975
    :catch_12
    invoke-static {}, Lcom/metamoji/nt/NtDocument$ToolMode;->values()[Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtDocument$ToolMode:[I

    :try_start_13
    sget-object v10, Lcom/metamoji/nt/NtDocument$ToolMode;->PEN:Lcom/metamoji/nt/NtDocument$ToolMode;

    invoke-virtual {v10}, Lcom/metamoji/nt/NtDocument$ToolMode;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v9, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtDocument$ToolMode:[I

    sget-object v10, Lcom/metamoji/nt/NtDocument$ToolMode;->ERASER:Lcom/metamoji/nt/NtDocument$ToolMode;

    invoke-virtual {v10}, Lcom/metamoji/nt/NtDocument$ToolMode;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v9, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtDocument$ToolMode:[I

    sget-object v10, Lcom/metamoji/nt/NtDocument$ToolMode;->SELECT:Lcom/metamoji/nt/NtDocument$ToolMode;

    invoke-virtual {v10}, Lcom/metamoji/nt/NtDocument$ToolMode;->ordinal()I

    move-result v10

    aput v2, v9, v10
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v9, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtDocument$ToolMode:[I

    sget-object v10, Lcom/metamoji/nt/NtDocument$ToolMode;->ARRANGE:Lcom/metamoji/nt/NtDocument$ToolMode;

    invoke-virtual {v10}, Lcom/metamoji/nt/NtDocument$ToolMode;->ordinal()I

    move-result v10

    aput v3, v9, v10
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v9, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtDocument$ToolMode:[I

    sget-object v10, Lcom/metamoji/nt/NtDocument$ToolMode;->TEXT:Lcom/metamoji/nt/NtDocument$ToolMode;

    invoke-virtual {v10}, Lcom/metamoji/nt/NtDocument$ToolMode;->ordinal()I

    move-result v10

    aput v4, v9, v10
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v9, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtDocument$ToolMode:[I

    sget-object v10, Lcom/metamoji/nt/NtDocument$ToolMode;->SPREAD:Lcom/metamoji/nt/NtDocument$ToolMode;

    invoke-virtual {v10}, Lcom/metamoji/nt/NtDocument$ToolMode;->ordinal()I

    move-result v10

    aput v5, v9, v10
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    .line 4165
    :catch_18
    invoke-static {}, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->values()[Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandEventType:[I

    :try_start_19
    sget-object v10, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->WILL_END_COMMAND:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v9, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandEventType:[I

    sget-object v10, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->WILL_EXECUTE_COMMAND:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v9, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandEventType:[I

    sget-object v10, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->DID_EXECUTE_COMMAND:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->ordinal()I

    move-result v10

    aput v2, v9, v10
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    .line 4155
    :catch_1b
    invoke-static {}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->values()[Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$module$command$direction$DrDirectionType:[I

    :try_start_1c
    sget-object v10, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->NONE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v9, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$module$command$direction$DrDirectionType:[I

    sget-object v10, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->SELECT:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v9, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$module$command$direction$DrDirectionType:[I

    sget-object v10, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->DESELECT:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ordinal()I

    move-result v10

    aput v2, v9, v10
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v9, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$module$command$direction$DrDirectionType:[I

    sget-object v10, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ADD_REMOVE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ordinal()I

    move-result v10

    aput v3, v9, v10
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v9, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$module$command$direction$DrDirectionType:[I

    sget-object v10, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->TRANSLATE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ordinal()I

    move-result v10

    aput v4, v9, v10
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v9, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$module$command$direction$DrDirectionType:[I

    sget-object v10, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->RESIZE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ordinal()I

    move-result v10

    aput v5, v9, v10
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v9, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$module$command$direction$DrDirectionType:[I

    sget-object v10, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->SCALE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ordinal()I

    move-result v10

    aput v6, v9, v10
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v9, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$module$command$direction$DrDirectionType:[I

    sget-object v10, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ROTATE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ordinal()I

    move-result v10

    aput v7, v9, v10
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v9, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$module$command$direction$DrDirectionType:[I

    sget-object v10, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->SET_VARIATION:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    const/16 v9, 0xa

    :try_start_25
    sget-object v10, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$module$command$direction$DrDirectionType:[I

    sget-object v11, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->SET_EXTRA_HANDLE_VARIATION:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    const/16 v10, 0xb

    :try_start_26
    sget-object v11, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$module$command$direction$DrDirectionType:[I

    sget-object v12, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ERASE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ordinal()I

    move-result v12

    aput v10, v11, v12
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    const/16 v11, 0xc

    :try_start_27
    sget-object v12, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$module$command$direction$DrDirectionType:[I

    sget-object v13, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->CHANGE_STYLE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v13}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ordinal()I

    move-result v13

    aput v11, v12, v13
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    const/16 v12, 0xd

    :try_start_28
    sget-object v13, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$module$command$direction$DrDirectionType:[I

    sget-object v14, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->APPLY_VARIATION:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ordinal()I

    move-result v14

    aput v12, v13, v14
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    const/16 v13, 0xe

    :try_start_29
    sget-object v14, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$module$command$direction$DrDirectionType:[I

    sget-object v15, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->EDIT_EXTRA_HANDLE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v15}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ordinal()I

    move-result v15

    aput v13, v14, v15
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    .line 3942
    :catch_29
    invoke-static {}, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;->values()[Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    move-result-object v14

    array-length v14, v14

    new-array v14, v14, [I

    sput-object v14, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$module$collaboration$DrCollaborationTarget:[I

    :try_start_2a
    sget-object v15, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;->OTHERS:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    invoke-virtual {v15}, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;->ordinal()I

    move-result v15

    aput v1, v14, v15
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2b
    sget-object v14, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$module$collaboration$DrCollaborationTarget:[I

    sget-object v15, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;->EVERYONE:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    invoke-virtual {v15}, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;->ordinal()I

    move-result v15

    aput v0, v14, v15
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    .line 3928
    :catch_2b
    invoke-static {}, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;->values()[Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;

    move-result-object v14

    array-length v14, v14

    new-array v14, v14, [I

    sput-object v14, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$module$collaboration$DrCollaborationType:[I

    :try_start_2c
    sget-object v15, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;->AD_HOC:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;

    invoke-virtual {v15}, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;->ordinal()I

    move-result v15

    aput v1, v14, v15
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    :try_start_2d
    sget-object v14, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$module$collaboration$DrCollaborationType:[I

    sget-object v15, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;->PERMANENT:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;

    invoke-virtual {v15}, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;->ordinal()I

    move-result v15

    aput v0, v14, v15
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    .line 3061
    :catch_2d
    invoke-static {}, Lcom/metamoji/nt/NtCommand;->values()[Lcom/metamoji/nt/NtCommand;

    move-result-object v14

    array-length v14, v14

    new-array v14, v14, [I

    sput-object v14, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    :try_start_2e
    sget-object v15, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_MOVE_TO_SHARELAYER:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v15}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v15

    aput v1, v14, v15
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2f
    sget-object v14, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v15, Lcom/metamoji/nt/NtCommand;->CMD_COPY:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v15}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v15

    aput v0, v14, v15
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    :catch_2f
    :try_start_30
    sget-object v14, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v15, Lcom/metamoji/nt/NtCommand;->CMD_PASTE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v15}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v15

    aput v2, v14, v15
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    :catch_30
    :try_start_31
    sget-object v14, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v15, Lcom/metamoji/nt/NtCommand;->CMD_CUT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v15}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v15

    aput v3, v14, v15
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    :catch_31
    :try_start_32
    sget-object v14, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v15, Lcom/metamoji/nt/NtCommand;->CMD_DUPLICATE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v15}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v15

    aput v4, v14, v15
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    :catch_32
    :try_start_33
    sget-object v14, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v15, Lcom/metamoji/nt/NtCommand;->CMD_REMOVE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v15}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v15

    aput v5, v14, v15
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    :catch_33
    :try_start_34
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v14, Lcom/metamoji/nt/NtCommand;->CMD_GROUP:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v14}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v14

    aput v6, v5, v14
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    :catch_34
    :try_start_35
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_UNGROUP:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    aput v7, v5, v6
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    :catch_35
    :try_start_36
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_BRING_TO_FRONT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    aput v8, v5, v6
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    :catch_36
    :try_start_37
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_SEND_TO_BACK:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    aput v9, v5, v6
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_37

    :catch_37
    :try_start_38
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_REGISTERMYITEM:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    aput v10, v5, v6
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_38

    :catch_38
    :try_start_39
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_INSERT_PARTS:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    aput v11, v5, v6
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_39

    :catch_39
    :try_start_3a
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_INSERT_SHAPE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    aput v12, v5, v6
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_3a

    :catch_3a
    :try_start_3b
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_SELECT_BELOW:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    aput v13, v5, v6
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_3b

    :catch_3b
    :try_start_3c
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_REVERSE_LEFT_AND_RIGHT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0xf

    aput v7, v5, v6
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_3c

    :catch_3c
    :try_start_3d
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_REVERSE_UPSIDE_AND_DOWNSIDE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x10

    aput v7, v5, v6
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3e
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_ORDER_LEFT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x11

    aput v7, v5, v6
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3f
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_ORDER_RIGHT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x12

    aput v7, v5, v6
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_3f

    :catch_3f
    :try_start_40
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_ORDER_TOP:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x13

    aput v7, v5, v6
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_40

    :catch_40
    :try_start_41
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_ORDER_BOTTOM:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x14

    aput v7, v5, v6
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_41

    :catch_41
    :try_start_42
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_ORDER_HORIZONTAL:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x15

    aput v7, v5, v6
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_42

    :catch_42
    :try_start_43
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_ORDER_VERTICAL:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x16

    aput v7, v5, v6
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_43

    :catch_43
    :try_start_44
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_ORDER_HORIZONTAL_ADJUST:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x17

    aput v7, v5, v6
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_44

    :catch_44
    :try_start_45
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_ORDER_VERTICAL_ADJUST:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x18

    aput v7, v5, v6
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_45

    :catch_45
    :try_start_46
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_ORDER_LATTICE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x19

    aput v7, v5, v6
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_46

    :catch_46
    :try_start_47
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_DRAW_CLEAR:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x1a

    aput v7, v5, v6
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_47} :catch_47

    :catch_47
    :try_start_48
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_DRAW_CHANGE_LONGPRESSSETTING:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x1b

    aput v7, v5, v6
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_48} :catch_48

    :catch_48
    :try_start_49
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_ORDER:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x1c

    aput v7, v5, v6
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_49} :catch_49

    :catch_49
    :try_start_4a
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_CHANGE_STYLE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x1d

    aput v7, v5, v6
    :try_end_4a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_4a} :catch_4a

    :catch_4a
    :try_start_4b
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_CHANGE_SHAPE_STYLE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x1e

    aput v7, v5, v6
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_4b} :catch_4b

    .line 2967
    :catch_4b
    invoke-static {}, Lcom/metamoji/un/draw2/module/element/DrElementType;->values()[Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    :try_start_4c
    sget-object v6, Lcom/metamoji/un/draw2/module/element/DrElementType;->UNIT:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_4c} :catch_4c

    :catch_4c
    :try_start_4d
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    sget-object v6, Lcom/metamoji/un/draw2/module/element/DrElementType;->STROKE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_4d} :catch_4d

    :catch_4d
    :try_start_4e
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    sget-object v6, Lcom/metamoji/un/draw2/module/element/DrElementType;->SHAPE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_4e} :catch_4e

    :catch_4e
    :try_start_4f
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    sget-object v6, Lcom/metamoji/un/draw2/module/element/DrElementType;->ARROW:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_4f} :catch_4f

    .line 2746
    :catch_4f
    invoke-static {}, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->values()[Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtUnitController$AddUnitPosition:[I

    :try_start_50
    sget-object v6, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->LEFTBOTTOM:Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_50} :catch_50

    :catch_50
    :try_start_51
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtUnitController$AddUnitPosition:[I

    sget-object v6, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->RIGHTTOP:Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_51} :catch_51

    :catch_51
    :try_start_52
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtUnitController$AddUnitPosition:[I

    sget-object v6, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->RIGHTBOTTOM:Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_52} :catch_52

    :catch_52
    :try_start_53
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtUnitController$AddUnitPosition:[I

    sget-object v6, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->CENTERCENTER:Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_53} :catch_53

    .line 2083
    :catch_53
    invoke-static {}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->values()[Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStPenType:[I

    :try_start_54
    sget-object v6, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->ARROW:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_54} :catch_54

    :catch_54
    :try_start_55
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStPenType:[I

    sget-object v6, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->SIMPLE:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_55} :catch_55

    :catch_55
    :try_start_56
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStPenType:[I

    sget-object v6, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->CALLIGRAPHIC:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_56} :catch_56

    :catch_56
    :try_start_57
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStPenType:[I

    sget-object v6, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->FOUNTAIN:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_57} :catch_57

    :catch_57
    :try_start_58
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStPenType:[I

    sget-object v6, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_58} :catch_58

    .line 2198
    :catch_58
    invoke-static {}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->values()[Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStFountainInkType:[I

    :try_start_59
    sget-object v6, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->STANDARD:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_59} :catch_59

    :catch_59
    :try_start_5a
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStFountainInkType:[I

    sget-object v6, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->GRADATION:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_5a} :catch_5a

    :catch_5a
    :try_start_5b
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStFountainInkType:[I

    sget-object v6, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->TWO_COLORS:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_5b} :catch_5b

    .line 2171
    :catch_5b
    invoke-static {}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;->values()[Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStCalligraphicInkType:[I

    :try_start_5c
    sget-object v6, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;->STANDARD:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_5c} :catch_5c

    :catch_5c
    :try_start_5d
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStCalligraphicInkType:[I

    sget-object v6, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;->GRADATION:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_5d} :catch_5d

    :catch_5d
    :try_start_5e
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStCalligraphicInkType:[I

    sget-object v6, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;->TWO_COLORS:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e .. :try_end_5e} :catch_5e

    .line 2131
    :catch_5e
    invoke-static {}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->values()[Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStSimplePenStyle$FillType:[I

    :try_start_5f
    sget-object v6, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->STANDARD:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_5f} :catch_5f

    :catch_5f
    :try_start_60
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStSimplePenStyle$FillType:[I

    sget-object v6, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->GRADATION_LEFT_RIGHT:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_60} :catch_60

    :catch_60
    :try_start_61
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStSimplePenStyle$FillType:[I

    sget-object v6, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->GRADATION_TOP_BOTTOM:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_61} :catch_61

    :catch_61
    :try_start_62
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStSimplePenStyle$FillType:[I

    sget-object v6, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->GRADATION_LEFTTOP_RIGHTBOTTOM:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_62} :catch_62

    :catch_62
    :try_start_63
    sget-object v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStSimplePenStyle$FillType:[I

    sget-object v6, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->GRADATION_RIGHTTOP_LEFTBOTTOM:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_63} :catch_63

    .line 2104
    :catch_63
    invoke-static {}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->values()[Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStArrowPenStyle$DrStArrowHeadType:[I

    :try_start_64
    sget-object v5, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->HAT:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_64} :catch_64

    .line 2087
    :catch_64
    invoke-static {}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->values()[Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStArrowPenStyle$DrStArrowHeadPosition:[I

    :try_start_65
    sget-object v5, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->START:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_65} :catch_65

    :catch_65
    :try_start_66
    sget-object v4, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStArrowPenStyle$DrStArrowHeadPosition:[I

    sget-object v5, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->END:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_66
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_66} :catch_66

    :catch_66
    :try_start_67
    sget-object v4, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStArrowPenStyle$DrStArrowHeadPosition:[I

    sget-object v5, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->BOTH:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_67
    .catch Ljava/lang/NoSuchFieldError; {:try_start_67 .. :try_end_67} :catch_67

    .line 1787
    :catch_67
    invoke-static {}, Lcom/metamoji/nt/NtToolChangedContext$Kind;->values()[Lcom/metamoji/nt/NtToolChangedContext$Kind;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtToolChangedContext$Kind:[I

    :try_start_68
    sget-object v5, Lcom/metamoji/nt/NtToolChangedContext$Kind;->PenIndex:Lcom/metamoji/nt/NtToolChangedContext$Kind;

    invoke-virtual {v5}, Lcom/metamoji/nt/NtToolChangedContext$Kind;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_68} :catch_68

    :catch_68
    :try_start_69
    sget-object v4, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtToolChangedContext$Kind:[I

    sget-object v5, Lcom/metamoji/nt/NtToolChangedContext$Kind;->PenSettings:Lcom/metamoji/nt/NtToolChangedContext$Kind;

    invoke-virtual {v5}, Lcom/metamoji/nt/NtToolChangedContext$Kind;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_69} :catch_69

    :catch_69
    :try_start_6a
    sget-object v4, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtToolChangedContext$Kind:[I

    sget-object v5, Lcom/metamoji/nt/NtToolChangedContext$Kind;->EraserIndex:Lcom/metamoji/nt/NtToolChangedContext$Kind;

    invoke-virtual {v5}, Lcom/metamoji/nt/NtToolChangedContext$Kind;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_6a} :catch_6a

    :catch_6a
    :try_start_6b
    sget-object v4, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$nt$NtToolChangedContext$Kind:[I

    sget-object v5, Lcom/metamoji/nt/NtToolChangedContext$Kind;->EraserSettings:Lcom/metamoji/nt/NtToolChangedContext$Kind;

    invoke-virtual {v5}, Lcom/metamoji/nt/NtToolChangedContext$Kind;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_6b} :catch_6b

    .line 506
    :catch_6b
    invoke-static {}, Lcom/metamoji/df/controller/ModelCompatibility$Result;->values()[Lcom/metamoji/df/controller/ModelCompatibility$Result;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$df$controller$ModelCompatibility$Result:[I

    :try_start_6c
    sget-object v4, Lcom/metamoji/df/controller/ModelCompatibility$Result;->Compatible:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    invoke-virtual {v4}, Lcom/metamoji/df/controller/ModelCompatibility$Result;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6d
    sget-object v1, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$df$controller$ModelCompatibility$Result:[I

    sget-object v3, Lcom/metamoji/df/controller/ModelCompatibility$Result;->NeedConvert:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    invoke-virtual {v3}, Lcom/metamoji/df/controller/ModelCompatibility$Result;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_6d} :catch_6d

    :catch_6d
    :try_start_6e
    sget-object v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$1;->$SwitchMap$com$metamoji$df$controller$ModelCompatibility$Result:[I

    sget-object v1, Lcom/metamoji/df/controller/ModelCompatibility$Result;->CantRead:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    invoke-virtual {v1}, Lcom/metamoji/df/controller/ModelCompatibility$Result;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_6e} :catch_6e

    :catch_6e
    return-void
.end method
