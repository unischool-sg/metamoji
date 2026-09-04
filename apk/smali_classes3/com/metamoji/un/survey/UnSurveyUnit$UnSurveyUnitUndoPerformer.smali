.class Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyUnitUndoPerformer;
.super Lcom/metamoji/nt/NtControllerUndoPerformer;
.source "UnSurveyUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/survey/UnSurveyUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnSurveyUnitUndoPerformer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 389
    invoke-direct {p0}, Lcom/metamoji/nt/NtControllerUndoPerformer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/un/survey/UnSurveyUnit-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyUnitUndoPerformer;-><init>()V

    return-void
.end method


# virtual methods
.method public checkUndoModelVersion(Lcom/metamoji/df/model/IModel;)Z
    .locals 5

    .line 392
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    .line 393
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getVersion()I

    move-result p1

    .line 395
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "surveyUnitResult"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "surveyUnitAnswer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "surveyUnitSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "surveyUnitGeopropUndo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "surveyUnitUndo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move v4, v2

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 407
    const-string/jumbo p1, "unknown undo model type (%s)"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :pswitch_0
    if-ne v3, p1, :cond_5

    return v3

    :cond_5
    return v2

    :pswitch_1
    if-ne v3, p1, :cond_6

    return v3

    :cond_6
    return v2

    :pswitch_2
    if-ne v3, p1, :cond_7

    return v3

    :cond_7
    return v2

    :pswitch_3
    if-ne v3, p1, :cond_8

    return v3

    :cond_8
    return v2

    :pswitch_4
    if-ne v3, p1, :cond_9

    return v3

    :cond_9
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x113b29fe -> :sswitch_4
        0x15feda5a -> :sswitch_3
        0x2470fa41 -> :sswitch_2
        0x2ecd6d5c -> :sswitch_1
        0x4b50f5bb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
