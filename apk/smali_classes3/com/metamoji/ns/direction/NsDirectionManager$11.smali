.class Lcom/metamoji/ns/direction/NsDirectionManager$11;
.super Ljava/util/ArrayList;
.source "NsDirectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager;->viewingPositonChanged(Lcom/metamoji/nt/NtPageController;Z)V
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

.field final synthetic val$pageID:Ljava/lang/String;

.field final synthetic val$viewingScale:F


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager;ILjava/lang/String;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 639
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$11;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iput-object p3, p0, Lcom/metamoji/ns/direction/NsDirectionManager$11;->val$pageID:Ljava/lang/String;

    iput p4, p0, Lcom/metamoji/ns/direction/NsDirectionManager$11;->val$viewingScale:F

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 640
    invoke-virtual {p0, p3}, Lcom/metamoji/ns/direction/NsDirectionManager$11;->add(Ljava/lang/Object;)Z

    .line 641
    invoke-static {p1}, Lcom/metamoji/ns/direction/NsDirectionManager;->-$$Nest$fgetmViewingRect(Lcom/metamoji/ns/direction/NsDirectionManager;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->left:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/metamoji/ns/direction/NsDirectionManager$11;->add(Ljava/lang/Object;)Z

    .line 642
    invoke-static {p1}, Lcom/metamoji/ns/direction/NsDirectionManager;->-$$Nest$fgetmViewingRect(Lcom/metamoji/ns/direction/NsDirectionManager;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/metamoji/ns/direction/NsDirectionManager$11;->add(Ljava/lang/Object;)Z

    .line 643
    invoke-static {p1}, Lcom/metamoji/ns/direction/NsDirectionManager;->-$$Nest$fgetmViewingRect(Lcom/metamoji/ns/direction/NsDirectionManager;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/metamoji/ns/direction/NsDirectionManager$11;->add(Ljava/lang/Object;)Z

    .line 644
    invoke-static {p1}, Lcom/metamoji/ns/direction/NsDirectionManager;->-$$Nest$fgetmViewingRect(Lcom/metamoji/ns/direction/NsDirectionManager;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ns/direction/NsDirectionManager$11;->add(Ljava/lang/Object;)Z

    .line 645
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ns/direction/NsDirectionManager$11;->add(Ljava/lang/Object;)Z

    return-void
.end method
