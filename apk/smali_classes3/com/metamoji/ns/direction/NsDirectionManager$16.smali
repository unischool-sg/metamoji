.class Lcom/metamoji/ns/direction/NsDirectionManager$16;
.super Ljava/util/ArrayList;
.source "NsDirectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager;->makeDirectionData(Ljava/lang/Object;Ljava/lang/String;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/direction/NsDirectionManager;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager;I)V
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

    .line 876
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$16;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 877
    const-string p1, "?editstatus"

    invoke-virtual {p0, p1}, Lcom/metamoji/ns/direction/NsDirectionManager$16;->add(Ljava/lang/Object;)Z

    return-void
.end method
