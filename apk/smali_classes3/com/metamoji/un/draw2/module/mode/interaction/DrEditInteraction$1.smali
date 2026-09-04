.class synthetic Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction$1;
.super Ljava/lang/Object;
.source "DrEditInteraction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$un$draw2$library$overlay$DrOvTouch$Device:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$library$overlay$DrOvTouch$Type:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$library$overlay$rubberband$DrOvRubberBandAction$Type:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$library$overlay$rubberband$DrOvRubberBandHandle$FunctionType:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 430
    invoke-static {}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->values()[Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I

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
    sget-object v2, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I

    sget-object v3, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->RECT:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 325
    :catch_1
    invoke-static {}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->values()[Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$rubberband$DrOvRubberBandAction$Type:[I

    :try_start_2
    sget-object v3, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->FRAME_MOVED:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$rubberband$DrOvRubberBandAction$Type:[I

    sget-object v3, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->FRAME_RESIZED:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v2, 0x3

    :try_start_4
    sget-object v3, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$rubberband$DrOvRubberBandAction$Type:[I

    sget-object v4, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->FRAME_ROTATED:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v3, 0x4

    :try_start_5
    sget-object v4, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$rubberband$DrOvRubberBandAction$Type:[I

    sget-object v5, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->EXTRA_HANDLE_MOVED:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 348
    :catch_5
    invoke-static {}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->values()[Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$rubberband$DrOvRubberBandHandle$FunctionType:[I

    :try_start_6
    sget-object v5, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->RESIZE:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v4, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$rubberband$DrOvRubberBandHandle$FunctionType:[I

    sget-object v5, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->RESIZE_X:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v4, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$rubberband$DrOvRubberBandHandle$FunctionType:[I

    sget-object v5, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->RESIZE_Y:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v4, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$rubberband$DrOvRubberBandHandle$FunctionType:[I

    sget-object v5, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->SCALE:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v4, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$rubberband$DrOvRubberBandHandle$FunctionType:[I

    sget-object v5, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->ROTATE:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->ordinal()I

    move-result v5

    const/4 v6, 0x5

    aput v6, v4, v5
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v4, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$rubberband$DrOvRubberBandHandle$FunctionType:[I

    sget-object v5, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->STEP_ROTATE:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->ordinal()I

    move-result v5

    const/4 v6, 0x6

    aput v6, v4, v5
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v4, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$rubberband$DrOvRubberBandHandle$FunctionType:[I

    sget-object v5, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->MOVE:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->ordinal()I

    move-result v5

    const/4 v6, 0x7

    aput v6, v4, v5
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v4, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$rubberband$DrOvRubberBandHandle$FunctionType:[I

    sget-object v5, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->EXTRA_HANDLE:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->ordinal()I

    move-result v5

    const/16 v6, 0x8

    aput v6, v4, v5
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    .line 314
    :catch_d
    invoke-static {}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;->values()[Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$DrOvTouch$Device:[I

    :try_start_e
    sget-object v5, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;->FINGER:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v4, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$DrOvTouch$Device:[I

    sget-object v5, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;->PEN:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    .line 123
    :catch_f
    invoke-static {}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->values()[Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$DrOvTouch$Type:[I

    :try_start_10
    sget-object v5, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->BEGAN:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$DrOvTouch$Type:[I

    sget-object v4, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->MOVED:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$DrOvTouch$Type:[I

    sget-object v1, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->ENDED:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$DrOvTouch$Type:[I

    sget-object v1, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->CANCELED:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    return-void
.end method
