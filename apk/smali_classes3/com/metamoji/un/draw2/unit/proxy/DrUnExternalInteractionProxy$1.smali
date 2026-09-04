.class synthetic Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy$1;
.super Ljava/lang/Object;
.source "DrUnExternalInteractionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStCalligraphicInkType:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStPenType:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$unit$proxy$DrUnExternalInteractionType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 358
    invoke-static {}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->values()[Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStPenType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->SIMPLE:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStPenType:[I

    sget-object v3, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->CALLIGRAPHIC:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStPenType:[I

    sget-object v4, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->FOUNTAIN:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 397
    :catch_2
    invoke-static {}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;->values()[Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStCalligraphicInkType:[I

    :try_start_3
    sget-object v4, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;->STANDARD:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStCalligraphicInkType:[I

    sget-object v4, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;->GRADATION:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStCalligraphicInkType:[I

    sget-object v4, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;->TWO_COLORS:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 157
    :catch_5
    invoke-static {}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;->values()[Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy$1;->$SwitchMap$com$metamoji$un$draw2$unit$proxy$DrUnExternalInteractionType:[I

    :try_start_6
    sget-object v4, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;->NONE:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy$1;->$SwitchMap$com$metamoji$un$draw2$unit$proxy$DrUnExternalInteractionType:[I

    sget-object v3, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;->DRAW:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy$1;->$SwitchMap$com$metamoji$un$draw2$unit$proxy$DrUnExternalInteractionType:[I

    sget-object v1, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;->ERASE:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method
