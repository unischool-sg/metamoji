.class Lcom/metamoji/nt/NtSystemPenSettings$5;
.super Ljava/util/HashMap;
.source "NtSystemPenSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtSystemPenSettings;->defaultPenTemplate3(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
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
    .locals 2

    .line 310
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/high16 v0, 0x43610000    # 225.0f

    .line 311
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "penAngle"

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/nt/NtSystemPenSettings$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x3cf5c28f    # 0.03f

    .line 312
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "penRate"

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/nt/NtSystemPenSettings$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
