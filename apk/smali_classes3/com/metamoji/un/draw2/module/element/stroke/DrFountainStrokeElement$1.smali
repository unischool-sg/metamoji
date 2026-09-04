.class synthetic Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement$1;
.super Ljava/lang/Object;
.source "DrFountainStrokeElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStFountainInkType:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$module$element$DrEditType:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$module$element$DrHighlightProcess:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 395
    invoke-static {}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->values()[Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStFountainInkType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->STANDARD:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStFountainInkType:[I

    sget-object v3, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->GRADATION:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 361
    :catch_1
    invoke-static {}, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->values()[Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrHighlightProcess:[I

    :try_start_2
    sget-object v3, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->ADD:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrHighlightProcess:[I

    sget-object v3, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->REPAINT:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v2, 0x3

    :try_start_4
    sget-object v3, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrHighlightProcess:[I

    sget-object v4, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->REMOVE:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v3, 0x4

    :try_start_5
    sget-object v4, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrHighlightProcess:[I

    sget-object v5, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->EDIT:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 339
    :catch_5
    invoke-static {}, Lcom/metamoji/un/draw2/module/element/DrEditType;->values()[Lcom/metamoji/un/draw2/module/element/DrEditType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrEditType:[I

    :try_start_6
    sget-object v5, Lcom/metamoji/un/draw2/module/element/DrEditType;->TRANSLATE:Lcom/metamoji/un/draw2/module/element/DrEditType;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrEditType;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrEditType:[I

    sget-object v4, Lcom/metamoji/un/draw2/module/element/DrEditType;->RESIZE:Lcom/metamoji/un/draw2/module/element/DrEditType;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrEditType;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrEditType:[I

    sget-object v1, Lcom/metamoji/un/draw2/module/element/DrEditType;->SCALE:Lcom/metamoji/un/draw2/module/element/DrEditType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrEditType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrEditType:[I

    sget-object v1, Lcom/metamoji/un/draw2/module/element/DrEditType;->ROTATE:Lcom/metamoji/un/draw2/module/element/DrEditType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrEditType;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrEditType:[I

    sget-object v1, Lcom/metamoji/un/draw2/module/element/DrEditType;->EDIT_EXTRA_HANDLE:Lcom/metamoji/un/draw2/module/element/DrEditType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrEditType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method
