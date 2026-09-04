.class Lcom/metamoji/ui/dialog/PenSettings2$33;
.super Ljava/util/ArrayList;
.source "PenSettings2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/PenSettings2;->backupInkColorsAndOpacity(Ljava/util/List;FLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/PenSettings2;

.field final synthetic val$inkColors:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/PenSettings2;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1837
    iput-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$33;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2$33;->val$inkColors:Ljava/util/List;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/PenSettings2$33;->add(Ljava/lang/Object;)Z

    return-void
.end method
