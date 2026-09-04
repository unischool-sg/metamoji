.class Lcom/metamoji/nt/NtSystemPenSettings$11;
.super Ljava/util/HashMap;
.source "NtSystemPenSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtSystemPenSettings;->defaultPenTemplate6(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
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
    .locals 5

    .line 427
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const v0, 0x3ea8f5c3    # 0.33f

    .line 428
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "trans"

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/nt/NtSystemPenSettings$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 429
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "beginStay"

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/nt/NtSystemPenSettings$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x3e4ccccd    # 0.2f

    .line 430
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "beginStayRate"

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/nt/NtSystemPenSettings$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v1, 0x420c0000    # 35.0f

    .line 431
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "beginStayDelta"

    invoke-virtual {p0, v2, v1}, Lcom/metamoji/nt/NtSystemPenSettings$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x3f666666    # 0.9f

    .line 432
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "beginRun"

    invoke-virtual {p0, v3, v2}, Lcom/metamoji/nt/NtSystemPenSettings$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    const-string v3, "beginRunRate"

    invoke-virtual {p0, v3, v0}, Lcom/metamoji/nt/NtSystemPenSettings$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    const-string v3, "beginRunDelta"

    invoke-virtual {p0, v3, v1}, Lcom/metamoji/nt/NtSystemPenSettings$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v3, 0x3f99999a    # 1.2f

    .line 435
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "endStay"

    invoke-virtual {p0, v4, v3}, Lcom/metamoji/nt/NtSystemPenSettings$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    const-string v4, "endStayRate"

    invoke-virtual {p0, v4, v0}, Lcom/metamoji/nt/NtSystemPenSettings$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    const-string v4, "endStayDelta"

    invoke-virtual {p0, v4, v1}, Lcom/metamoji/nt/NtSystemPenSettings$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string v4, "endRun"

    invoke-virtual {p0, v4, v3}, Lcom/metamoji/nt/NtSystemPenSettings$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    const-string v3, "endRunRate"

    invoke-virtual {p0, v3, v0}, Lcom/metamoji/nt/NtSystemPenSettings$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string v3, "endRunDelta"

    invoke-virtual {p0, v3, v1}, Lcom/metamoji/nt/NtSystemPenSettings$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string/jumbo v3, "tailStay"

    invoke-virtual {p0, v3, v2}, Lcom/metamoji/nt/NtSystemPenSettings$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string/jumbo v3, "tailStayRate"

    invoke-virtual {p0, v3, v0}, Lcom/metamoji/nt/NtSystemPenSettings$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    const-string/jumbo v3, "tailStayDelta"

    invoke-virtual {p0, v3, v1}, Lcom/metamoji/nt/NtSystemPenSettings$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    const-string/jumbo v3, "tailRun"

    invoke-virtual {p0, v3, v2}, Lcom/metamoji/nt/NtSystemPenSettings$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const-string/jumbo v2, "tailRunRate"

    invoke-virtual {p0, v2, v0}, Lcom/metamoji/nt/NtSystemPenSettings$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const-string/jumbo v0, "tailRunDelta"

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/nt/NtSystemPenSettings$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
