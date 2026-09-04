.class synthetic Lcom/metamoji/un/draw2/library/style/DrStStyle$1;
.super Ljava/lang/Object;
.source "DrStStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/library/style/DrStStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$un$draw2$library$style$DrStStyleType:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStPenType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 204
    invoke-static {}, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->values()[Lcom/metamoji/un/draw2/library/style/DrStStyleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/un/draw2/library/style/DrStStyle$1;->$SwitchMap$com$metamoji$un$draw2$library$style$DrStStyleType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->PEN:Lcom/metamoji/un/draw2/library/style/DrStStyleType;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :catch_0
    invoke-static {}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->values()[Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/un/draw2/library/style/DrStStyle$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStPenType:[I

    :try_start_1
    sget-object v2, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->SIMPLE:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/metamoji/un/draw2/library/style/DrStStyle$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStPenType:[I

    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->CALLIGRAPHIC:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/metamoji/un/draw2/library/style/DrStStyle$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStPenType:[I

    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->FOUNTAIN:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/metamoji/un/draw2/library/style/DrStStyle$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStPenType:[I

    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->ARROW:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
