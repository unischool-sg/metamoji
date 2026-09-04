.class Lcom/metamoji/nt/NtPageController$CreateModelParams$1;
.super Ljava/util/ArrayList;
.source "NtPageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtPageController$CreateModelParams;
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
.field final synthetic this$0:Lcom/metamoji/nt/NtPageController$CreateModelParams;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtPageController$CreateModelParams;I)V
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

    .line 858
    iput-object p1, p0, Lcom/metamoji/nt/NtPageController$CreateModelParams$1;->this$0:Lcom/metamoji/nt/NtPageController$CreateModelParams;

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    const-wide/16 p1, 0x0

    .line 859
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController$CreateModelParams$1;->add(Ljava/lang/Object;)Z

    .line 860
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController$CreateModelParams$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
