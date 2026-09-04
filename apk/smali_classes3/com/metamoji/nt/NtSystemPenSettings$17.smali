.class Lcom/metamoji/nt/NtSystemPenSettings$17;
.super Ljava/util/HashMap;
.source "NtSystemPenSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtSystemPenSettings;->defaultPenTemplate9(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
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

    .line 614
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const v0, 0x3ea8f5c3    # 0.33f

    .line 615
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "trans"

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/nt/NtSystemPenSettings$17;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x3dcccccd    # 0.1f

    .line 616
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "beginStay"

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/nt/NtSystemPenSettings$17;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x3e4ccccd    # 0.2f

    .line 617
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "beginStayRate"

    invoke-virtual {p0, v2, v1}, Lcom/metamoji/nt/NtSystemPenSettings$17;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v2, 0x42200000    # 40.0f

    .line 618
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "beginStayDelta"

    invoke-virtual {p0, v3, v2}, Lcom/metamoji/nt/NtSystemPenSettings$17;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    const-string v3, "beginRun"

    invoke-virtual {p0, v3, v0}, Lcom/metamoji/nt/NtSystemPenSettings$17;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    const-string v3, "beginRunRate"

    invoke-virtual {p0, v3, v1}, Lcom/metamoji/nt/NtSystemPenSettings$17;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    const-string v3, "beginRunDelta"

    invoke-virtual {p0, v3, v2}, Lcom/metamoji/nt/NtSystemPenSettings$17;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    const-string v3, "endStay"

    invoke-virtual {p0, v3, v0}, Lcom/metamoji/nt/NtSystemPenSettings$17;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    const-string v3, "endStayRate"

    invoke-virtual {p0, v3, v1}, Lcom/metamoji/nt/NtSystemPenSettings$17;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    const-string v3, "endStayDelta"

    invoke-virtual {p0, v3, v2}, Lcom/metamoji/nt/NtSystemPenSettings$17;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    const-string v3, "endRun"

    invoke-virtual {p0, v3, v0}, Lcom/metamoji/nt/NtSystemPenSettings$17;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    const-string v3, "endRunRate"

    invoke-virtual {p0, v3, v1}, Lcom/metamoji/nt/NtSystemPenSettings$17;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    const-string v3, "endRunDelta"

    invoke-virtual {p0, v3, v2}, Lcom/metamoji/nt/NtSystemPenSettings$17;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    const-string/jumbo v3, "tailStay"

    invoke-virtual {p0, v3, v0}, Lcom/metamoji/nt/NtSystemPenSettings$17;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    const-string/jumbo v3, "tailStayRate"

    invoke-virtual {p0, v3, v1}, Lcom/metamoji/nt/NtSystemPenSettings$17;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    const-string/jumbo v3, "tailStayDelta"

    invoke-virtual {p0, v3, v2}, Lcom/metamoji/nt/NtSystemPenSettings$17;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    const-string/jumbo v3, "tailRun"

    invoke-virtual {p0, v3, v0}, Lcom/metamoji/nt/NtSystemPenSettings$17;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    const-string/jumbo v0, "tailRunRate"

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/nt/NtSystemPenSettings$17;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    const-string/jumbo v0, "tailRunDelta"

    invoke-virtual {p0, v0, v2}, Lcom/metamoji/nt/NtSystemPenSettings$17;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
