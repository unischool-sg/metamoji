.class Lcom/metamoji/un/image/UnImageUnit$ImageUnitUndoPerformer;
.super Lcom/metamoji/nt/NtControllerUndoPerformer;
.source "UnImageUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/image/UnImageUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageUnitUndoPerformer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1572
    invoke-direct {p0}, Lcom/metamoji/nt/NtControllerUndoPerformer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/un/image/UnImageUnit-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/image/UnImageUnit$ImageUnitUndoPerformer;-><init>()V

    return-void
.end method


# virtual methods
.method public checkUndoModelVersion(Lcom/metamoji/df/model/IModel;)Z
    .locals 4

    .line 1575
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    .line 1576
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getVersion()I

    move-result p1

    .line 1578
    const-string v1, "imagegeopropundo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v3, p1, :cond_0

    return v3

    :cond_0
    return v2

    .line 1580
    :cond_1
    const-string v1, "imagemaskingundo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-ne v3, p1, :cond_2

    return v3

    :cond_2
    return v2

    .line 1582
    :cond_3
    const-string v1, "imagereplaceundo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-ne v3, p1, :cond_4

    return v3

    :cond_4
    return v2

    .line 1585
    :cond_5
    const-string/jumbo p1, "unknown undo model type (%s)"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method
