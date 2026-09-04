.class Lcom/metamoji/ui/dialog/PenSettings2$11;
.super Ljava/lang/Object;
.source "PenSettings2.java"

# interfaces
.implements Lcom/metamoji/ui/common/IUiRadioItem$IUiSelectChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/PenSettings2;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/PenSettings2;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/PenSettings2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 408
    iput-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$11;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(I)V
    .locals 2

    const/4 v0, 0x0

    .line 411
    :goto_0
    sget-object v1, Lcom/metamoji/ui/dialog/PenSettings2;->mBottlesIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 412
    sget-object v1, Lcom/metamoji/ui/dialog/PenSettings2;->mBottlesIds:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 413
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$11;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/PenSettings2;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->setPage(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
