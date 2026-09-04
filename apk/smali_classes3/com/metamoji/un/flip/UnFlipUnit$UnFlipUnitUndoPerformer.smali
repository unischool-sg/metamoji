.class Lcom/metamoji/un/flip/UnFlipUnit$UnFlipUnitUndoPerformer;
.super Lcom/metamoji/nt/NtControllerUndoPerformer;
.source "UnFlipUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/flip/UnFlipUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnFlipUnitUndoPerformer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 303
    invoke-direct {p0}, Lcom/metamoji/nt/NtControllerUndoPerformer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/un/flip/UnFlipUnit-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/flip/UnFlipUnit$UnFlipUnitUndoPerformer;-><init>()V

    return-void
.end method


# virtual methods
.method public checkUndoModelVersion(Lcom/metamoji/df/model/IModel;)Z
    .locals 5

    .line 306
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getVersion()I

    move-result p1

    .line 309
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "flipUnitFlipState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "flipUnitBackgroundColor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "flipUnitUndo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_0

    :sswitch_3
    const-string v1, "flipUnitGeopropUndo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move v4, v2

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 319
    const-string/jumbo p1, "unknown undo model type (%s)"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :pswitch_0
    if-ne v3, p1, :cond_4

    return v3

    :cond_4
    return v2

    :pswitch_1
    if-ne v3, p1, :cond_5

    return v3

    :cond_5
    return v2

    :pswitch_2
    if-ne v3, p1, :cond_6

    return v3

    :cond_6
    return v2

    :pswitch_3
    if-ne v3, p1, :cond_7

    return v3

    :cond_7
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6cd72719 -> :sswitch_3
        -0x1c4393eb -> :sswitch_2
        -0x10f6d4fc -> :sswitch_1
        0x1033d393 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
