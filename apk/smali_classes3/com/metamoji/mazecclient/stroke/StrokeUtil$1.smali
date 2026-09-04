.class synthetic Lcom/metamoji/mazecclient/stroke/StrokeUtil$1;
.super Ljava/lang/Object;
.source "StrokeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazecclient/stroke/StrokeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$mazecclient$stroke$CalligraphyPaintType:[I

.field static final synthetic $SwitchMap$com$metamoji$mazecclient$stroke$StrokeInkType:[I

.field static final synthetic $SwitchMap$com$metamoji$mazecclient$stroke$StrokePenType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 429
    invoke-static {}, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;->values()[Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/mazecclient/stroke/StrokeUtil$1;->$SwitchMap$com$metamoji$mazecclient$stroke$CalligraphyPaintType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;->DEFAULT:Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    invoke-virtual {v2}, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/metamoji/mazecclient/stroke/StrokeUtil$1;->$SwitchMap$com$metamoji$mazecclient$stroke$CalligraphyPaintType:[I

    sget-object v3, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;->GRADATION:Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    invoke-virtual {v3}, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/metamoji/mazecclient/stroke/StrokeUtil$1;->$SwitchMap$com$metamoji$mazecclient$stroke$CalligraphyPaintType:[I

    sget-object v4, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;->CUBIC:Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    invoke-virtual {v4}, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 358
    :catch_2
    invoke-static {}, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->values()[Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/metamoji/mazecclient/stroke/StrokeUtil$1;->$SwitchMap$com$metamoji$mazecclient$stroke$StrokeInkType:[I

    :try_start_3
    sget-object v4, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->PLAIN:Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    invoke-virtual {v4}, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/metamoji/mazecclient/stroke/StrokeUtil$1;->$SwitchMap$com$metamoji$mazecclient$stroke$StrokeInkType:[I

    sget-object v4, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->GRADIATION:Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    invoke-virtual {v4}, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/metamoji/mazecclient/stroke/StrokeUtil$1;->$SwitchMap$com$metamoji$mazecclient$stroke$StrokeInkType:[I

    sget-object v4, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->CUBIC2SURFACE:Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    invoke-virtual {v4}, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v3, 0x4

    :try_start_6
    sget-object v4, Lcom/metamoji/mazecclient/stroke/StrokeUtil$1;->$SwitchMap$com$metamoji$mazecclient$stroke$StrokeInkType:[I

    sget-object v5, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->NONE:Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    invoke-virtual {v5}, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 265
    :catch_6
    invoke-static {}, Lcom/metamoji/mazecclient/stroke/StrokePenType;->values()[Lcom/metamoji/mazecclient/stroke/StrokePenType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/metamoji/mazecclient/stroke/StrokeUtil$1;->$SwitchMap$com$metamoji$mazecclient$stroke$StrokePenType:[I

    :try_start_7
    sget-object v5, Lcom/metamoji/mazecclient/stroke/StrokePenType;->STANDARD:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    invoke-virtual {v5}, Lcom/metamoji/mazecclient/stroke/StrokePenType;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokeUtil$1;->$SwitchMap$com$metamoji$mazecclient$stroke$StrokePenType:[I

    sget-object v4, Lcom/metamoji/mazecclient/stroke/StrokePenType;->NONE:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    invoke-virtual {v4}, Lcom/metamoji/mazecclient/stroke/StrokePenType;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokeUtil$1;->$SwitchMap$com$metamoji$mazecclient$stroke$StrokePenType:[I

    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokePenType;->CALLIGRAPHY:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    invoke-virtual {v1}, Lcom/metamoji/mazecclient/stroke/StrokePenType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokeUtil$1;->$SwitchMap$com$metamoji$mazecclient$stroke$StrokePenType:[I

    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokePenType;->FOUNTAIN:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    invoke-virtual {v1}, Lcom/metamoji/mazecclient/stroke/StrokePenType;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method
