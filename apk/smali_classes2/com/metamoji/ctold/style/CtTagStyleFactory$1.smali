.class synthetic Lcom/metamoji/ctold/style/CtTagStyleFactory$1;
.super Ljava/lang/Object;
.source "CtTagStyleFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ctold/style/CtTagStyleFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$ctold$style$CtTagStyleType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    invoke-static {}, Lcom/metamoji/ctold/style/CtTagStyleType;->values()[Lcom/metamoji/ctold/style/CtTagStyleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/ctold/style/CtTagStyleFactory$1;->$SwitchMap$com$metamoji$ctold$style$CtTagStyleType:[I

    :try_start_0
    sget-object v1, Lcom/metamoji/ctold/style/CtTagStyleType;->CT_STYLE_COLORINDEX:Lcom/metamoji/ctold/style/CtTagStyleType;

    invoke-virtual {v1}, Lcom/metamoji/ctold/style/CtTagStyleType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/metamoji/ctold/style/CtTagStyleFactory$1;->$SwitchMap$com$metamoji$ctold$style$CtTagStyleType:[I

    sget-object v1, Lcom/metamoji/ctold/style/CtTagStyleType;->CT_STYLE_VOICE:Lcom/metamoji/ctold/style/CtTagStyleType;

    invoke-virtual {v1}, Lcom/metamoji/ctold/style/CtTagStyleType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/metamoji/ctold/style/CtTagStyleFactory$1;->$SwitchMap$com$metamoji$ctold$style$CtTagStyleType:[I

    sget-object v1, Lcom/metamoji/ctold/style/CtTagStyleType;->CT_STYLE_UNKNOWN:Lcom/metamoji/ctold/style/CtTagStyleType;

    invoke-virtual {v1}, Lcom/metamoji/ctold/style/CtTagStyleType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
