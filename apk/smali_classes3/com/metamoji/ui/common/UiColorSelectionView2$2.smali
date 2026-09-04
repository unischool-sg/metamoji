.class Lcom/metamoji/ui/common/UiColorSelectionView2$2;
.super Ljava/util/ArrayList;
.source "UiColorSelectionView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedColors()Ljava/util/List;
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
.field final synthetic this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/common/UiColorSelectionView2;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 626
    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$2;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$2;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedColor2()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiColorSelectionView2$2;->add(Ljava/lang/Object;)Z

    return-void
.end method
