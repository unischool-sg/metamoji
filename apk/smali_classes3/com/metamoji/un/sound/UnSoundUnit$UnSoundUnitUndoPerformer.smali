.class Lcom/metamoji/un/sound/UnSoundUnit$UnSoundUnitUndoPerformer;
.super Lcom/metamoji/nt/NtControllerUndoPerformer;
.source "UnSoundUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/sound/UnSoundUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnSoundUnitUndoPerformer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 522
    invoke-direct {p0}, Lcom/metamoji/nt/NtControllerUndoPerformer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/un/sound/UnSoundUnit-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/sound/UnSoundUnit$UnSoundUnitUndoPerformer;-><init>()V

    return-void
.end method


# virtual methods
.method public checkUndoModelVersion(Lcom/metamoji/df/model/IModel;)Z
    .locals 4

    .line 525
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    .line 526
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getVersion()I

    move-result p1

    .line 528
    const-string/jumbo v1, "soundUnitUndo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v3, p1, :cond_0

    return v3

    :cond_0
    return v2

    .line 530
    :cond_1
    const-string/jumbo v1, "soundUnitGeopropUndo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-ne v3, p1, :cond_2

    return v3

    :cond_2
    return v2

    .line 532
    :cond_3
    const-string/jumbo v1, "soundUnitTicket"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-ne v3, p1, :cond_4

    return v3

    :cond_4
    return v2

    .line 534
    :cond_5
    const-string/jumbo v1, "soundUnitRecordId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-ne v3, p1, :cond_6

    return v3

    :cond_6
    return v2

    .line 536
    :cond_7
    const-string/jumbo v1, "soundUnitMediaId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    if-ne v3, p1, :cond_8

    return v3

    :cond_8
    return v2

    .line 539
    :cond_9
    const-string/jumbo p1, "unknown undo model type (%s)"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method
