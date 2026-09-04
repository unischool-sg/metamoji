.class Lcom/metamoji/nt/NtSystemPenSettings$13;
.super Ljava/util/HashMap;
.source "NtSystemPenSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtSystemPenSettings;->defaultPenTemplate7(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    .line 483
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const v0, 0x3e4ccccd    # 0.2f

    .line 484
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "trans"

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/nt/NtSystemPenSettings$13;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 485
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "beginStay"

    invoke-virtual {p0, v2, v1}, Lcom/metamoji/nt/NtSystemPenSettings$13;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    const-string v1, "beginStayRate"

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/nt/NtSystemPenSettings$13;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v1, 0x420c0000    # 35.0f

    .line 487
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "beginStayDelta"

    invoke-virtual {p0, v2, v1}, Lcom/metamoji/nt/NtSystemPenSettings$13;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x3f333333    # 0.7f

    .line 488
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "beginRun"

    invoke-virtual {p0, v3, v2}, Lcom/metamoji/nt/NtSystemPenSettings$13;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const-string v2, "beginRunRate"

    invoke-virtual {p0, v2, v0}, Lcom/metamoji/nt/NtSystemPenSettings$13;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const-string v2, "beginRunDelta"

    invoke-virtual {p0, v2, v1}, Lcom/metamoji/nt/NtSystemPenSettings$13;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x3f666666    # 0.9f

    .line 491
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "endStay"

    invoke-virtual {p0, v3, v2}, Lcom/metamoji/nt/NtSystemPenSettings$13;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    const-string v3, "endStayRate"

    invoke-virtual {p0, v3, v0}, Lcom/metamoji/nt/NtSystemPenSettings$13;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    const-string v3, "endStayDelta"

    invoke-virtual {p0, v3, v1}, Lcom/metamoji/nt/NtSystemPenSettings$13;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const-string v3, "endRun"

    invoke-virtual {p0, v3, v2}, Lcom/metamoji/nt/NtSystemPenSettings$13;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const-string v2, "endRunRate"

    invoke-virtual {p0, v2, v0}, Lcom/metamoji/nt/NtSystemPenSettings$13;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string v2, "endRunDelta"

    invoke-virtual {p0, v2, v1}, Lcom/metamoji/nt/NtSystemPenSettings$13;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x3f19999a    # 0.6f

    .line 497
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string/jumbo v3, "tailStay"

    invoke-virtual {p0, v3, v2}, Lcom/metamoji/nt/NtSystemPenSettings$13;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    const-string/jumbo v3, "tailStayRate"

    invoke-virtual {p0, v3, v0}, Lcom/metamoji/nt/NtSystemPenSettings$13;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const-string/jumbo v3, "tailStayDelta"

    invoke-virtual {p0, v3, v1}, Lcom/metamoji/nt/NtSystemPenSettings$13;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const-string/jumbo v3, "tailRun"

    invoke-virtual {p0, v3, v2}, Lcom/metamoji/nt/NtSystemPenSettings$13;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const-string/jumbo v2, "tailRunRate"

    invoke-virtual {p0, v2, v0}, Lcom/metamoji/nt/NtSystemPenSettings$13;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const-string/jumbo v0, "tailRunDelta"

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/nt/NtSystemPenSettings$13;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
