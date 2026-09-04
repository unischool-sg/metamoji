.class synthetic Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle$1;
.super Ljava/lang/Object;
.source "DrStFountainPenStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStFountainInkType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 502
    invoke-static {}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->values()[Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStFountainInkType:[I

    :try_start_0
    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->GRADATION:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStFountainInkType:[I

    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->TWO_COLORS:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
