.class synthetic Lcom/metamoji/ctold/search/CtDateValue$1;
.super Ljava/lang/Object;
.source "CtDateValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ctold/search/CtDateValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$ctold$search$CtValueType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    invoke-static {}, Lcom/metamoji/ctold/search/CtValueType;->values()[Lcom/metamoji/ctold/search/CtValueType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/ctold/search/CtDateValue$1;->$SwitchMap$com$metamoji$ctold$search$CtValueType:[I

    :try_start_0
    sget-object v1, Lcom/metamoji/ctold/search/CtValueType;->CT_VALUE_TYPE_ABSOLUTE:Lcom/metamoji/ctold/search/CtValueType;

    invoke-virtual {v1}, Lcom/metamoji/ctold/search/CtValueType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/metamoji/ctold/search/CtDateValue$1;->$SwitchMap$com$metamoji$ctold$search$CtValueType:[I

    sget-object v1, Lcom/metamoji/ctold/search/CtValueType;->CT_VALUE_TYPE_RELATIVE_DAY:Lcom/metamoji/ctold/search/CtValueType;

    invoke-virtual {v1}, Lcom/metamoji/ctold/search/CtValueType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/metamoji/ctold/search/CtDateValue$1;->$SwitchMap$com$metamoji$ctold$search$CtValueType:[I

    sget-object v1, Lcom/metamoji/ctold/search/CtValueType;->CT_VALUE_TYPE_RELATIVE_WEEK:Lcom/metamoji/ctold/search/CtValueType;

    invoke-virtual {v1}, Lcom/metamoji/ctold/search/CtValueType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/metamoji/ctold/search/CtDateValue$1;->$SwitchMap$com$metamoji$ctold$search$CtValueType:[I

    sget-object v1, Lcom/metamoji/ctold/search/CtValueType;->CT_VALUE_TYPE_RELATIVE_MONTH:Lcom/metamoji/ctold/search/CtValueType;

    invoke-virtual {v1}, Lcom/metamoji/ctold/search/CtValueType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/metamoji/ctold/search/CtDateValue$1;->$SwitchMap$com$metamoji$ctold$search$CtValueType:[I

    sget-object v1, Lcom/metamoji/ctold/search/CtValueType;->CT_VALUE_TYPE_RELATIVE_YEAR:Lcom/metamoji/ctold/search/CtValueType;

    invoke-virtual {v1}, Lcom/metamoji/ctold/search/CtValueType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
