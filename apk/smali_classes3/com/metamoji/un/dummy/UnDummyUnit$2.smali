.class synthetic Lcom/metamoji/un/dummy/UnDummyUnit$2;
.super Ljava/lang/Object;
.source "UnDummyUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/dummy/UnDummyUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$nt$NtUnitController$AddUnitPosition:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 224
    invoke-static {}, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->values()[Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/un/dummy/UnDummyUnit$2;->$SwitchMap$com$metamoji$nt$NtUnitController$AddUnitPosition:[I

    :try_start_0
    sget-object v1, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->LEFTBOTTOM:Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/metamoji/un/dummy/UnDummyUnit$2;->$SwitchMap$com$metamoji$nt$NtUnitController$AddUnitPosition:[I

    sget-object v1, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->RIGHTTOP:Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/metamoji/un/dummy/UnDummyUnit$2;->$SwitchMap$com$metamoji$nt$NtUnitController$AddUnitPosition:[I

    sget-object v1, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->RIGHTBOTTOM:Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/metamoji/un/dummy/UnDummyUnit$2;->$SwitchMap$com$metamoji$nt$NtUnitController$AddUnitPosition:[I

    sget-object v1, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->CENTERCENTER:Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/metamoji/un/dummy/UnDummyUnit$2;->$SwitchMap$com$metamoji$nt$NtUnitController$AddUnitPosition:[I

    sget-object v1, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->LEFTTOP:Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
