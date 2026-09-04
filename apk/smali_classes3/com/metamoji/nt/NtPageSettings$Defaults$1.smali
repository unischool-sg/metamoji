.class Lcom/metamoji/nt/NtPageSettings$Defaults$1;
.super Ljava/util/ArrayList;
.source "NtPageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtPageSettings$Defaults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 2

    .line 36
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageSettings$Defaults$1;->add(Ljava/lang/Object;)Z

    const-wide v0, 0x407a100000000000L    # 417.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageSettings$Defaults$1;->add(Ljava/lang/Object;)Z

    const-wide/high16 v0, -0x3fd2000000000000L    # -15.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageSettings$Defaults$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
