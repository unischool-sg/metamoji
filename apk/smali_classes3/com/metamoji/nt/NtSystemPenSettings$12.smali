.class Lcom/metamoji/nt/NtSystemPenSettings$12;
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
    .locals 3

    .line 473
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x1

    .line 474
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "lineAlpha"

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/nt/NtSystemPenSettings$12;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    const-string v1, "lineColor"

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/nt/NtSystemPenSettings$12;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 476
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "lineDash"

    invoke-virtual {p0, v2, v1}, Lcom/metamoji/nt/NtSystemPenSettings$12;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    const-string v2, "lineWidth"

    invoke-virtual {p0, v2, v0}, Lcom/metamoji/nt/NtSystemPenSettings$12;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const-string v0, "penAngle"

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/nt/NtSystemPenSettings$12;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const-string v0, "penRate"

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/nt/NtSystemPenSettings$12;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
