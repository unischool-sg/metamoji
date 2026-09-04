.class Lcom/metamoji/ui/common/UiColorSelectionView2$7;
.super Ljava/lang/Object;
.source "UiColorSelectionView2.java"

# interfaces
.implements Lcom/metamoji/ui/common/IUiRadioItem$IUiSelectChanged;


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

.field final synthetic val$bottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/common/UiColorSelectionView2;Lcom/metamoji/ui/common/UiRadioContoller;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3011
    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$7;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    iput-object p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$7;->val$bottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(I)V
    .locals 1

    .line 3014
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$7;->val$bottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiRadioContoller;->indexFromId(I)I

    move-result p1

    if-ltz p1, :cond_0

    .line 3016
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$7;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->setPage(I)V

    :cond_0
    return-void
.end method
