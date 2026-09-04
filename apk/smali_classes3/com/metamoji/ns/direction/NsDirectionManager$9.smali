.class Lcom/metamoji/ns/direction/NsDirectionManager$9;
.super Ljava/util/ArrayList;
.source "NsDirectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager;->currentPageChanged(Lcom/metamoji/nt/NtPageController;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

.field final synthetic val$dcUserId:Ljava/lang/String;

.field final synthetic val$pageId:Ljava/lang/String;

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 581
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$9;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iput-object p3, p0, Lcom/metamoji/ns/direction/NsDirectionManager$9;->val$pageId:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/ns/direction/NsDirectionManager$9;->val$dcUserId:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/ns/direction/NsDirectionManager$9;->val$userName:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 582
    invoke-virtual {p0, p3}, Lcom/metamoji/ns/direction/NsDirectionManager$9;->add(Ljava/lang/Object;)Z

    .line 583
    invoke-virtual {p0, p4}, Lcom/metamoji/ns/direction/NsDirectionManager$9;->add(Ljava/lang/Object;)Z

    .line 584
    invoke-virtual {p0, p5}, Lcom/metamoji/ns/direction/NsDirectionManager$9;->add(Ljava/lang/Object;)Z

    return-void
.end method
