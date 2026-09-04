.class Lcom/metamoji/nt/NtDocumentTemplate$3$1;
.super Ljava/util/ArrayList;
.source "NtDocumentTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtDocumentTemplate$3;
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


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtDocumentTemplate$3;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtDocumentTemplate$3;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 714
    iput-object p1, p0, Lcom/metamoji/nt/NtDocumentTemplate$3$1;->this$0:Lcom/metamoji/nt/NtDocumentTemplate$3;

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    const-wide p1, 0x4046800000000000L    # 45.0

    .line 715
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtDocumentTemplate$3$1;->add(Ljava/lang/Object;)Z

    const-wide p1, 0x407a100000000000L    # 417.0

    .line 716
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtDocumentTemplate$3$1;->add(Ljava/lang/Object;)Z

    const-wide/high16 p1, -0x3fd2000000000000L    # -15.0

    .line 717
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtDocumentTemplate$3$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
