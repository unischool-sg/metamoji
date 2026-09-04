.class Lcom/metamoji/ui/dialog/PenSettings2$14;
.super Ljava/lang/Object;
.source "PenSettings2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 639
    iput-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$14;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 642
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$14;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/PenSettings2;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->pageNext()V

    return-void
.end method
