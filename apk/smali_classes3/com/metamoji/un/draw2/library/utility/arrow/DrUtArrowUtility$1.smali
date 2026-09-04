.class synthetic Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility$1;
.super Ljava/lang/Object;
.source "DrUtArrowUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$df$sprite$LineCap:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStArrowPenStyle$DrStArrowHeadType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 859
    invoke-static {}, Lcom/metamoji/df/sprite/LineCap;->values()[Lcom/metamoji/df/sprite/LineCap;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility$1;->$SwitchMap$com$metamoji$df$sprite$LineCap:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/metamoji/df/sprite/LineCap;->BUTT:Lcom/metamoji/df/sprite/LineCap;

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/LineCap;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility$1;->$SwitchMap$com$metamoji$df$sprite$LineCap:[I

    sget-object v3, Lcom/metamoji/df/sprite/LineCap;->SQUARE:Lcom/metamoji/df/sprite/LineCap;

    invoke-virtual {v3}, Lcom/metamoji/df/sprite/LineCap;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    :catch_1
    invoke-static {}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->values()[Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStArrowPenStyle$DrStArrowHeadType:[I

    :try_start_2
    sget-object v3, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStArrowPenStyle$DrStArrowHeadType:[I

    sget-object v2, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->HAT:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
