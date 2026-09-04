.class Lcom/metamoji/ui/common/UiColorSelectionView2$6;
.super Ljava/lang/Object;
.source "UiColorSelectionView2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/common/UiColorSelectionView2;->setUIParts(Landroid/view/View;Landroid/view/View;Lcom/metamoji/ui/common/UiRadioContoller;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/common/UiColorSelectionView2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3003
    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$6;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 3006
    iget-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$6;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->pageNext()V

    return-void
.end method
